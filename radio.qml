import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    maximumHeight: 450
    minimumHeight: 450
    maximumWidth: 800
    minimumWidth: 800
    visible: true
    title: qsTr("Radio")

    Image {
        id: slowturk
        x: 26
        y: 24
        width: 100
        height: 100
        source: "icons/logo-slowturk.png"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            id: mouseArea
            width: 100
            height: 100
            onClicked: rControl.playSlowturk()
        }
    }

    Image {
        id: dreamturk
        x: 26
        y: 130
        width: 100
        height: 100
        source: "icons/logo-dreamturk.png"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            id: mouseArea1
            width: 100
            height: 100
            onClicked: rControl.playDreamturk()
        }
    }

    Image {
        id: powerturk
        x: 26
        y: 236
        width: 100
        height: 100
        source: "icons/logo-powerturk.png"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            id: mouseArea2
            width: 100
            height: 100
            onClicked: rControl.playPowerturk()
        }
    }

    Slider {
        id: slider
        x: 455
        y: 296
        width: 159
        height: 40
        stepSize: 0.1
        value: 1
        onValueChanged: rControl.setVolume(slider.value)
    }

    /*Image {
        id: alemfm
        x: 510
        y: 320
        width: 100
        height: 100
        source: "icons/logo-alemfm.png"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            id: mouseArea3
            width: 100
            height: 100
            onClicked: rControl.playAlemfm()
        }
    }*/
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
