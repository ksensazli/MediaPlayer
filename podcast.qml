import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: podcastScreen
    width: 450
    height: 800
    maximumHeight: 800
    minimumHeight: 800
    maximumWidth: 450
    minimumWidth: 450
    visible: true
    title: qsTr("Podcast")

    //For center of the window
    Component.onCompleted: {
            x = (Screen.width-podcastScreen.width) / 2
            y = (Screen.height-podcastScreen.height) / 2
        }


    SwipeView {
        id: swipe_view
        x: 106
        y: 140
        width: 429
        height: 200
        currentIndex: 0
        anchors.fill: parent

        //Podcast1
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
                    id: podcastImage
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
                    id: podcastName
                    color: "#ffffff"
                    text: qsTr("Nihat'la Muhabbet")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastImage.bottom
                    anchors.leftMargin: 85
                    anchors.rightMargin: 85
                    anchors.topMargin: 50
                    font.italic: true
                    font.bold: true
                    font.family: "Arial"
                    font.pointSize: 24
                }

                Label {
                    id: date
                    color: "#a4ffffff"
                    text: qsTr("05-December-2022")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastName.bottom
                    anchors.leftMargin: 143
                    anchors.rightMargin: 143
                    anchors.topMargin: 20
                    font.pointSize: 14
                }

                Button {
                    id: button
                    text: qsTr("Start Podcast")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: date.bottom
                    anchors.topMargin: 50
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    onClicked: pControl.playPodcast1()
                }
            }
        }

        //Podcast2
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
                    id: podcastImage1
                    height: 312
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    source: "icons/nihatla_sivrisinek.jpg"
                    anchors.topMargin: 150
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    fillMode: Image.PreserveAspectFit
                }

                Label {
                    id: podcastName1
                    color: "#ffffff"
                    text: qsTr("Nihat'la Sivrisinek")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastImage1.bottom
                    anchors.leftMargin: 85
                    anchors.rightMargin: 85
                    anchors.topMargin: 50
                    font.italic: true
                    font.bold: true
                    font.family: "Arial"
                    font.pointSize: 24
                }

                Label {
                    id: date1
                    color: "#a4ffffff"
                    text: qsTr("30-November-2022")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastName1.bottom
                    anchors.leftMargin: 143
                    anchors.rightMargin: 143
                    anchors.topMargin: 20
                    font.pointSize: 14
                }

                Button {
                    id: button1
                    text: qsTr("Start Podcast")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: date1.bottom
                    anchors.topMargin: 50
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    onClicked: pControl.playPodcast2()
                }
            }
        }

        //Podcast3
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
                    id: podcastImage2
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
                    id: podcastName2
                    color: "#ffffff"
                    text: qsTr("Nihat'la Muhabbet")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastImage2.bottom
                    anchors.leftMargin: 85
                    anchors.rightMargin: 85
                    anchors.topMargin: 50
                    font.italic: true
                    font.bold: true
                    font.family: "Arial"
                    font.pointSize: 24
                }

                Label {
                    id: date2
                    color: "#a4ffffff"
                    text: qsTr("30-November-2022")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastName2.bottom
                    anchors.leftMargin: 143
                    anchors.rightMargin: 143
                    anchors.topMargin: 20
                    font.pointSize: 14
                }

                Button {
                    id: button2
                    text: qsTr("Start Podcast")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: date2.bottom
                    anchors.topMargin: 50
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    onClicked: pControl.playPodcast3()
                }
            }
        }

        //Podcast4
        Item {
            Rectangle {
                id: background3
                anchors.fill: parent
                gradient: Gradient
                {
                    GradientStop {position: 0.000;color: Qt.rgba(0, 0, 0, 1);}
                    GradientStop {position: 1.000;color: Qt.rgba(0.25, 0.25, 0.25, 1);}
                }

                Image {
                    id: podcastImage3
                    height: 312
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    source: "icons/nihatla_sivrisinek.jpg"
                    anchors.topMargin: 150
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    fillMode: Image.PreserveAspectFit
                }

                Label {
                    id: podcastName3
                    color: "#ffffff"
                    text: qsTr("Nihat'la Sivrisinek")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastImage3.bottom
                    anchors.leftMargin: 85
                    anchors.rightMargin: 85
                    anchors.topMargin: 50
                    font.italic: true
                    font.bold: true
                    font.family: "Arial"
                    font.pointSize: 24
                }

                Label {
                    id: date3
                    color: "#a4ffffff"
                    text: qsTr("25-November-2022")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastName3.bottom
                    anchors.leftMargin: 143
                    anchors.rightMargin: 143
                    anchors.topMargin: 20
                    font.pointSize: 14
                }

                Button {
                    id: button3
                    text: qsTr("Start Podcast")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: date3.bottom
                    anchors.topMargin: 50
                    anchors.leftMargin: 70
                    anchors.rightMargin: 70
                    onClicked: pControl.playPodcast4()
                }
            }
        }
    }
}
