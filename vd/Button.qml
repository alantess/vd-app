import QtQuick 2.0

Item {
    id:root
    property alias  text: label.text
    property alias  color: background.color


    implicitWidth:  label.implicitWidth + __margin *2
    implicitHeight: background.implicitHeight


    readonly property int __margin: 30

    Rectangle {
        id:background
        width: 100; height: 40
        color:"#002336"
        radius: 15
        border.color: "#3E4A9C"
        border.width: 2
        smooth: true
        anchors {
        margins: root.__margin
        horizontalCenter: root.horizontalCenter

        }
        Text {
            color: "white"
            id: label
            anchors.centerIn: parent
            font.pixelSize: 16
        }
    }


}
