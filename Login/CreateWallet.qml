import QtQuick 2.12

import "../Components" as Stash

Item {
  id: loginScreen
  width: 600
  height: 900

  function clearData() {
    walletName.text = ""
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
      id: walletNameTitle
      color: "#dddddd"
      text: qsTr("WALLET NAME")
      anchors.left: parent.left
      anchors.leftMargin: 100
      anchors.top: logo.bottom
      anchors.topMargin: 50
      font.pixelSize: 16
    }

    Stash.TextBox {
      id: walletNameBox
      height: 40
      anchors.top: walletNameTitle.bottom
      anchors.topMargin: 10
      anchors.right: parent.right
      anchors.rightMargin: 100
      anchors.left: parent.left
      anchors.leftMargin: 100

      TextInput {
        id: walletName
        color: "#dddddd"
        text: qsTr("")
        selectedTextColor: "#dddddd"
        selectionColor: "#ffa500"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent
        font.pixelSize: 14
      }
    }

    Text {
      id: walletPassTitle
      color: "#dddddd"
      text: qsTr("WALLET PASSWORD")
      anchors.top: walletNameBox.bottom
      anchors.topMargin: 25
      anchors.left: parent.left
      anchors.leftMargin: 100
      font.pixelSize: 16
    }

    Stash.TextBox {
      id: walletPassBox
      height: 40
      anchors.top: walletPassTitle.bottom
      anchors.topMargin: 10
      anchors.right: parent.right
      anchors.rightMargin: 100
      anchors.left: parent.left
      anchors.leftMargin: 100

      TextInput {
        id: walletPass
        color: "#dddddd"
        text: qsTr("")
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 10
        selectedTextColor: "#dddddd"
        anchors.fill: parent
        selectionColor: "#ffa500"
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        font.pixelSize: 14
        anchors.rightMargin: 10
        horizontalAlignment: Text.AlignHCenter
        echoMode: TextInput.Password
      }
    }

    Stash.Button {
      id: backBtn
      x: 60
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
      x: 225
      width: 150
      height: 40
      anchors.horizontalCenter: parent.horizontalCenter
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
    D{i:0;formeditorZoom:0.8999999761581421}D{i:5;anchors_height:20;anchors_width:80;anchors_x:12;anchors_y:12}
D{i:4;anchors_width:400;anchors_x:76;anchors_y:520}D{i:9;anchors_y:686}D{i:11;anchors_y:686}
D{i:13;anchors_x:389;anchors_y:686}
}
##^##*/

