import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: welcome
    maximumHeight: 450
    minimumHeight: 450
    maximumWidth: 800
    minimumWidth: 800
    visible: true
    title: qsTr("Radio and Podcast")

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 400
        height: 450
        color: "#ffffff"
        border.width: 5

        Label {
            id: label
            x: 144
            y: 200
            text: qsTr("Radio")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 32
        }

        MouseArea {
            id: mouseArea
            width: 400
            height: 450
            Loader {
                id : radioViewer
            }
            onClicked: {
                onClicked: radioViewer.source = "radio.qml"
                onClicked: welcome.hide()
            }
        }
    }

    Rectangle {
        id: rectangle1
        x: 400
        y: 0
        width: 400
        height: 450
        color: "#ffffff"
        border.width: 5

        Label {
            id: label1
            x: 123
            y: 200
            text: qsTr("Podcast")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 32
        }

        MouseArea {
            id: mouseArea1
            width: 400
            height: 450
            Loader {
                id : podcastViewer
            }
            onClicked: {
                onClicked: podcastViewer.source = "podcast.qml"
                onClicked: welcome.hide()
            }
        }
    }
}
