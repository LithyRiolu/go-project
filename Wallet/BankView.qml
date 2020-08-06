import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Components" as Stash

Item {
  id: overviewView
  width: 560
  height: 601

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    Text {
      id: title
      x: 269
      color: "#dddddd"
      text: qsTr("BANK")
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

    Stash.TextBox {
      id: bankBox
      x: 95
      y: 104
      width: 371
      height: 277
      anchors.horizontalCenter: parent.horizontalCenter

      Text {
        id: depositTitle
        color: "#dddddd"
        text: qsTr("NEW DEPOSIT")
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        font.pixelSize: 16
      }

      Text {
        id: amountTitle
        color: "#dddddd"
        text: qsTr("AMOUNT")
        anchors.top: depositTitle.bottom
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.pixelSize: 14
      }

      Stash.TextBox {
        id: amountBox
        height: 40
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: amountTitle.bottom
        anchors.topMargin: 10
      }

      Text {
        id: termTitleND
        color: "#dddddd"
        text: qsTr("TERM")
        anchors.top: amountBox.bottom
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.pixelSize: 14
      }

      Stash.DepositBox {
        id: termDB
        x: 86
        height: 41
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: termTitleND.bottom
        anchors.topMargin: 10
        function ssss() {
          if (termDB.currentIndex == 0) {

            // 0 = 1 MONTH
            // do maths
          }
        }
      }

      Stash.Button {
        id: clearBtn
        x: 57
        y: 229
        width: 100
        anchors.right: confirmBtn.left
        anchors.rightMargin: 50
      }

      Stash.Button {
        id: confirmBtn
        x: 214
        y: 229
        width: 100
      }
    }

    Stash.TextBox {
      id: intrestBox
      x: 99
      y: 418
      width: 362
      height: 160

      Text {
        id: detailsTitle
        color: "#dddddd"
        text: qsTr("DEPOSIT DETAILS")
        anchors.left: parent.left
        font.pixelSize: 16
        anchors.top: parent.top
        anchors.leftMargin: 10
        anchors.topMargin: 10
      }

      Text {
        id: rateTitle
        width: 150
        height: 17
        color: "#dddddd"
        text: qsTr("INTREST RATE")
        anchors.top: detailsTitle.bottom
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.pixelSize: 14
      }

      Text {
        id: rate
        y: 47
        color: "#ffa500"
        text: qsTr("Text")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: rateTitle.verticalCenter
        anchors.left: rateTitle.right
        anchors.leftMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 20
        font.pixelSize: 14
      }

      Text {
        id: earnedTitle
        width: 150
        color: "#dddddd"
        text: qsTr("INTREST EARNED")
        anchors.top: rateTitle.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.pixelSize: 14
      }

      Text {
        id: earned
        y: 74
        color: "#ffa500"
        text: qsTr("Text")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: earnedTitle.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: earnedTitle.right
        anchors.leftMargin: 20
        font.pixelSize: 14
      }

      Text {
        id: feeTitle
        width: 150
        color: "#dddddd"
        text: qsTr("FEE")
        anchors.top: earnedTitle.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.pixelSize: 14
      }

      Text {
        id: fee
        y: 101
        color: "#ffa500"
        text: qsTr("Text")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.verticalCenter: feeTitle.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: feeTitle.right
        anchors.leftMargin: 20
        font.pixelSize: 14
      }

      Text {
        id: termTitleDD
        width: 150
        color: "#dddddd"
        text: qsTr("TERM")
        anchors.top: feeTitle.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.pixelSize: 14
      }

      Text {
        id: termDD
        y: 128
        color: "#ffa500"
        text: qsTr("Text")
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: termTitleDD.right
        anchors.leftMargin: 20
        anchors.verticalCenter: termTitleDD.verticalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 14
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.8999999761581421}D{i:5;anchors_x:62;anchors_y:22}D{i:6;anchors_x:54;anchors_y:75}
D{i:7;anchors_x:116;anchors_y:72}D{i:8;anchors_y:111}D{i:9;anchors_height:41;anchors_y:137}
D{i:13;anchors_x:62;anchors_y:22}D{i:14;anchors_x:87;anchors_y:72}D{i:15;anchors_x:219}
D{i:16;anchors_x:112;anchors_y:115}D{i:17;anchors_x:219}D{i:18;anchors_x:71;anchors_y:142}
D{i:19;anchors_x:219}D{i:20;anchors_x:127;anchors_y:160}D{i:21;anchors_x:219}
}
##^##*/
