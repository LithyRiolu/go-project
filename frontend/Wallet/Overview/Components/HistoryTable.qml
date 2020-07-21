import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
  id: historyTable
  width: 484
  height: 73

  property bool newTransaction: false

  Rectangle {
    id: rectangle1
    height: 13
    color: "#282d31"
    border.color: "#ffa500"
    anchors.fill: parent

    Rectangle {
      id: amountBox
      x: 0
      y: 0
      width: 484
      height: 25
      color: "#00000000"
      border.width: 0
      border.color: "#ffa500"

      Text {
        id: dateTitle
        y: 7
        width: 55
        color: "#dddddd"
        text: "DATE:"
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.verticalCenterOffset: 0
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
      }

      Text {
        id: element
        y: 6
        color: "#ffa500"
        text: qsTr("12/12/2020")
        anchors.left: dateTitle.right
        anchors.leftMargin: 5
        font.pixelSize: 12
      }

      Rectangle {
        id: spacer1
        y: 0
        width: 1
        height: 25
        color: "#ffa500"
        anchors.leftMargin: 10
        anchors.left: element.right
      }

      Text {
        id: amount
        y: 7
        width: 120
        height: 14
        color: "#ffa500"
        text: "123,456,789.123456"
        horizontalAlignment: Text.AlignHCenter
        anchors.leftMargin: 5
        anchors.left: amountTitle.right
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 0
      }

      Text {
        id: amountTitle
        y: 15
        width: 55
        color: "#dddddd"
        text: "AMOUNT:"
        anchors.leftMargin: 10
        anchors.left: spacer1.right
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 0
      }

      Text {
        id: coinLogo
        y: 6
        color: "#dddddd"
        text: qsTr("$CCX")
        anchors.leftMargin: 5
        anchors.left: amount.right
        font.pixelSize: 12
      }

      Rectangle {
        id: spacer2
        y: 0
        width: 1
        height: 25
        color: "#ffa500"
        anchors.leftMargin: 5
        anchors.left: coinLogo.right
      }

      Text {
        id: feeTitle
        y: 15
        width: 25
        height: 14
        color: "#dddddd"
        text: "FEE:"
        anchors.leftMargin: 5
        anchors.left: spacer2.right
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 0
      }

      Text {
        id: amount1
        y: 7
        height: 14
        color: "#ffa500"
        text: "0.001000"
        anchors.right: parent.right
        anchors.rightMargin: 5
        horizontalAlignment: Text.AlignHCenter
        anchors.leftMargin: 5
        anchors.left: feeTitle.right
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 0
      }
    }

    Rectangle {
      id: txBox
      x: 0
      y: 24
      width: 484
      height: 25
      color: "#00000000"
      border.color: "#ffa500"

      Text {
        id: txId
        x: 87
        y: 8
        color: "#ffa500"
        text: "ca593f1551a8ff657791b7560dc8af25fdc44796c1b5eedab33deba02dffa171"
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 5
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
      }

      Text {
        id: txIdTitle
        y: 7
        width: 55
        color: "#dddddd"
        text: "TX ID:"
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.verticalCenterOffset: 0
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
      }
    }

    Rectangle {
      id: payBox
      x: 0
      y: 48
      width: 484
      height: 25
      color: "#00000000"
      border.color: "#ffa500"
      Text {
        id: payId
        y: 7
        color: "#ffa500"
        text: "ca593f1551a8ff657791b7560dc8af25fdc44796c1b5eedab33deba02dffa171"
        anchors.left: payIdTitle.right
        anchors.leftMargin: 5
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 5
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
      }

      Text {
        id: payIdTitle
        y: 1
        width: 55
        color: "#dddddd"
        text: "PAY ID:"
        anchors.left: parent.left
        anchors.leftMargin: 5
        font.pixelSize: 12
        anchors.verticalCenter: parent.verticalCenter
        anchors.verticalCenterOffset: 0
      }
    }
  }
}
