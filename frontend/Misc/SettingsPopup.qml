import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Components" as Stash

Popup {
  id: settingsPopup
  height: 500
  width: 400
  anchors.centerIn: parent
  closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
  modal: true
  focus: true

  function doNodeCheck() {
    if (defaultNode.enabled == true) {
      autoNode.enabled = false
      customNode.enabled = false
    } else if (autoNode.enabled == true) {
      defaultNode.enabled = false
      customNode.enabled = false
    } else if (customNode.enabled == true) {
      defaultNode.enabled = false
      autoNode.enabled = false
    }
  }

  background: Rectangle {
    id: settingsPopupBox
    radius: 5
    implicitHeight: 500
    implicitWidth: 400
    border.width: 1
    border.color: "#444444"
    color: "#282d31"

    Rectangle {
      id: settingsBox
      color: "#00000000"
      radius: 5
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 15
      anchors.top: helpTitle.bottom
      anchors.topMargin: 15
      anchors.leftMargin: 15
      anchors.left: parent.left
      anchors.right: parent.right
      border.color: "#444444"
      anchors.rightMargin: 15
    }

    Text {
      id: settingsTitle
      x: 139
      color: "#dddddd"
      text: qsTr("SETTINGS")
      anchors.horizontalCenter: parent.horizontalCenter
      font.bold: false
      anchors.top: parent.top
      anchors.topMargin: 15
      font.pixelSize: 16
    }

    Rectangle {
      id: rectangle
      x: 79
      y: 76
      width: 340
      height: 296
      color: "#00000000"
      radius: 5
      anchors.horizontalCenter: parent.horizontalCenter
      border.color: "#444444"

      Text {
        id: element
        x: 32
        y: 8
        color: "#dddddd"
        text: qsTr("CONNECTION")
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 14
      }

      Stash.RadioButton {
        id: defaultNode
        anchors.top: element.bottom
        anchors.topMargin: 20
        checked: true
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20

        Text {
          id: element1
          x: 77
          y: 10
          color: "#dddddd"
          text: qsTr("DEFAULT NODE")
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
          font.pixelSize: 14
        }
      }

      Stash.RadioButton {
        id: autoNode
        anchors.top: defaultNode.bottom
        anchors.topMargin: 15
        checked: false
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.right: parent.right
        anchors.rightMargin: 20

        Text {
          id: element2
          x: 77
          y: 10
          color: "#dddddd"
          text: qsTr("AUTOMATIC NODE")
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
          font.pixelSize: 14
        }
      }

      Stash.RadioButton {
        id: customNode
        anchors.top: autoNode.bottom
        anchors.topMargin: 15
        checked: false
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20

        Text {
          id: element3
          x: 77
          y: 10
          color: "#dddddd"
          text: qsTr("CUSTOM NODE")
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
          font.pixelSize: 14
        }
      }

      Stash.TextBox {
        id: customNodeBox
        height: 35
        anchors.top: customNode.bottom
        anchors.topMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: 20

        TextInput {
          id: customNodeName
          color: customNode.checked ? "#dddddd" : "#444444"
          text: qsTr("http://localhost:16000")
          verticalAlignment: Text.AlignVCenter
          horizontalAlignment: Text.AlignHCenter
          anchors.rightMargin: 7
          anchors.leftMargin: 7
          anchors.bottomMargin: 7
          anchors.topMargin: 7
          anchors.fill: parent
          selectionColor: "#ffa500"
          selectedTextColor: "#dddddd"
          font.pointSize: 12
        }
      }

      Stash.Button {
        id: clearBtn
        width: 100
        anchors.top: customNodeBox.bottom
        anchors.topMargin: 15
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15

        Text {
          id: element4
          x: 39
          y: 8
          color: "#dddddd"
          text: qsTr("CLEAR")
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
          font.pixelSize: 12
        }
      }

      Stash.Button {
        id: saveBtn
        x: 219
        width: 100
        anchors.top: customNodeBox.bottom
        anchors.topMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 50
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15

        Text {
          id: element6
          x: 39
          y: 8
          color: "#dddddd"
          text: qsTr("SAVE")
          anchors.horizontalCenter: parent.horizontalCenter
          anchors.verticalCenter: parent.verticalCenter
          font.pixelSize: 12
        }
      }
    }

    Stash.Button {
      id: optBtn
      x: 225
      width: 100
      height: 30
      anchors.top: rectangle.bottom
      anchors.topMargin: 37
      anchors.right: parent.right
      anchors.rightMargin: 80
      anchors.horizontalCenterOffset: 70
      anchors.horizontalCenter: parent.horizontalCenter

      Text {
        x: 39
        y: 8
        color: "#dddddd"
        text: qsTr("OPTIMIZE")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
      }
    }

    Stash.Button {
      id: rescanBtn
      height: 30
      anchors.top: rectangle.bottom
      anchors.topMargin: 37
      anchors.left: parent.left
      anchors.leftMargin: 80
      anchors.right: optBtn.left
      anchors.rightMargin: 40

      Text {
        x: 39
        y: 8
        color: "#dddddd"
        text: qsTr("RESCAN")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
      }
    }

    Stash.Button {
      id: backupBtn
      width: 100
      anchors.top: rescanBtn.bottom
      anchors.topMargin: 16
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 15
      anchors.left: parent.left
      anchors.leftMargin: 30

      Text {
        x: 39
        y: 8
        color: "#dddddd"
        text: qsTr("BACKUP")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
      }
    }

    Stash.Button {
      id: logoutBtn
      anchors.top: optBtn.bottom
      anchors.topMargin: 16
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 15
      anchors.left: backupBtn.right
      anchors.leftMargin: 20
      anchors.right: exitBtn.left
      anchors.rightMargin: 20
      onClicked: QmlBridge.clickedCloseWallet()

      Text {
        id: element5
        x: 39
        y: 8
        color: "#dddddd"
        text: qsTr("LOGOUT")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
      }
    }

    Stash.Button {
      id: exitBtn
      x: 270
      width: 100
      height: 30
      anchors.top: optBtn.bottom
      anchors.topMargin: 16
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 15
      anchors.right: parent.right
      anchors.rightMargin: 30

      Text {
        x: 39
        y: 8
        color: "#dddddd"
        text: qsTr("EXIT")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}D{i:2;anchors_height:266;anchors_width:246;anchors_x:33;anchors_y:218}
D{i:3;anchors_y:17}D{i:6;anchors_y:59}D{i:8;anchors_y:103}D{i:14;anchors_height:30;anchors_y:225}
D{i:18;anchors_y:410}D{i:20;anchors_width:100;anchors_x:86;anchors_y:410}D{i:22;anchors_height:30;anchors_x:30;anchors_y:455}
D{i:24;anchors_height:30;anchors_width:100;anchors_x:155;anchors_y:455}D{i:26;anchors_height:30;anchors_y:455}
}
##^##*/

