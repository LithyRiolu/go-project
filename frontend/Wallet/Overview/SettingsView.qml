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
      id: rectangle3
      x: 10
      y: 12
      width: 464
      height: 175
      color: "#00000000"
      radius: 5
      border.color: "#ffa500"

      Rectangle {
        id: customNodeBox
        height: 31
        color: "#00000000"
        radius: 5
        anchors.top: customNodeTitle.bottom
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#444444"
      }

      Text {
        id: connectionTitle
        color: "#dddddd"
        text: qsTr("CONNECTION TYPE")
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        font.pixelSize: 14
      }

      Text {
        id: customNodeTitle
        color: "#dddddd"
        text: qsTr("CUSTOM REMOTE NODE:")
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top: builtInNodeSwitch.bottom
        anchors.topMargin: 10
        font.pixelSize: 12
      }

      RadioButton {
        id: builtInNodeSwitch
        width: 160
        height: 26
        anchors.top: connectionTitle.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        checked: true
        Text {
          id: builtInNodeTitle
          text: qsTr("BUILT-IN NODE")
          font.bold: builtInNodeSwitch.checked
          font.pointSize: 10
          anchors.right: parent.right
          anchors.rightMargin: 5
          anchors.verticalCenter: parent.verticalCenter
          color: builtInNodeSwitch.checked ? "#ffa500" : "#ddd"
        }

        indicator: Rectangle {
          implicitWidth: 26
          implicitHeight: 26
          x: builtInNodeSwitch.leftPadding
          radius: 13
          anchors.top: parent.top
          anchors.topMargin: 0
          border.color: "#ffa500"
          color: "#282d31"

          Rectangle {
            width: 14
            height: 14
            x: 6
            y: 6
            radius: 7
            color: "#ffa500"
            visible: builtInNodeSwitch.checked
          }
        }
      }

      Button {
        id: clearButton
        x: 152
        width: 100
        height: 30
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.top: customNodeBox.bottom
        anchors.topMargin: 10
        MouseArea {
          anchors.fill: parent
          hoverEnabled: true
          onEntered: clearText.color = "orange"
          onExited: clearText.color = "#ddd"
          onPressed: {
            clearBtnBg.color = "#191c1f" // just darker than actual bg
            clearText.color = "#ddd"
          }
          onReleased: {
            clearBtnBg.color = "#282d31"
            clearText.color = "orange"
          }
        }

        Text {
          id: clearText
          color: "#dddddd"
          text: qsTr("CLEAR")
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
        }
        background: Rectangle {
          id: clearBtnBg
          color: "#282d31"
          border.color: "orange"
          radius: 5
        }
      }

      RadioButton {
        id: builtInNodeSwitch1
        width: 180
        height: 26
        anchors.leftMargin: 20
        indicator: Rectangle {
          x: builtInNodeSwitch1.leftPadding
          color: "#282d31"
          radius: 13
          border.color: "#ffa500"
          implicitHeight: 26
          anchors.topMargin: 0
          Rectangle {
            x: 6
            y: 6
            width: 14
            height: 14
            color: "#ffa500"
            radius: 7
            visible: builtInNodeSwitch1.checked
          }
          implicitWidth: 26
          anchors.top: parent.top
        }
        anchors.topMargin: 10
        Text {
          id: builtInNodeTitle1
          color: builtInNodeSwitch1.checked ? "#ffa500" : "#ddd"
          text: qsTr("AUTOMATIC NODE")
          anchors.verticalCenter: parent.verticalCenter
          anchors.rightMargin: 5
          font.pointSize: 10
          anchors.right: parent.right
          font.bold: builtInNodeSwitch1.checked
        }
        anchors.left: builtInNodeSwitch.right
        checked: false
        anchors.top: connectionTitle.bottom
      }

      Button {
        id: saveButton
        x: 248
        y: 138
        width: 100
        height: 30
        anchors.rightMargin: 10
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("SAVE")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.right: clearButton.left
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
      }
    }

    Rectangle {
      id: rectangle2
      x: 30
      y: 193
      width: 424
      height: 186
      color: "#00000000"
      radius: 5
      border.color: "#ffa500"

      Button {
        id: clearButton1
        x: 125
        y: 141
        width: 100
        height: 30
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
        anchors.rightMargin: 199
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("LOGOUT")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.right: parent.right
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
      }

      Text {
        id: element2
        color: "#dddddd"
        text: qsTr("WALLET SETTINGS")
        anchors.leftMargin: 10
        font.pixelSize: 14
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: parent.top
      }

      Button {
        id: clearButton2
        x: 19
        y: 141
        width: 100
        height: 30
        anchors.rightMargin: 305
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("CLOSE TO TRAY")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
        anchors.bottomMargin: 15
      }

      Button {
        id: clearButton3
        x: 19
        y: 69
        width: 100
        height: 30
        anchors.rightMargin: 305
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("RESCAN WALLET")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
        anchors.bottomMargin: 87
      }

      Button {
        id: clearButton4
        x: 125
        y: 33
        width: 150
        height: 30
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("AUTO OPTIMIZATION")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
      }

      Button {
        id: clearButton5
        x: 19
        y: 33
        width: 100
        height: 30
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("OPTIMIZE NOW")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
      }

      Button {
        id: clearButton6
        x: 19
        y: 105
        width: 100
        height: 30
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("ENCRYPT WALLET")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
      }

      Button {
        id: clearButton7
        x: 125
        y: 105
        width: 100
        height: 30
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("BACKUP WALLET")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
      }

      Button {
        id: clearButton8
        x: 231
        y: 105
        width: 100
        height: 30
        anchors.topMargin: 10
        Text {
          color: "#dddddd"
          text: qsTr("BACKUP FILE")
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
        }
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.top: customNodeBox.bottom
      }
    }
  }
}
