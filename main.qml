import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2

Window {
    visible: true
    width: l1.width*1.4
    height: l1.height+cb1.height+b2.height+80
    title: qsTr("Flasher")

    Label {
        id: l1
        text: "VerdandiTeam SailfishOS Flasher"
        font.family: "Arial"
        font.pixelSize: 20
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 20
        anchors.leftMargin: 20
    }

    ComboBox {
        id: cb1
        model: ["osprey", "lux", "kinzie"]
        anchors.top: l1.bottom
        anchors.left: parent.left
        anchors.topMargin: 20
        anchors.leftMargin: 20
    }

    Button {
        id: b1
        text: "Get and flash stage1 for selected device"
        anchors.top: l1.bottom
        anchors.left: cb1.right
        anchors.topMargin: 20
        anchors.leftMargin: 20
    }

    Button {
        id: b2
        text: "Get and flash stage2 for selected device"
        anchors.top: b1.bottom
        anchors.left: cb1.right
        anchors.topMargin: 20
        anchors.leftMargin: 20
    }
}
