import QtQuick 2.12
import QtQuick.Controls 2.5

Item {
  id: element
  width: 484
  height: 387

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    Rectangle {
      id: rectangle1
      height: 1
      color: "#00000000"
      anchors.right: parent.right
      anchors.rightMargin: 10
      anchors.left: parent.left
      anchors.leftMargin: 10
      anchors.top: parent.top
      anchors.topMargin: 5
      border.color: "#ffa500"
    }

    Rectangle {
      id: addrBox
      width: 466
      height: 31
      color: "#00000000"
      radius: 5
      anchors.left: parent.left
      anchors.leftMargin: 10
      anchors.top: addrTitle.bottom
      anchors.topMargin: 10
      border.color: "#444444"

      TextInput {
        id: addressToSend
        x: 60
        y: 11
        width: 450
        height: 20
        color: "#aaaaaa"
        selectedTextColor: "#282d31"
        selectionColor: "#ffa500"
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
      }
    }

    Rectangle {
      id: payIdBox
      width: 466
      height: 31
      color: "#00000000"
      radius: 5
      anchors.left: parent.left
      anchors.leftMargin: 10
      anchors.top: payIdTitle.bottom
      anchors.topMargin: 10
      border.color: "#444444"
      TextInput {
        id: textInput1
        x: 60
        y: 11
        width: 450
        height: 20
        color: "#aaaaaa"
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
        selectedTextColor: "#282d31"
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        selectionColor: "#ffa500"
        horizontalAlignment: Text.AlignHCenter
      }
    }

    Rectangle {
      id: msgBox
      width: 466
      height: 31
      color: "#00000000"
      radius: 5
      anchors.left: parent.left
      anchors.leftMargin: 10
      anchors.top: msgTitle.bottom
      anchors.topMargin: 10
      border.color: "#444444"
      TextInput {
        id: textInput2
        x: 60
        y: 11
        width: 450
        height: 20
        color: "#aaaaaa"
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
        selectedTextColor: "#282d31"
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        selectionColor: "#ffa500"
        horizontalAlignment: Text.AlignHCenter
      }
    }

    Rectangle {
      id: amountBox
      x: 9
      width: 466
      height: 31
      color: "#00000000"
      radius: 5
      anchors.top: amountTitle.bottom
      anchors.topMargin: 10
      border.color: "#444444"
      TextInput {
        id: textInput3
        x: 60
        y: 11
        width: 450
        height: 20
        color: "#aaaaaa"
        text: "0.000000"
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
        selectedTextColor: "#282d31"
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        selectionColor: "#ffa500"
        horizontalAlignment: Text.AlignHCenter
      }
    }

    Text {
      id: amountTitle
      color: "#dddddd"
      text: qsTr("AMOUNT")
      anchors.top: msgBox.bottom
      anchors.topMargin: 10
      anchors.left: parent.left
      anchors.leftMargin: 15
      font.pixelSize: 12
      visible: !addressToSend.text
      font.bold: false
    }

    Text {
      id: feeTitle
      x: 361
      color: "#dddddd"
      text: qsTr("FEE: 0.001000 $CCX")
      anchors.right: parent.right
      anchors.rightMargin: 15
      anchors.top: msgBox.bottom
      anchors.topMargin: 10
      font.pixelSize: 12
    }

    Text {
      id: addrTitle
      color: "#dddddd"
      text: qsTr("ADDRESS")
      anchors.top: parent.top
      anchors.topMargin: 20
      anchors.left: parent.left
      anchors.leftMargin: 15
      font.pixelSize: 12
      font.bold: false
    }

    Text {
      id: payIdTitle
      color: "#dddddd"
      text: qsTr("PAYMENT ID (OPTIONAL)")
      anchors.left: parent.left
      anchors.leftMargin: 15
      anchors.top: addrBox.bottom
      anchors.topMargin: 10
      font.pixelSize: 12
      font.bold: false
    }

    Text {
      id: msgTitle
      color: "#dddddd"
      text: qsTr("MESSAGE (OPTIONAL)")
      anchors.left: parent.left
      anchors.leftMargin: 15
      anchors.top: payIdBox.bottom
      anchors.topMargin: 10
      font.pixelSize: 12
      font.bold: false
    }

    Switch {
      id: saveAddrSwitch
      y: 280
      height: 26
      anchors.left: parent.left
      anchors.leftMargin: 15
      anchors.top: amountBox.bottom
      anchors.topMargin: 10
      checked: false
      contentItem: Text {
        color: "#ffffff"
        text: qsTr("SAVE ADDRESS")
        font.pixelSize: 12
        leftPadding: saveAddrSwitch.indicator.width + saveAddrSwitch.spacing
        verticalAlignment: Text.AlignVCenter
      }
      indicator: Rectangle {
        x: saveAddrSwitch.leftPadding
        y: parent.height / 2 - height / 2
        color: "#282d31"
        radius: 13
        border.width: 1
        border.color: "#444444"
        implicitHeight: 26
        Rectangle {
          width: 26
          height: 26
          color: "#ffffff"
          radius: 13
          border.width: 1
          border.color: "#444444"
        }
        implicitWidth: 48
      }
      enabled: false
    }

    Button {
      id: clearButton
      x: 376
      y: 353
      width: 100
      height: 30
      Text {
        color: "#dddddd"
        text: qsTr("CLEAR")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
      }
      background: Rectangle {
        color: "#282d31"
        border.color: "orange"
        radius: 5
      }
    }

    Button {
      id: sendButton
      x: 270
      y: 353
      width: 100
      height: 30
      Text {
        color: "#dddddd"
        text: qsTr("SEND")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
      }
      background: Rectangle {
        color: "#282d31"
        border.color: "orange"
        radius: 5
      }
    }

    Rectangle {
      id: saveAddrBox
      visible: saveAddrSwitch.checked
      x: 10
      width: 466
      height: 31
      color: "#00000000"
      radius: 5
      anchors.top: saveAddrSwitch.bottom
      anchors.topMargin: 10
      border.color: "#444444"
      TextInput {
        id: contactName
        x: 60
        y: 11
        width: 450
        height: 20
        color: "#aaaaaa"
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
        selectedTextColor: "#282d31"
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        selectionColor: "#ffa500"
        horizontalAlignment: Text.AlignHCenter
      }

      Text {
        id: saveAddrTitle
        x: 10
        y: 220
        color: "#dddddd"
        text: qsTr("CONTACT NAME")
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
        font.bold: false
        anchors.horizontalCenter: parent.horizontalCenter
      }
    }
  }
}

/*##^##
Designer {
    D{i:2;anchors_width:200;anchors_x:200;anchors_y:161}
}
##^##*/

