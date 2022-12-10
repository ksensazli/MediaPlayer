import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtMultimedia 5.12

Window {
    id:playerScreen
    width: 450
    height: 800
    maximumHeight: 800
    minimumHeight: 800
    maximumWidth: 450
    minimumWidth: 450
    visible: true
    title: qsTr("Player")

    Component.onCompleted: {
            x = (Screen.width-welcomeScreen.width) / 2
            y = (Screen.height-welcomeScreen.height) / 2
        }

    Rectangle {
        id: background1
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        gradient: Gradient
        {
            GradientStop {position: 0.000;color: Qt.rgba(0, 0, 0, 1);}
            GradientStop {position: 1.000;color: Qt.rgba(0.25, 0.25, 0.25, 1);}
        }

        Image {
            id: mediaImage
            height: 312
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            source: "icons/nihatsirdar.jpg"
            anchors.topMargin: 150
            anchors.leftMargin: 70
            anchors.rightMargin: 70
            fillMode: Image.PreserveAspectFit
        }

        Label {
            id: currentMedia
            color: "#a4ffffff"
            text: qsTr("Nihat'la Muhabbet")
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: mediaImage.bottom
            horizontalAlignment: Text.AlignHCenter
            anchors.leftMargin: 85
            anchors.rightMargin: 85
            anchors.topMargin: 40
            font.family: "Verdana"
            font.pointSize: 24
        }

        Slider {
            id: seeker
            x: 70
            width: 310
            height: 40
            anchors.top: currentMedia.bottom
            to: 0
            from: 1
            anchors.topMargin: 40
            rotation: 180
            value: 0.5
        }

        Slider {
            id: volumeSlider
            x: 15
            y: 707
            width: 421
            height: 40
            to: 0
            from: 1
            snapMode: RangeSlider.NoSnap
            scale: 0.7
            rotation: 180
            value: 0.5
        }

        RoundButton {
            id: roundButton
            x: 195
            y: 635
            width: 60
            height: 60
            radius: 15
            text: ""
            layer.enabled: false
            flat: false
            display: AbstractButton.IconOnly
        }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:7}D{i:8}
}
##^##*/
