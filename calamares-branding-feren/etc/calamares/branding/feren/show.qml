/* === This file is part of Calamares - <http://github.com/calamares> ===
 *
 *   Copyright 2015, Teo Mrnjavac <teo@kde.org>
 *
 *   Calamares is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   Calamares is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with Calamares. If not, see <http://www.gnu.org/licenses/>.
 */

/*
 * Change slides width and height from 800x480px to 810x486px to remove side lines
 * Slides images dimensions are 1600x960px.
 */

import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 30000
        running: true
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Slide {
        
        Image {
            id: background1
            source: "slide1.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
//         Image {
//             id: image1slide1
//             source: "/usr/share/feren-os/logos/Logo BG.png"
//             width: 256; height: 256
//             x: ((background1.x + background1.width) - 360)
// 	    y: (background1.y + ((background1.height / 2)-(image1slide1.height / 2)))
//         }
        Text {
            id: textwelcome1
            x: (background1.x + 50)
            y: (background1.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Welcome to Feren OS"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome2
            x: (background1.x + 50)
            y: (background1.y + 150)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Sit back, relax, and maybe get a cuppa. Feren OS is now getting ready. You will be able to check out Feren OS in no time.

While you're waiting, you can see some of the cool things to look out for in Feren OS with this installation slideshow."
            wrapMode: Text.WordWrap
            width: 274
        }
//         Text {
//             id: textmwlbfoc1
//             x: (background1.x + 25)
//             y: ((background1.y + background1.height) - 84)
//             color: "#FFFFFF"
//             font { family: "Open Sans"; pixelSize: 16; }
//             horizontalAlignment: Text.AlignLeft
//             textFormat: Text.AutoText
//             verticalAlignment: Text.AlignTop
//             text: "Made with love by Feren OS's Community"
//             wrapMode: Text.WordWrap
//         }
//         Text {
//             id: texturl1
//             x: ((background1.x + background1.width) - texturl1.width - 25)
//             y: ((background1.y + background1.height) - 84)
//             color: "#FFFFFF"
//             font { family: "Open Sans"; pixelSize: 16; }
//             horizontalAlignment: Text.AlignLeft
//             textFormat: Text.AutoText
//             verticalAlignment: Text.AlignTop
//             text: "https://ferenos.weebly.com"
//             wrapMode: Text.WordWrap
//         }
    }

    
    
    Slide {

        Image {
            id: background2
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide2screenshot
            source: "slide-items/slide2-item.png"
            width: 448; height: 422
            x: (background2.x + 348)
            y: (background2.y + background2.height - slide2screenshot.height)
        }
        Image {
            id: slide2appicon
            source: "slide-items/vivaldi-icon.png"
            x: (background2.x + 334)
            y: (background2.y + 50)
        }
        
        Text {
            id: textwelcome3
            x: (background2.x + 50)
            y: (background2.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Browse the web"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome4
            x: (background2.x + 50)
            y: (textwelcome3.y + textwelcome3.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Be fast and safe on the web with Vivaldi. Enjoy unparalleled customisation and plenty of useful features that you can use while browsing the internet."
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide2header1
            x: (background2.x + 50)
            y: (textwelcome4.y + textwelcome4.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Pre-Installed Software"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide2app1
            source: "icons/vivaldi.png"
            x: slide2header1.x
            y: (slide2header1.y + slide2header1.height + 10)
        }
        Text {
            id: slide2app1name
            x: (slide2app1.x + slide2app1.width + 10)
            y: (slide2app1.y + ((slide2app1.height / 2) - (slide2app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Vivaldi"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide2app2
            source: "icons/browser-manager.png"
            x: slide2app1.x
            y: (slide2app1.y + slide2app1.height + 5)
        }
        Text {
            id: slide2app2name
            x: (slide2app2.x + slide2app2.width + 10)
            y: (slide2app2.y + ((slide2app2.height / 2) - (slide2app2name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Web Browser Manager"
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide2header2
            x: (background2.x + 50)
            y: (slide2app2.y + slide2app2.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Available in Store"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide2app3
            source: "icons/browser-manager.png"
            x: slide2header2.x
            y: (slide2header2.y + slide2header2.height + 5)
        }
        Text {
            id: slide2app3name
            x: (slide2app3.x + slide2app3.width + 10)
            y: (slide2app3.y + ((slide2app3.height / 2) - (slide2app3name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Firefox, Chrome, etc."
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide2app4
            source: "icons/softwarecenter.png"
            x: slide2app3.x
            y: (slide2app3.y + slide2app3.height + 5)
        }
        Text {
            id: slide2app4name
            x: (slide2app4.x + slide2app4.width + 10)
            y: (slide2app4.y + ((slide2app4.height / 2) - (slide2app4name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Even More"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide2app5
            source: "icons/generic.png"
            x: slide2app4.x
            y: (slide2app4.y + slide2app4.height + 5)
        }
        Text {
            id: slide2app5name
            x: (slide2app5.x + slide2app5.width + 10)
            y: (slide2app5.y + ((slide2app5.height / 2) - (slide2app4name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Multimedia Codecs (Also installable via Welcome Screen)"
            wrapMode: Text.WordWrap
            width: 270
        }
    }
    
    

    Slide {

        Image {
            id: background3
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide3screenshot
            source: "slide-items/slide3-item.png"
            width: 448; height: 422
            x: (background3.x + 348)
            y: (background3.y + background3.height - slide3screenshot.height)
        }
        Image {
            id: slide3appicon
            source: "slide-items/vlc-icon.png"
            x: (background3.x + 334)
            y: (background3.y + 50)
        }
        
        Text {
            id: textwelcome5
            x: (background3.x + 50)
            y: (background3.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Listen to music"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome6
            x: (background3.x + 50)
            y: (textwelcome5.y + textwelcome5.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Enjoy your music, listen to podcasts and online radios."
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide3header1
            x: (background3.x + 50)
            y: (textwelcome6.y + textwelcome6.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Pre-Installed Software"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide3app1
            source: "icons/vlc.png"
            x: slide3header1.x
            y: (slide3header1.y + slide3header1.height + 10)
        }
        Text {
            id: slide3app1name
            x: (slide3app1.x + slide3app1.width + 10)
            y: (slide3app1.y + ((slide3app1.height / 2) - (slide3app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "VLC Media Player"
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide3header2
            x: (background3.x + 50)
            y: (slide3app1.y + slide3app1.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Available in Store"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide3app2
            source: "icons/rhythmbox.png"
            x: slide3header2.x
            y: (slide3header2.y + slide3header2.height + 5)
        }
        Text {
            id: slide3app2name
            x: (slide3app2.x + slide3app2.width + 10)
            y: (slide3app2.y + ((slide3app2.height / 2) - (slide3app2name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Rhythmbox"
            wrapMode: Text.WordWrap
            width: 274
        }
	Image {
            id: slide3app3
            source: "icons/softwarecenter.png"
            x: slide3app2.x
            y: (slide3app2.y + slide3app2.height + 5)
        }
        Text {
            id: slide3app3name
            x: (slide3app3.x + slide3app3.width + 10)
            y: (slide3app3.y + ((slide3app3.height / 2) - (slide3app3name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Spotify, Google Play Desktop..."
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide3app4
            source: "icons/softwarecenter.png"
            x: slide3app3.x
            y: (slide3app3.y + slide3app3.height + 5)
        }
        Text {
            id: slide3app4name
            x: (slide3app4.x + slide3app4.width + 10)
            y: (slide3app4.y + ((slide3app4.height / 2) - (slide3app4name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Even More"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide3app5
            source: "icons/generic.png"
            x: slide3app4.x
            y: (slide3app4.y + slide3app4.height + 5)
        }
        Text {
            id: slide3app5name
            x: (slide3app5.x + slide3app5.width + 10)
            y: (slide3app5.y + ((slide3app5.height / 2) - (slide3app4name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Multimedia Codecs (Also installable via Welcome Screen)"
            wrapMode: Text.WordWrap
            width: 270
        }
    }
    
    

    Slide {

        Image {
            id: background4
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide4screenshot
            source: "slide-items/slide4-item.png"
            width: 448; height: 422
            x: (background4.x + 348)
            y: (background4.y + background4.height - slide4screenshot.height)
        }
        Image {
            id: slide4appicon
            source: "slide-items/vlc-icon.png"
            x: (background4.x + 334)
            y: (background4.y + 50)
        }
        
        Text {
            id: textwelcome7
            x: (background4.x + 50)
            y: (background4.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Watch videos and DVDs"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome8
            x: (background4.x + 50)
            y: (textwelcome7.y + textwelcome7.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Insert a DVD and enjoy a movie. Watch high-definition videos with VLC."
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide4header1
            x: (background4.x + 50)
            y: (textwelcome8.y + textwelcome8.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Pre-Installed Software"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide4app1
            source: "icons/vlc.png"
            x: slide4header1.x
            y: (slide4header1.y + slide4header1.height + 10)
        }
        Text {
            id: slide4app1name
            x: (slide4app1.x + slide4app1.width + 10)
            y: (slide4app1.y + ((slide4app1.height / 2) - (slide4app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "VLC Media Player"
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide4header2
            x: (background4.x + 50)
            y: (slide4app1.y + slide4app1.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Available in Store"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide4app2
            source: "icons/kodi.png"
            x: slide4header2.x
            y: (slide4header2.y + slide4header2.height + 5)
        }
        Text {
            id: slide4app2name
            x: (slide4app2.x + slide4app2.width + 10)
            y: (slide4app2.y + ((slide4app2.height / 2) - (slide4app2name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Kodi Media Center"
            wrapMode: Text.WordWrap
            width: 274
        }
	Image {
            id: slide4app3
            source: "icons/softwarecenter.png"
            x: slide4app2.x
            y: (slide4app2.y + slide4app2.height + 5)
        }
        Text {
            id: slide4app3name
            x: (slide4app3.x + slide4app3.width + 10)
            y: (slide4app3.y + ((slide4app3.height / 2) - (slide4app3name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Even More"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide4app4
            source: "icons/generic.png"
            x: slide4app3.x
            y: (slide4app3.y + slide4app3.height + 5)
        }
        Text {
            id: slide4app4name
            x: (slide4app4.x + slide4app4.width + 10)
            y: (slide4app4.y + ((slide4app4.height / 2) - (slide4app3name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Multimedia Codecs (Also installable via Welcome Screen)"
            wrapMode: Text.WordWrap
            width: 270
        }
    }

    
    
    Slide {

        Image {
            id: background5
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide5screenshot
            source: "slide-items/slide5-item.png"
            width: 448; height: 422
            x: (background5.x + 348)
            y: (background5.y + background5.height - slide5screenshot.height)
        }
        Image {
            id: slide5appicon
            source: "slide-items/photos-icon.png"
            x: (background5.x + 334)
            y: (background5.y + 50)
        }
        
        Text {
            id: textwelcome9
            x: (background5.x + 50)
            y: (background5.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Manage your photos"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome10
            x: (background5.x + 50)
            y: (textwelcome9.y + textwelcome9.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Organize, enjoy and share your photos. Export your albums to share them with friends and family."
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide5header1
            x: (background5.x + 50)
            y: (textwelcome10.y + textwelcome10.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Pre-Installed Software"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide5app1
            source: "icons/multimedia-photo-manager.png"
            x: slide5header1.x
            y: (slide5header1.y + slide5header1.height + 10)
        }
        Text {
            id: slide5app1name
            x: (slide5app1.x + slide5app1.width + 10)
            y: (slide5app1.y + ((slide5app1.height / 2) - (slide5app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Photos"
            wrapMode: Text.WordWrap
            width: 274
        }
	Image {
            id: slide5app2
            source: "icons/calligrakrita.png"
            x: slide5app1.x
            y: (slide5app1.y + slide5app1.height + 10)
	    height: 24
	    width: 24
        }
        Text {
            id: slide5app2name
            x: (slide5app2.x + slide5app2.width + 10)
            y: (slide5app2.y + ((slide5app2.height / 2) - (slide5app2name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Krita"
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide5header2
            x: (background5.x + 50)
            y: (slide5app2.y + slide5app2.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Available in Store"
            wrapMode: Text.WordWrap
            width: 274
        }
	Image {
            id: slide5app3
            source: "icons/gimp.png"
            x: slide5header2.x
            y: (slide5header2.y + slide5header2.height + 5)
        }
        Text {
            id: slide5app3name
            x: (slide5app3.x + slide5app3.width + 10)
            y: (slide5app3.y + ((slide5app3.height / 2) - (slide5app3name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "GIMP"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide5app4
            source: "icons/softwarecenter.png"
            x: slide5app3.x
            y: (slide5app3.y + slide5app3.height + 5)
        }
        Text {
            id: slide5app4name
            x: (slide5app4.x + slide5app4.width + 10)
            y: (slide5app4.y + ((slide5app4.height / 2) - (slide5app4name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Even More"
            wrapMode: Text.WordWrap
            width: 274
        }
    }
    
    Slide {

        Image {
            id: background6
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide6screenshot
            source: "slide-items/slide6-item.png"
            width: 448; height: 422
            x: (background6.x + 348)
            y: (background6.y + background6.height - slide6screenshot.height)
        }
        Image {
            id: slide6appicon
            source: "slide-items/libreoffice-icon.png"
            x: (background6.x + 334)
            y: (background6.y + 50)
        }
        
        Text {
            id: textwelcome11
            x: (background6.x + 50)
            y: (background6.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Be productive"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome12
            x: (background6.x + 50)
            y: (textwelcome11.y + textwelcome11.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Use LibreOffice to create professional documents, spreadsheets and presentations that are compatible with Microsoft Office."
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide6header1
            x: (background6.x + 50)
            y: (textwelcome12.y + textwelcome12.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 13; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Pre-Installed Software"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide6app1
            source: "icons/libreoffice.png"
            x: slide6header1.x
            y: (slide6header1.y + slide6header1.height + 5)
	    height: 24
            width: 24
        }
        Text {
            id: slide6app1name
            x: (slide6app1.x + slide6app1.width + 10)
            y: (slide6app1.y + ((slide6app1.height / 2) - (slide6app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "LibreOffice Full Suite"
            wrapMode: Text.WordWrap
            width: 274
        }
	Image {
            id: slide6app2
            source: "icons/pdf.png"
            x: slide6app1.x
            y: (slide6app1.y + slide6app1.height + 5)
        }
        Text {
            id: slide6app2name
            x: (slide6app2.x + slide6app2.width + 10)
            y: (slide6app2.y + ((slide6app2.height / 2) - (slide6app2name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Document Viewer"
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide6header2
            x: (background6.x + 50)
            y: (slide6app2.y + slide6app2.height + 5)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 13; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Available to Install"
            wrapMode: Text.WordWrap
            width: 270
        }
	Image {
            id: slide6app3
            source: "icons/vivaldi.png"
            x: slide6header2.x
            y: (slide6header2.y + slide6header2.height + 2)
        }
        Text {
            id: slide6app3name
            x: (slide6app3.x + slide6app3.width + 10)
            y: (slide6app3.y + ((slide6app3.height / 2) - (slide6app3name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "WPS Office & FreeOffice Suites"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide6app4
            source: "icons/vivaldi.png"
            x: slide6app3.x
            y: (slide6app3.y + slide6app3.height + 2)
        }
        Text {
            id: slide6app4name
            x: (slide6app4.x + slide6app4.width + 10)
            y: (slide6app4.y + ((slide6app4.height / 2) - (slide6app4name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Microsoft Office Online"
            wrapMode: Text.WordWrap
            width: 274
        }
	Text {
            id: slide6header3
            x: (background6.x + 50)
            y: (slide6app4.y + slide6app4.height + 2)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 13; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Available using Wine (not pre-installed)"
            wrapMode: Text.WordWrap
            width: 270
        }
        Image {
            id: slide6app5
            source: "icons/wine.png"
            x: slide6header3.x
            y: (slide6header3.y + slide6header3.height + 2)
        }
        Text {
            id: slide6app5name
            x: (slide6app5.x + slide6app5.width + 10)
            y: (slide6app5.y + ((slide6app5.height / 2) - (slide6app5name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Microsoft Office Suite"
            wrapMode: Text.WordWrap
            width: 274
        }
    }
    
    
    
    Slide {

        Image {
            id: background7
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide7screenshot
            source: "slide-items/slide7-item.png"
            width: 448; height: 422
            x: (background7.x + 348)
            y: (background7.y + background7.height - slide7screenshot.height)
        }
        Image {
            id: slide7appicon
            source: "slide-items/store-icon.png"
            x: (background7.x + 334)
            y: (background7.y + 50)
        }
        
        Text {
            id: textwelcome13
            x: (background7.x + 50)
            y: (background7.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Install software"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome14
            x: (background7.x + 50)
            y: (textwelcome13.y + textwelcome13.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Browse through and install from a large selection of applications from the Store. A lot of your favourite applications are available from here."
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide7header1
            x: (background7.x + 50)
            y: (textwelcome14.y + textwelcome14.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Pre-Installed Software"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide7app1
            source: "icons/softwarecenter.png"
            x: slide7header1.x
            y: (slide7header1.y + slide7header1.height + 10)
        }
        Text {
            id: slide7app1name
            x: (slide7app1.x + slide7app1.width + 10)
            y: (slide7app1.y + ((slide7app1.height / 2) - (slide7app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Store"
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide7header2
            x: (background7.x + 50)
            y: (slide7app1.y + slide7app1.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Available in Store"
            wrapMode: Text.WordWrap
            width: 270
        }
	Image {
            id: slide7app2
            source: "icons/steam.png"
            x: slide7header2.x
            y: (slide7header2.y + slide7header2.height + 10)
        }
        Text {
            id: slide7app2name
            x: (slide7app2.x + slide7app2.width + 10)
            y: (slide7app2.y + ((slide7app2.height / 2) - (slide7app2name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Steam"
            wrapMode: Text.WordWrap
            width: 274
        }
	Image {
            id: slide7app3
            source: "icons/blender.png"
            x: slide7app2.x
            y: (slide7app2.y + slide7app2.height + 5)
        }
        Text {
            id: slide7app3name
            x: (slide7app3.x + slide7app3.width + 10)
            y: (slide7app3.y + ((slide7app3.height / 2) - (slide7app3name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Blender"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide7app4
            source: "icons/softwarecenter.png"
            x: slide7app3.x
            y: (slide7app3.y + slide7app3.height + 5)
        }
        Text {
            id: slide7app4name
            x: (slide7app4.x + slide7app4.width + 10)
            y: (slide7app4.y + ((slide7app4.height / 2) - (slide7app4name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Even More"
            wrapMode: Text.WordWrap
            width: 274
        }
    }
    
    
    
    Slide {

        Image {
            id: background8
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide8screenshot
            source: "slide-items/slide8-item.png"
            width: 448; height: 422
            x: (background8.x + 348)
            y: (background8.y + background8.height - slide8screenshot.height)
        }
        Image {
            id: slide8appicon
            source: "slide-items/settings-icon.png"
            x: (background8.x + 334)
            y: (background8.y + 50)
        }
        
        Text {
            id: textwelcome15
            x: (background8.x + 50)
            y: (background8.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Customize your desktop"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome16
            x: (background8.x + 50)
            y: (textwelcome15.y + textwelcome15.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "With System Settings, you can make yourself at home and modify any aspect of Feren OS, and your desktop. Each aspect of settings is layed out in a friendly manner, with a handy search box at the top of the window.
Pair or set up your devices, set up accessibility features, and more all from one place.
            
If you'd like to change your wallpaper, right-click on your Desktop at any time and select the configure desktop option in the resulting menu."
            wrapMode: Text.WordWrap
            width: 274
        }
    }
    
    
    
    Slide {

        Image {
            id: background9
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide9screenshot
            source: "slide-items/slide9-item.png"
            width: 448; height: 422
            x: (background9.x + 348)
            y: (background9.y + background9.height - slide9screenshot.height)
        }
        Image {
            id: slide9appicon
            source: "slide-items/mintupdate-icon.png"
            x: (background9.x + 334)
            y: (background9.y + 50)
        }
        
        Text {
            id: textwelcome17
            x: (background9.x + 50)
            y: (background9.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Keep your system up to date"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome18
            x: (background9.x + 50)
            y: (textwelcome17.y + textwelcome17.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Receive fixes and security updates all in one place, for the entire system, including the software you install from Store."
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide9header1
            x: (background9.x + 50)
            y: (textwelcome18.y + textwelcome18.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Applications Menu -> Administration, or the system tray (bottom-right)"
            wrapMode: Text.WordWrap
            width: 270
        }
        Image {
            id: slide9app1
            source: "icons/updateman.png"
            x: slide9header1.x
            y: (slide9header1.y + slide9header1.height + 10)
        }
        Text {
            id: slide9app1name
            x: (slide9app1.x + slide9app1.width + 10)
            y: (slide9app1.y + ((slide9app1.height / 2) - (slide9app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Update Manager"
            wrapMode: Text.WordWrap
            width: 274
        }
    }
    
    
    
    Slide {

        Image {
            id: background10
            source: "slide-bg.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Image {
            id: slide10screenshot
            source: "slide-items/slide10-item.png"
            width: 448; height: 422
            x: (background10.x + 348)
            y: (background10.y + background10.height - slide10screenshot.height)
        }
        Image {
            id: slide10appicon
            source: "slide-items/virtualbox-icon.png"
            x: (background10.x + 334)
            y: (background10.y + 50)
        }
        
        Text {
            id: textwelcome19
            x: (background10.x + 50)
            y: (background10.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Run Windows Software"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome20
            x: (background10.x + 50)
            y: (textwelcome19.y + textwelcome19.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "You can install Wine, as well as PlayOnLinux or CrossOver, to run Windows Software in Feren OS. Alternatively, you can install VirtualBox and run Windows itself within Feren OS."
            wrapMode: Text.WordWrap
            width: 274
        }
        Text {
            id: slide10header1
            x: (background10.x + 50)
            y: (textwelcome20.y + textwelcome20.height + 10)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Available in Store"
            wrapMode: Text.WordWrap
            width: 274
        }
        Image {
            id: slide10app1
            source: "icons/virtualbox.png"
            x: slide10header1.x
            y: (slide10header1.y + slide10header1.height + 10)
	    width: 24
	    height: 24
        }
        Text {
            id: slide10app1name
            x: (slide10app1.x + slide10app1.width + 10)
            y: (slide10app1.y + ((slide10app1.height / 2) - (slide10app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "VirtualBox"
            wrapMode: Text.WordWrap
            width: 274
        }
	Image {
            id: slide10app2
            source: "icons/wine.png"
            x: slide10app1.x
            y: (slide10app1.y + slide10app1.height + 10)
        }
        Text {
            id: slide10app2name
            x: (slide10app2.x + slide10app2.width + 10)
            y: (slide10app2.y + ((slide10app1.height / 2) - (slide10app1name.height / 2)))
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 12; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Wine (also available in Welcome Screen)"
            wrapMode: Text.WordWrap
            width: 270
        }
    }
    
    
    
    Slide {
        
        Image {
            id: background11
            source: "slide1.png"
            width: 810; height: 486
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
//         Image {
//             id: image1slide11
//             source: "/usr/share/feren-os/logos/Logo BG.png"
//             width: 256; height: 256
//             x: ((background1.x + background1.width) - 360)
// 	    y: (background1.y + ((background1.height / 2)-(image1slide1.height / 2)))
//         }
        Text {
            id: textwelcome21
            x: (background11.x + 50)
            y: (background11.y + 64)
            color: "#464646"
            font { family: "Open Sans Light"; pixelSize: 28; weight: Font.Bold; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "Thanks for choosing Feren OS"
            wrapMode: Text.WordWrap
            width: 270
        }
        Text {
            id: textwelcome22
            x: (background11.x + 50)
            y: (background11.y + 150)
            color: "#000000"
            font { family: "Open Sans"; pixelSize: 14; }
            horizontalAlignment: Text.AlignLeft
            textFormat: Text.AutoText
            verticalAlignment: Text.AlignTop
            text: "This is the end of the installation slideshow. Please be patient while Feren OS gets ready. You will be able to check out Feren OS soon.

If you ever need help with Feren OS, don't forget to check out the Feren OS User Guide via either Vivaldi or Welcome Screen -> Getting Started. You can also send feedback or report any issues you find with Feren OS through the 'Send Feedback or Report an Issue' shortcut in the applications menu."
            wrapMode: Text.WordWrap
            width: 274
        }
//         Text {
//             id: textmwlbfoc2
//             x: (background11.x + 25)
//             y: ((background11.y + background11.height) - 84)
//             color: "#FFFFFF"
//             font { family: "Open Sans"; pixelSize: 16; }
//             horizontalAlignment: Text.AlignLeft
//             textFormat: Text.AutoText
//             verticalAlignment: Text.AlignTop
//             text: "Made with love by Feren OS's Community"
//             wrapMode: Text.WordWrap
//         }
//         Text {
//             id: texturl2
//             x: ((background11.x + background11.width) - texturl2.width - 25)
//             y: ((background11.y + background11.height) - 84)
//             color: "#FFFFFF"
//             font { family: "Open Sans"; pixelSize: 16; }
//             horizontalAlignment: Text.AlignLeft
//             textFormat: Text.AutoText
//             verticalAlignment: Text.AlignTop
//             text: "https://ferenos.weebly.com"
//             wrapMode: Text.WordWrap
//         }
    }
}
