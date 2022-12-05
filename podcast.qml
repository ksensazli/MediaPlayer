import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: podcast
    maximumHeight: 450
    minimumHeight: 450
    maximumWidth: 800
    minimumWidth: 800
    visible: true
    title: qsTr("Podcast")

    SwipeView {
        id: swipeView
        x: 106
        y: 140
        width: 429
        height: 200
        currentIndex: 1
        anchors.fill: parent

        Item {
            Rectangle {
            id: rectangle
            x: 200
            y: 50
            width: 400
            height: 350
            color: "#ffffff"
            border.width: 5

            Label {
                id: label
                x: 54
                y: 166
                text: qsTr("Nihat SIRDAR 5-December-2022 Podcast")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
                }

            MouseArea {
                id: mouseArea
                width: 400
                height: 350
                onClicked: pControl.playPodcast1()
                }
            }
        }

        Item {
            Rectangle {
            id: rectangle1
            x: 200
            y: 50
            width: 400
            height: 350
            color: "#ffffff"
            border.width: 5

            Label {
                id: label1
                x: 33
                y: 166
                text: qsTr("Nihat'la Sivrisinek 30-November-2022 Podcast")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
                }

            MouseArea {
                id: mouseArea1
                width: 400
                height: 350
                onClicked: pControl.playPodcast2()
                }
            }
        }

        Item {
            Rectangle {
            id: rectangle2
            x: 200
            y: 50
            width: 400
            height: 350
            color: "#ffffff"
            border.width: 5

            Label {
                id: label2
                x: 54
                y: 166
                text: qsTr("Nihat SIRDAR 30-November-2022 Podcast")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
                }

            MouseArea {
                id: mouseArea2
                width: 400
                height: 350
                onClicked: pControl.playPodcast3()
                }
            }
        }

        Item {
            Rectangle {
            id: rectangle3
            x: 200
            y: 50
            width: 400
            height: 350
            color: "#ffffff"
            border.width: 5

            Label {
                id: label3
                x: 33
                y: 166
                text: qsTr("Nihat'la Sivrisinek 25-November-2022 Podcast")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
                }

            MouseArea {
                id: mouseArea3
                width: 400
                height: 350
                onClicked: pControl.playPodcast4()
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:11}
}
##^##*/
