import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id:root
    width: 600
    height: 720
    visible: true
    color: "#002336"
    title: qsTr("Vigilant Driving")




    Rectangle {
        id:base
        color: "#824900"
        width: 480
        height: 150
        radius: 15
        anchors {
        centerIn: parent

        }

// Logo
    Image {
        id: logo
        scale:0.2
        source: "./images/LOGO.png"
        anchors {
            top:base.top
            margins: -150
            horizontalCenter: parent.horizontalCenter
        }

    }

    function activate(parent){
    console.log("clicked " + parent.text)
    }


 // Segnet Button
    Button {


    id: segnet
    text: "Segnet"
    KeyNavigation.right: speed
    focus: true
    color:activeFocus ? "#002336" : "#0A1669"
    anchors.left: segnetv2.right
    anchors.verticalCenter: parent.verticalCenter

    Keys.onReturnPressed: activate()
    }


// Segnet V2 Button
     Button {
    id: segnetv2
    color:activeFocus ? "#002336" : "#0A1669"
    KeyNavigation.right: segnet
    text: "Segnet v2"
    anchors.centerIn: parent
    Keys.onReturnPressed: activate()

    }
// Speed Button
      Button {
    id: speed
    color:activeFocus ? "#002336" : "#0A1669"
    KeyNavigation.right: segnetv2
    text: "Speed"
    anchors.right: segnetv2.left
    anchors.verticalCenter: parent.verticalCenter
    Keys.onReturnPressed: activate()


    }

    }

    function activate(){
    console.log("clicked ")
    }


}


