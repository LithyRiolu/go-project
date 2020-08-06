import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Components" as Stash

Item {
  id: overviewView
  width: 560
  height: 601

  function clearData() {
    address.text = ""
    amount.text = ""
    paymentId.text = ""
    msg.text = ""
    name.text = ""
  }

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    Text {
      id: title
      x: 269
      color: "#dddddd"
      text: qsTr("TRANSFER")
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.top: parent.top
      anchors.topMargin: 20
      font.pixelSize: 16
    }

    Rectangle {
      id: rectangle1
      x: 239
      y: 42
      width: 81
      height: 1
      color: "#ffa500"
    }

    Text {
      id: addressTitle
      color: "#dddddd"
      text: qsTr("ADDRESS TO SEND")
      anchors.top: rectangle1.bottom
      anchors.topMargin: 20
      anchors.left: parent.left
      anchors.leftMargin: 40
      font.pixelSize: 14
    }

    Stash.TextBox {
      id: addressBox
      height: 40
      anchors.right: parent.right
      anchors.rightMargin: 40
      anchors.left: parent.left
      anchors.leftMargin: 40
      anchors.top: addressTitle.bottom
      anchors.topMargin: 15

      TextInput {
        id: address
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
      id: amountTitle
      color: "#dddddd"
      text: qsTr("AMOUNT TO SEND")
      anchors.top: addressBox.bottom
      anchors.topMargin: 20
      anchors.leftMargin: 40
      anchors.left: parent.left
      font.pixelSize: 14
    }

    Stash.TextBox {
      id: amountBox
      height: 40
      anchors.right: parent.right
      anchors.rightMargin: 40
      anchors.left: parent.left
      anchors.leftMargin: 40
      anchors.top: amountTitle.bottom
      anchors.topMargin: 15

      TextInput {
        id: amount
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
      id: paymentTitle
      color: "#dddddd"
      text: qsTr("PAYMENT ID (OPTIONAL)")
      anchors.top: amountBox.bottom
      anchors.topMargin: 20
      anchors.left: parent.left
      anchors.leftMargin: 40
      font.pixelSize: 14
    }

    Stash.TextBox {
      id: paymentBox
      height: 40
      anchors.right: parent.right
      anchors.rightMargin: 40
      anchors.left: parent.left
      anchors.leftMargin: 40
      anchors.top: paymentTitle.bottom
      anchors.topMargin: 15

      TextInput {
        id: paymentId
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
      id: msgTitle
      color: "#dddddd"
      text: qsTr("MESSAGE (OPTIONAL)")
      anchors.top: paymentBox.bottom
      anchors.topMargin: 20
      anchors.leftMargin: 40
      anchors.left: parent.left
      font.pixelSize: 14
    }

    Stash.TextBox {
      id: msgBox
      height: 40
      anchors.right: parent.right
      anchors.rightMargin: 40
      anchors.left: parent.left
      anchors.leftMargin: 40
      anchors.top: msgTitle.bottom
      anchors.topMargin: 15

      TextInput {
        id: msg
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

    Stash.SwitchToggle {
      id: saveAddr
      x: 101
      width: 200
      checked: false
      anchors.top: msgBox.bottom
      anchors.topMargin: 15
      anchors.horizontalCenter: parent.horizontalCenter

      Text {
        id: element
        x: 75
        y: 18
        color: "#dddddd"
        text: qsTr("SAVE ADDRESS?")
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
      }
    }

    Text {
      id: nameTitle
      visible: saveAddr.checked
      color: "#dddddd"
      text: qsTr("SAVE CONTACT")
      anchors.leftMargin: 40
      anchors.left: parent.left
      anchors.topMargin: 10
      font.pixelSize: 14
      anchors.top: saveAddr.bottom
    }

    Stash.TextBox {
      id: saveAddrBox
      visible: saveAddr.checked
      height: 40
      anchors.right: parent.right
      anchors.rightMargin: 40
      anchors.left: parent.left
      anchors.leftMargin: 40
      anchors.top: nameTitle.bottom
      anchors.topMargin: 15

      TextInput {
        id: name
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

    Stash.Button {
      id: clearBtn
      x: 121
      width: 100
      anchors.top: saveAddr.checked ? saveAddrBox.bottom : saveAddr.bottom
      anchors.topMargin: 20
      onClicked: clearData()

      Text {
        id: clearTitle
        x: 68
        y: 336
        width: 39
        height: 17
        color: "#dddddd"
        text: qsTr("CLEAR")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
        anchors.top: saveAddr.bottom
      }
    }

    Stash.Button {
      id: sendBtn
      x: 308
      width: 100
      anchors.top: saveAddr.checked ? saveAddrBox.bottom : saveAddr.bottom
      anchors.topMargin: 20

      Text {
        id: sendTitle
        x: 68
        y: 336
        width: 39
        height: 17
        color: "#dddddd"
        text: qsTr("SEND")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
        anchors.top: saveAddr.bottom
      }
    }
  }
}

/*##^##
Designer {
    D{i:4;anchors_x:68;anchors_y:88}D{i:5;anchors_x:186;anchors_y:182}D{i:6;anchors_x:68;anchors_y:243}
D{i:7;anchors_x:230;anchors_y:243}D{i:8;anchors_x:68;anchors_y:283}D{i:9;anchors_x:178;anchors_y:288}
D{i:10;anchors_x:68;anchors_y:336}D{i:11;anchors_x:166;anchors_y:336}D{i:12;anchors_y:451}
D{i:17;anchors_x:68;anchors_y:336}D{i:16;anchors_y:557}D{i:19;anchors_x:68;anchors_y:336}
D{i:18;anchors_y:571}
}
##^##*/

