#!/usr/bin/python3

import os
import sys
import gettext
import grp
import locale
import tempfile
import subprocess
import codecs
import mintcommon

try:
    import _thread as thread
except ImportError as err:
    import thread

try:
    import configparser
except ImportError as err:
    import ConfigParser as configparser

import gi
from gi.repository import GdkX11
from gi.repository import GLib

from ImConfig.ImConfig import ImConfig

# Used to detect Debian derivatives (we don't want to show APT features in other distros)
IS_DEBIAN = os.path.exists("/etc/debian_version")

if IS_DEBIAN:
    import apt

# i18n
APP = 'mintlocale'
LOCALE_DIR = "/usr/share/linuxmint/locale"
locale.bindtextdomain(APP, LOCALE_DIR)
gettext.bindtextdomain(APP, LOCALE_DIR)
gettext.textdomain(APP)
_ = gettext.gettext

(IM_CHOICE, IM_NAME) = list(range(2))

FLAG_PATH = "/usr/share/iso-flag-png/%s.png"
FLAG_SIZE = 22
BUTTON_FLAG_SIZE = 22

class IMLanguage():

    def __init__(self, codename, name, methods, app):
        self.codename = codename
        self.name = name
        self.methods = methods
        self.app = app
        self.packages = []
        self.missing_packages = []
        self.apt = mintcommon.APT(self.app.window)

        self.label = Gtk.Label()
        self.label.set_markup(name)
        self.label.set_line_wrap(True)
        self.button = Gtk.Button(_("Install"))
        self.button.connect('clicked', self.install)
        self.button.hide()

        fcitx = "<a href='https://fcitx-im.org'>Fcitx</a>"
        ibus = "<a href='https://en.wikipedia.org/wiki/Intelligent_Input_Bus'>IBus</a>"
        uim = "<a href='https://en.wikipedia.org/wiki/Uim'>UIM</a>"
        self.installed_label = Gtk.Label()
        self.installed_label.set_justify(Gtk.Justification.CENTER)
        if self.methods == "fcitx:ibus":
            self.installed_label.set_markup("%s\n<small>%s</small>" % (_("Installed"), _("Use %s or %s") % (fcitx, ibus)))
        elif self.methods == "ibus:uim:fcitx":
            self.installed_label.set_markup("%s\n<small>%s</small>" % (_("Installed"), _("Use %s, %s or %s") % (ibus, uim, fcitx)))
        elif self.methods == "ibus":
            self.installed_label.set_markup("%s\n<small>%s</small>" % (_("Installed"), _("Use %s") % ibus))
        else:
            self.installed_label.set_markup("%s\n<small>%s</small>" % _("Installed"))

        self.settings_row = SettingsRow(self.label, self.button, self.installed_label)

        # load package list
        info_paths = []
        info_paths.append("/usr/share/linuxmint/mintlocale/iminfo/locale/%s.info" % self.codename)
        for input_method in self.methods.split(":"):
            info_paths.append("/usr/share/linuxmint/mintlocale/iminfo/%s.info" % input_method)
        for info_path in info_paths:
            with codecs.open(info_path, encoding='utf-8') as f:
                for line in f:
                    line = line.strip()
                    if line.startswith("#") or line == "":
                        # skip empty lines and comments
                        continue
                    if line not in self.packages:
                        self.packages.append(line)

    def install(self, widget):
        if len(self.missing_packages) > 0:
            self.app.lock_input_methods()
            if self.app.cache_updated:
                self.apt.set_finished_callback(self.on_install_finished)
                self.apt.set_cancelled_callback(self.on_install_finished)
                self.apt.install_packages(self.missing_packages)
            else:
                self.apt.set_finished_callback(self.on_update_finished)
                self.apt.update_cache()

    def on_update_finished(self, transaction=None, exit_state=None):
        self.app.cache_updated = True
        self.apt.set_finished_callback(self.on_install_finished)
        self.apt.set_cancelled_callback(self.on_install_finished)
        self.apt.install_packages(self.missing_packages)

    def on_install_finished(self, transaction=None, exit_state=None):
        print("Finished")
        self.app.check_input_methods()

    def update_status(self, cache):
        self.missing_packages = []
        for package in self.packages:
            if package in cache and not cache[package].is_installed:
                self.missing_packages.append(package)
        if len(self.missing_packages) > 0:
            self.button.show()
            self.button.set_sensitive(True)
            self.button.set_tooltip_text("\n".join(self.missing_packages))
        else:
            self.settings_row.show_alternative_widget()

