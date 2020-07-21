import QtQuick 2.12
import QtQuick.Controls 2.5

import "Components"

Item {
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
      id: depositBox
      x: 15
      y: 35
      width: 421
      height: 165
      color: "#00000000"
      radius: 5
      anchors.horizontalCenter: parent.horizontalCenter
      border.color: "#444444"

      Text {
        id: element
        color: "#dddddd"
        text: qsTr("NEW DEPOSIT")
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        font.pixelSize: 14
      }

      Rectangle {
        id: depositAmtBox
        x: 204
        y: 48
        width: 175
        height: 31
        color: "#00000000"
        radius: 5
        anchors.right: parent.right
        anchors.rightMargin: 10
        border.color: "#444444"

        TextEdit {
          id: element3
          y: 9
          height: 14
          color: "#dddddd"
          text: qsTr("1.000000")
          anchors.left: parent.left
          anchors.leftMargin: 10
          anchors.right: coinLogo.left
          anchors.rightMargin: 10
          horizontalAlignment: Text.AlignRight
          font.pixelSize: 12
        }
        Text {
          id: coinLogo
          x: 22
          y: 0
          width: 30
          height: 14
          color: "#dddddd"
          text: qsTr("$CCX")
          anchors.right: parent.right
          anchors.rightMargin: 10
          anchors.verticalCenter: parent.verticalCenter
          font.pixelSize: 12
        }
      }

      Rectangle {
        id: depositDurBox
        x: 236
        y: 85
        width: 175
        height: 31
        anchors.right: parent.right
        anchors.rightMargin: 10

        DepositDuration {
          anchors.fill: parent
        }
      }

      Text {
        id: element2
        x: 8
        y: 57
        width: 222
        height: 14
        color: "#dddddd"
        text: qsTr("How much would you like to deposit?")
        font.pixelSize: 12
      }

      Text {
        id: element4
        x: 8
        y: 93
        width: 222
        height: 14
        color: "#dddddd"
        text: qsTr("How long would you like to Bank for?")
        font.pixelSize: 12
      }

      Button {
        id: clearButton
        x: 311
        y: 124
        width: 100
        height: 30
        background: Rectangle {
          id: clearBtnBg
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.right: parent.right
        MouseArea {
          anchors.fill: parent
          hoverEnabled: true
        }

        Text {
          id: clearText
          color: "#dddddd"
          text: qsTr("CLEAR")
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
        }
        anchors.top: customNodeBox.bottom
        anchors.topMargin: 10
        anchors.rightMargin: 10
      }

      Button {
        id: clearButton1
        x: 205
        y: 124
        width: 100
        height: 30
        background: Rectangle {
          id: clearBtnBg1
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.right: parent.right
        MouseArea {
          anchors.fill: parent
          hoverEnabled: true
        }

        Text {
          id: clearText1
          color: "#dddddd"
          text: qsTr("CONFIRM")
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
        }
        anchors.top: customNodeBox.bottom
        anchors.topMargin: 10
        anchors.rightMargin: 116
      }
    }

    Rectangle {
      id: rectangle3
      x: 75
      y: 206
      width: 333
      height: 118
      color: "#00000000"
      radius: 5
      anchors.horizontalCenter: parent.horizontalCenter
      Text {
        id: element1
        color: "#dddddd"
        text: qsTr("DEPOSIT DETAILS")
        anchors.leftMargin: 10
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 14
        anchors.topMargin: 10
      }

      Text {
        id: element5
        width: 150
        color: "#dddddd"
        text: qsTr("Intrest rate:")
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element6
        y: 53
        width: 150
        color: "#dddddd"
        text: qsTr("Total intrest earned:")
        anchors.left: parent.left
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element7
        y: 73
        width: 150
        color: "#dddddd"
        text: qsTr("Fee for this desposit:")
        anchors.left: parent.left
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element8
        y: 93
        width: 150
        color: "#dddddd"
        text: qsTr("Length on the Blockchain:")
        anchors.left: parent.left
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element9
        x: 171
        width: 102
        height: 14
        color: "#ffa500"
        text: qsTr("0.2416")
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.right: percentLogo.left
        anchors.rightMargin: 10
        horizontalAlignment: Text.AlignRight
        font.pixelSize: 12
      }

      Text {
        id: percentLogo
        x: 192
        width: 35
        color: "#dddddd"
        text: qsTr("%")
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.right: parent.right
        anchors.rightMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: coinLogo3
        x: 260
        y: 73
        width: 35
        color: "#dddddd"
        text: qsTr("$CCX")
        anchors.right: parent.right
        anchors.rightMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: coinLogo2
        x: 274
        y: 53
        width: 35
        color: "#dddddd"
        text: qsTr("$CCX")
        anchors.right: parent.right
        anchors.rightMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element13
        x: 210
        y: 93
        width: 35
        color: "#dddddd"
        text: qsTr("Blocks")
        anchors.right: parent.right
        anchors.rightMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element10
        x: 171
        width: 102
        height: 14
        color: "#ffa500"
        text: qsTr("0.002416")
        horizontalAlignment: Text.AlignRight
        anchors.right: percentLogo.left
        anchors.top: parent.top
        font.pixelSize: 12
        anchors.topMargin: 50
        anchors.rightMargin: 10
      }

      Text {
        id: element11
        x: 171
        width: 102
        height: 14
        color: "#ffa500"
        text: qsTr("0.011000")
        horizontalAlignment: Text.AlignRight
        anchors.right: percentLogo.left
        anchors.top: parent.top
        font.pixelSize: 12
        anchors.topMargin: 70
        anchors.rightMargin: 10
      }

      Text {
        id: element12
        x: 171
        width: 102
        height: 14
        color: "#ffa500"
        text: qsTr("21900")
        horizontalAlignment: Text.AlignRight
        anchors.right: percentLogo.left
        anchors.top: parent.top
        font.pixelSize: 12
        anchors.topMargin: 90
        anchors.rightMargin: 10
      }
      border.color: "#444444"
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}D{i:4;anchors_x:8;anchors_y:8}D{i:6;anchors_width:134;anchors_x:20}
D{i:21;anchors_x:8;anchors_y:8}
}
##^##*/

