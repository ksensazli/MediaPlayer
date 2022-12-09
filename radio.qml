import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id:radioScreen
    width: 450
    height: 800
    maximumHeight: 800
    minimumHeight: 800
    maximumWidth: 450
    minimumWidth: 450
    visible: true
    title: qsTr("Radio")

    Component.onCompleted: {
            x = (Screen.width-radioScreen.width) / 2
            y = (Screen.height-radioScreen.height) / 2
        }


    SwipeView {
        id: swipe_view
        x: 106
        y: 140
        width: 429
        height: 200
        currentIndex: 0
        anchors.fill: parent

        //Radio1
        Item {
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
                    source: "icons/logo-slowturk.png"
                    anchors.topMargin: 150
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    fillMode: Image.PreserveAspectFit
                }

                Label {
                    id: radioName
                    color: "#ffffff"
                    text: qsTr("SlowTürk")
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
                    onClicked: rControl.playSlowturk()
                }
            }
        }

        //Radio2
        Item {
            Rectangle {
                id: background1
                anchors.fill: parent
                gradient: Gradient
                {
                    GradientStop {position: 0.000;color: Qt.rgba(0, 0, 0, 1);}
                    GradientStop {position: 1.000;color: Qt.rgba(0.25, 0.25, 0.25, 1);}
                }

                Image {
                    id: radioImage1
                    height: 312
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    source: "icons/logo-powerturk.png"
                    anchors.topMargin: 150
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    fillMode: Image.PreserveAspectFit
                }

                Label {
                    id: radioName1
                    color: "#ffffff"
                    text: qsTr("PowerTürk")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: radioImage1.bottom
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
                    id: button1
                    text: qsTr("Start Radio")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: radioName1.bottom
                    anchors.topMargin: 50
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    onClicked: rControl.playPowerturk()
                }
            }
        }

        //Radio3
        Item {
            Rectangle {
                id: background2
                anchors.fill: parent
                gradient: Gradient
                {
                    GradientStop {position: 0.000;color: Qt.rgba(0, 0, 0, 1);}
                    GradientStop {position: 1.000;color: Qt.rgba(0.25, 0.25, 0.25, 1);}
                }

                Image {
                    id: radioImage2
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
                    id: radioName2
                    color: "#ffffff"
                    text: qsTr("DreamTürk")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: radioImage2.bottom
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
                    id: button2
                    text: qsTr("Start Radio")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: radioName2.bottom
                    anchors.topMargin: 50
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    onClicked: rControl.playDreamturk()
                }
            }
        }
    }
}

