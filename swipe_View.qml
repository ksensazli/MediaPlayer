import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

//This screen for design!

Window {
    id:swipe_view
    height: 800
    width: 450
    minimumHeight: 800
    maximumHeight: 800
    minimumWidth: 450
    maximumWidth: 450

    Rectangle {
        id: background
        anchors.fill: parent
        gradient: Gradient
        {
            GradientStop {position: 0.000;color: Qt.rgba(0, 0, 0, 1);}
            GradientStop {position: 1.000;color: Qt.rgba(0.25, 0.25, 0.25, 1);}
        }

            Image {
                id: radioImage
                height: 312
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                source: "icons/logo-dreamturk.png"
                anchors.topMargin: 150
                anchors.leftMargin: 70
                anchors.rightMargin: 70
                fillMode: Image.PreserveAspectFit
            }

            Label {
                id: radioName
                color: "#ffffff"
                text: qsTr("DreamTürk")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: radioImage.bottom
                horizontalAlignment: Text.AlignHCenter
                anchors.leftMargin: 85
                anchors.rightMargin: 85
                anchors.topMargin: 50
                font.italic: true
                font.bold: true
                font.family: "Arial"
                font.pointSize: 24
            }

            Button {
                id: button
                text: qsTr("Start Radio")
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: radioName.bottom
                anchors.topMargin: 50
                anchors.leftMargin: 70
                anchors.rightMargin: 70
            }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
