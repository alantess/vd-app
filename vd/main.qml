import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1280
    height: 720
    visible: true
    color: "white"
    title: qsTr("Vigilant Driving")

// Logo
    Image {
        id: logo
        scale:0.5
        source: "./images/LOGO.png"
        anchors {
            margins: 10
            horizontalCenter: parent.horizontalCenter
        }

    }

 // Segnet Button
    Button {
    id: segnet
    text: "Segnet"
    anchors {
    margins: 10
    top: logo.bottom
    horizontalCenter: parent.horizontalCenter
            }
    }


// Segnet V2 Button
     Button {
    id: segnetv2
    text: "Segnet v2"
    anchors {
    margins: 100
    top: segnet.bottom
    horizontalCenter: parent.horizontalCenter
            }
    }
// Speed Button
      Button {
    id: speed
    text: "Speed"
    anchors {
    margins: 100
    top: segnetv2.bottom
    horizontalCenter: parent.horizontalCenter
            }
    }



}
