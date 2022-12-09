import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: welcomeScreen
    width: 450
    height: 800
    maximumHeight: 800
    minimumHeight: 800
    maximumWidth: 450
    minimumWidth: 450
    visible: true
    title: qsTr("Radio and Podcast")

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
            id: radio_icon
            height: 150
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            source: "icons/radio.png"
            anchors.leftMargin: 150
            anchors.rightMargin: 150
            anchors.topMargin: 120
            fillMode: Image.PreserveAspectFit
        }

        Label {
            id: radio
            x: 149
            color: "#8cffffff"
            text: qsTr("For the Radio!")
            anchors.top: radio_icon.bottom
            anchors.topMargin: 20
            font.pointSize: 18
        }

        Image {
            id: podcast_icon
            height: 150
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: podcast.top
            source: "icons/podcast.png"
            anchors.bottomMargin: 20
            fillMode: Image.PreserveAspectFit
            anchors.rightMargin: 150
            anchors.leftMargin: 150
        }

        Label {
            id: podcast
            x: 137
            color: "#8cffffff"
            text: qsTr("For the Podcast!")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 120
            font.pointSize: 18
        }
    }

    MouseArea {
        id: radioArea
        x: 0
        y: 0
        width: 450
        height: 400
        Loader {
            id : radioViewer
        }
        onClicked: {
            onClicked: radioViewer.source = "radio.qml"
            onClicked: welcomeScreen.hide()
        }
    }

    MouseArea {
        id: podcastArea
        x: 0
        y: 400
        width: 450
        height: 400
        Loader {
            id : podcastViewer
        }
        onClicked: {
            onClicked: podcastViewer.source = "podcast.qml"
            onClicked: welcomeScreen.hide()
        }
    }
}
