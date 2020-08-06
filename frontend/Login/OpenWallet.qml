import QtQuick 2.12

import "../Components" as Stash

Item {
  id: loginScreen
  width: 600
  height: 900

  function clearData() {
    walletFile.text = ""
    walletPass.text = ""
  }

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    Image {
      id: logo
      x: 250
      width: 250
      height: 250
      anchors.top: parent.top
      anchors.topMargin: 100
      anchors.horizontalCenter: parent.horizontalCenter
      fillMode: Image.PreserveAspectFit
      source: "../Images/logo.svg"
    }

    Text {
      id: walletFileTitle
      color: "#dddddd"
      text: qsTr("WALLET FILE")
      anchors.left: parent.left
      anchors.leftMargin: 100
      anchors.top: logo.bottom
      anchors.topMargin: 50
      font.pointSize: 14
    }

    Stash.TextBox {
      id: walletFileBox
      height: 40
      anchors.right: parent.right
      anchors.rightMargin: 100
      anchors.left: parent.left
      anchors.leftMargin: 100
      anchors.top: walletFileTitle.bottom
      anchors.topMargin: 10

      Text {
        id: walletFile
        color: "#dddddd"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent
        font.pixelSize: 14
      }

      MouseArea {
        id: mouseArea
        anchors.fill: parent


        /* @NOTE: This onClicked() function needs to load a file explorer
         * to find the wallet file */
      }
    }

    Text {
      id: walletPassTitle
      color: "#dddddd"
      text: qsTr("WALLET PASSWORD")
      anchors.left: parent.left
      anchors.leftMargin: 100
      anchors.top: walletFileBox.bottom
      anchors.topMargin: 20
      font.pointSize: 14
    }

    Stash.TextBox {
      id: walletPassBox
      height: 40
      anchors.right: parent.right
      anchors.rightMargin: 100
      anchors.left: parent.left
      anchors.leftMargin: 100
      anchors.top: walletPassTitle.bottom
      anchors.topMargin: 20

      TextInput {
        id: walletPass
        color: "#dddddd"
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent
        selectionColor: "#ffa500"
        selectedTextColor: "#dddddd"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 14
        echoMode: TextInput.Password
      }
    }

    Stash.Button {
      id: backBtn
      x: 156
      y: 791
      width: 150
      height: 40
      anchors.right: clearBtn.left
      anchors.rightMargin: 20
      anchors.top: walletPassBox.bottom
      anchors.topMargin: 100
      onClicked: stackView.pop("LoginScreen.qml")

      Text {
        text: qsTr("BACK")
        font.pointSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#dddddd"
      }
    }

    Stash.Button {
      id: clearBtn
      x: 204
      y: 755
      width: 150
      height: 40
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.rightMargin: 20
      anchors.top: walletPassBox.bottom
      anchors.topMargin: 100
      onClicked: clearData()

      Text {
        text: qsTr("CLEAR")
        font.pointSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#dddddd"
      }
    }

    Stash.Button {
      id: confirmBtn
      y: 761
      width: 150
      height: 40
      anchors.left: clearBtn.right
      anchors.leftMargin: 20
      anchors.top: walletPassBox.bottom
      anchors.topMargin: 100
      /* @NOTE: Make true connection so wallet loads with new data */
      onClicked: stackView.push("../Wallet/Dashboard.qml")

      Text {
        text: qsTr("CONFIRM")
        font.pointSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#dddddd"
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.6600000262260437}D{i:3;anchors_x:114;anchors_y:397}D{i:6;anchors_height:100;anchors_width:100;anchors_x:50;anchors_y:8}
D{i:4;anchors_width:400;anchors_x:92;anchors_y:456}D{i:7;anchors_x:96;anchors_y:548}
D{i:9;anchors_height:20;anchors_width:80;anchors_x:102;anchors_y:10}D{i:8;anchors_width:400;anchors_x:82;anchors_y:500}
D{i:14;anchors_x:310}
}
##^##*/

