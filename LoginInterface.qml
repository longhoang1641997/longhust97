import QtQuick 2.0

Rectangle{
    property alias visibleLogin:  loginInterface.visible
    id: loginInterface
    signal clicked
    visible: true

    Item {
        id: idLogin
        anchors.centerIn: parent
        height: parent.height
        width: parent.width
        Image {
            id: imageUserID
            source: "Microsoft_Account.svg (1).png"
            anchors.left: parent.left
            anchors.leftMargin: 80
            anchors.verticalCenter: parent.verticalCenter
            height: 40
            width: 40
        }
        TextInput{
            id: userId
            anchors.left: imageUserID.right
            anchors.leftMargin: 4
            anchors.top: imageUserID.top
            anchors.topMargin: 5
            height: 40
            width: parent.width/4
            focus: true
            text: "Enter account"
            font.pixelSize: 20
            color: "green"
        }

        Image {
            id: imageUserPW
            source: "images.png"
            anchors.left: userId.right
            anchors.leftMargin: 80
            anchors.verticalCenter: parent.verticalCenter
            height: 40
            width: 40
        }

        TextInput{
            id: passwordId
            anchors.left: imageUserPW.right
            anchors.leftMargin: 15
            anchors.top: imageUserPW.top
            anchors.topMargin: 5
            height: 40
            width: parent.width/4
            focus: true
            text: "Enter the password"
            font.pixelSize: 20
            color: "green"
        }
        Rectangle{
            id: button
            anchors.top:imageUserPW.bottom
            anchors.topMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
            height: 40
            width: parent.width/4
            color: "pink"
            Text {
                id: signIn_text
                text: "Sign In"
                anchors.centerIn: parent
                font.pixelSize: 20

            }
            MouseArea{
                id: areaClick
                anchors.fill:parent
                onClicked: {
                    loginInterface.clicked()

                }
            }
        }
    }

}
