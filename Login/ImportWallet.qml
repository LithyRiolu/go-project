import QtQuick 2.12

import "../Components" as Stash

Item {
  id: loginScreen
  width: 600
  height: 900

  function clearData() {
    walletName.text = ""
    walletPass.text = ""

    seed.text = ""
    spendKey.text = ""
    viewKey.text = ""
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
        wrapMode: Text.WordWrap
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
      anchors.leftMargin: 100
      anchors.topMargin: 20
      font.pixelSize: 16
      anchors.left: parent.left
    }

    Stash.TextBox {
      id: walletPassBox
      x: 196
      width: 400
      height: 40
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.top: walletPassTitle.bottom
      anchors.topMargin: 10

      TextInput {
        id: walletPass
        color: "#dddddd"
        verticalAlignment: Text.AlignVCenter
        selectedTextColor: "#dddddd"
        anchors.leftMargin: 10
        anchors.fill: parent
        selectionColor: "#ffa500"
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 10
        wrapMode: Text.WordWrap
        echoMode: TextInput.Password
      }
    }

    Stash.SwitchToggle {
      id: seedOrPrivKeys
      x: 200
      width: 200
      anchors.top: walletPassBox.bottom
      anchors.topMargin: 20
      checkable: true
      checked: true

      Text {
        color: "#dddddd"
        text: seedOrPrivKeys.checked ? "PRIVATE KEYS" : "MNENOMIC SEED"
        font.pointSize: 12
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.verticalCenter: parent.verticalCenter
      }
    }

    Text {
      id: viewKeyTitle
      visible: seedOrPrivKeys.checked
      color: "#dddddd"
      text: qsTr("PRIVATE VIEW KEY")
      anchors.top: seedOrPrivKeys.bottom
      anchors.leftMargin: 100
      anchors.topMargin: 20
      font.pixelSize: 16
      anchors.left: parent.left
    }

    Stash.TextBox {
      id: viewKeyBox
      visible: seedOrPrivKeys.checked
      x: 400
      width: 400
      height: 40
      anchors.top: viewKeyTitle.bottom
      anchors.topMargin: 10
      anchors.horizontalCenter: parent.horizontalCenter

      TextInput {
        id: viewKey
        color: "#dddddd"
        verticalAlignment: Text.AlignVCenter
        selectedTextColor: "#dddddd"
        anchors.leftMargin: 10
        anchors.fill: parent
        selectionColor: "#ffa500"
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 10
        wrapMode: Text.WordWrap
      }
    }

    Text {
      id: spendKeyTitle
      visible: seedOrPrivKeys.checked
      color: "#dddddd"
      text: qsTr("PRIVATE SPEND KEY")
      anchors.top: viewKeyBox.bottom
      anchors.leftMargin: 100
      anchors.topMargin: 20
      font.pixelSize: 16
      anchors.left: parent.left
    }

    Stash.TextBox {
      id: spendKeyBox
      visible: seedOrPrivKeys.checked
      x: 330
      width: 400
      height: 40
      anchors.top: spendKeyTitle.bottom
      anchors.topMargin: 10
      anchors.horizontalCenterOffset: 0
      anchors.horizontalCenter: parent.horizontalCenter

      TextInput {
        id: spendKey
        color: "#dddddd"
        verticalAlignment: Text.AlignVCenter
        selectedTextColor: "#dddddd"
        anchors.leftMargin: 10
        anchors.fill: parent
        selectionColor: "#ffa500"
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 10
        wrapMode: Text.WordWrap
      }
    }

    Text {
      id: seedTitle
      visible: !seedOrPrivKeys.checked
      color: "#dddddd"
      text: qsTr("MNENOMIC SEED")
      anchors.top: seedOrPrivKeys.bottom
      anchors.leftMargin: 100
      anchors.topMargin: 20
      font.pixelSize: 16
      anchors.left: parent.left
    }

    Stash.TextBox {
      id: seedBox
      visible: !seedOrPrivKeys.checked
      x: 13
      width: 400
      height: 100
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.top: seedTitle.bottom
      anchors.topMargin: 10

      TextInput {
        id: seed
        color: "#dddddd"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        selectionColor: "#ffa500"
        selectedTextColor: "#dddddd"
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent
        font.pixelSize: 14
      }
    }

    Stash.Button {
      id: backBtn
      x: 78
      y: 837
      width: 150
      height: 40
      anchors.right: clearBtn.left
      anchors.rightMargin: 20
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
      x: 250
      y: 837
      width: 150
      height: 40
      anchors.horizontalCenter: parent.horizontalCenter
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
      y: 837
      width: 150
      height: 40
      anchors.left: clearBtn.right
      anchors.leftMargin: 20
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
    D{i:0;formeditorZoom:0.8999999761581421}D{i:8;anchors_y:564}D{i:9;anchors_y:564}D{i:16;anchors_height:20;anchors_width:80;anchors_x:133;anchors_y:34}
D{i:15;anchors_y:823}D{i:19;anchors_height:20;anchors_width:80;anchors_x:133;anchors_y:34}
D{i:18;anchors_y:823}D{i:24;anchors_x:363}
}
##^##*/