class Locale():

    def __init__(self, id, name):
        self.id = id
        self.name = name

class MintLocale:

    ''' Create the UI '''

    
    def set_system_locale(self):
        language_str = _("No locale defined")
        region_str = _("No locale defined")

        # Get system locale
        if os.path.exists(self.locale_path):
            vars = dict()
            with open(self.locale_path) as f:
                for line in f:
                    eq_index = line.find('=')
                    var_name = line[:eq_index].strip()
                    value = line[eq_index + 1:].strip()
                    vars[var_name] = value
            if "LANG" in vars:
                locale = vars['LANG'].replace('"', '').replace("'", "")
                locale = locale.split(".")[0].strip()
                if "_" in locale:
                    split = locale.split("_")
                    if len(split) == 2:
                        language_code = split[0]
                        if language_code in self.languages:
                            language = self.languages[language_code]
                        else:
                            language = language_code
                        country_code = split[1].lower()
                        if country_code in self.countries:
                            country = self.countries[country_code]
                        else:
                            country = country_code
                        language_label = u"%s, %s" % (language, country)
                else:
                    if locale in self.languages:
                        language_label = self.languages[locale]
                    else:
                        language_label = locale

                language_str = language_label

            if "LC_NUMERIC" in vars:
                locale = vars['LC_NUMERIC'].replace('"', '').replace("'", "")
                locale = locale.split(".")[0].strip()
                if "_" in locale:
                    split = locale.split("_")
                    if len(split) == 2:
                        language_code = split[0]
                        if language_code in self.languages:
                            language = self.languages[language_code]
                        else:
                            language = language_code
                        country_code = split[1].lower()
                        if country_code in self.countries:
                            country = self.countries[country_code]
                        else:
                            country = country_code
                        language_label = u"%s, %s" % (language, country)
                else:
                    if locale in self.languages:
                        language_label = self.languages[locale]
                    else:
                        language_label = locale

                region_str = language_label

        language_prefix = ("Language:")
        region_prefix = ("Region:")
        self.system_label.set_markup("<b>%s</b>\n<small>%s <i>%s</i>\n%s <i>%s</i></small>" % (_("System locale"), language_prefix, language_str, region_prefix, region_str))

    def __init__(self, show_input_methods):

        # Determine path to system locale-config
        self.locale_path=''

        if os.path.exists('/etc/default/locale'):
            self.locale_path='/etc/default/locale'
        else:
            self.locale_path='/etc/locale.conf'

        # Prepare the APT cache
        if IS_DEBIAN:
            self.cache = apt.Cache()
        self.cache_updated = False

        self.pam_environment_path = os.path.join(GLib.get_home_dir(), ".pam_environment")
        self.dmrc_path = os.path.join(GLib.get_home_dir(), ".dmrc")
        self.dmrc = configparser.ConfigParser()
        self.dmrc.optionxform = str  # force case sensitivity on ConfigParser
        self.dmrc.read(self.dmrc_path)
        if not self.dmrc.has_section('Desktop'):
            self.dmrc.add_section('Desktop')

        current_user = GLib.get_user_name()

        self.current_language = None
        dmrc_language = None
        env_language = os.environ['LANG']

        if self.dmrc.has_option('Desktop', 'Language'):
            dmrc_language = self.dmrc.get('Desktop', 'Language')

        if dmrc_language is not None:
            self.current_language = dmrc_language
        else:
            self.current_language = env_language

        print("User language in .dmrc: %s" % dmrc_language)
        print("User language in $LANG: %s" % env_language)
        print("Current language: %s" % self.current_language)

        if 'LC_NUMERIC' in os.environ:
            self.current_region = os.environ['LC_NUMERIC']
        else:
            self.current_region = self.current_language

        if os.path.exists(self.pam_environment_path):
            with codecs.open(self.pam_environment_path, 'r', encoding='UTF-8') as pam_file:
                for line in pam_file:
                    line = line.strip()
                    if line.startswith("LC_NUMERIC="):
                        self.current_region = line.split("=")[1].replace("\"", "").replace("'", "").strip()

        print("Current region: %s" % self.current_region)

        # Replace utf8 with UTF-8 (lightDM GTK greeter messes that up)
        self.current_language = self.current_language.replace(".utf8", ".UTF-8")
        self.current_region = self.current_region.replace(".utf8", ".UTF-8")

        subprocess.call(['set-default-locale', self.locale_path, self.current_language, self.current_region])

if __name__ == "__main__":
    print ("Starting mintlocale")
    show_input_methods = False

    MintLocale(show_input_methods)
