import QtQuick 2.0

Rectangle{
    property alias _visible:  successNotify.visible
    id: successNotify
    visible: false
    height: 100
    width: 200
    Text {
        id: successText
        text: "Sign in success"
        anchors.centerIn: parent
        font.pixelSize: 20
        color: "red"
    }

}
