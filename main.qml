import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Sign in")
    LoginInterface{
        id: loginUI
        height: parent.height
        width: parent.width
        onClicked: {
           visibleLogin= false
            successSignin._visible=true
        }
    }
    Success_SignIn{
        id: successSignin
        height: parent.height
        width: parent.width
    }


}
