import QtQuick 2.12
import QtQuick.Controls 2.5
import stashy 1.0

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
      id: rectangle2
      x: 45
      y: 12
      width: 248
      height: 95
      color: "#00000000"
      radius: 5
      anchors.horizontalCenterOffset: -108
      anchors.horizontalCenter: parent.horizontalCenter
      border.color: "#ffa500"

      Text {
        id: element
        color: "#dddddd"
        text: qsTr("WALLET STATUS")
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        font.pixelSize: 14
      }

      Text {
        id: element1
        color: "#dddddd"
        text: qsTr("WALLET HEIGHT")
        anchors.left: parent.left
        anchors.leftMargin: 15
        anchors.top: parent.top
        anchors.topMargin: 30
        font.pixelSize: 12
      }

      Text {
        id: element2
        x: 136
        width: 97
        height: 14
        color: "#ffa500"
        text: qsTr("1234567")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.top: parent.top
        anchors.topMargin: 30
        font.pixelSize: 12
      }

      Text {
        id: element3
        color: "#dddddd"
        text: qsTr("BLOCKCHAIN HEIGHT")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 50
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element4
        x: 136
        width: 97
        height: 14
        color: "#ffa500"
        text: qsTr("1234567")
        anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.topMargin: 50
        font.pixelSize: 12
        anchors.rightMargin: 15
      }

      Text {
        id: element5
        color: "#dddddd"
        text: qsTr("SYNC STATUS")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 70
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element6
        x: 97
        width: 136
        height: 14
        color: "#ffa500"
        text: qsTr("Syncing... (0%)")
        anchors.top: parent.top
        horizontalAlignment: Text.AlignRight
        anchors.right: parent.right
        anchors.topMargin: 70
        anchors.rightMargin: 15
        font.pixelSize: 12
      }
    }

    Rectangle {
      id: rectangle3
      x: 100
      y: 131
      width: 330
      height: 115
      color: "#00000000"
      radius: 5
      anchors.horizontalCenterOffset: -67
      anchors.horizontalCenter: parent.horizontalCenter
      border.color: "#ffa500"

      Text {
        id: element7
        color: "#dddddd"
        text: qsTr("ACCOUNT BALANCE")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 10
        font.pixelSize: 14
      }

      Text {
        id: availableTitle
        width: 120
        height: 14
        color: "#dddddd"
        text: qsTr("AVAILABLE")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 30
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: pendingTitle
        width: 120
        height: 14
        color: "#dddddd"
        text: qsTr("PENDING")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 50
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: lockedTitle
        width: 120
        height: 14
        color: "#dddddd"
        text: qsTr("LOCKED DEPOSITS")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 70
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element11
        width: 136
        height: 14
        color: "#ffa500"
        text: qsTr("1,234,567.123456")
        anchors.left: lockedTitle.right
        anchors.leftMargin: 10
        anchors.top: parent.top
        horizontalAlignment: Text.AlignRight
        anchors.topMargin: 70
        font.pixelSize: 12
      }

      Text {
        id: element12
        width: 136
        height: 14
        color: "#ffa500"
        text: qsTr("1,234,567.123456")
        anchors.left: pendingTitle.right
        anchors.leftMargin: 10
        anchors.top: parent.top
        horizontalAlignment: Text.AlignRight
        anchors.topMargin: 50
        font.pixelSize: 12
      }

      Text {
        id: availableText
        width: 136
        height: 14
        color: "#ffa500"
        text: stashy.totalBalance
        anchors.left: availableTitle.right
        anchors.leftMargin: 10
        anchors.top: parent.top
        horizontalAlignment: Text.AlignRight
        anchors.topMargin: 30
        font.pixelSize: 12
      }

      Text {
        id: withdrawableTitle
        width: 120
        height: 14
        color: "#dddddd"
        text: qsTr("WITHDRAWABLE")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 90
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element15
        width: 136
        height: 14
        color: "#ffa500"
        text: qsTr("1,234,567.123456")
        anchors.left: withdrawableTitle.right
        anchors.leftMargin: 10
        anchors.top: parent.top
        horizontalAlignment: Text.AlignRight
        anchors.topMargin: 90
        font.pixelSize: 12
      }

      Text {
        id: availableTitle1
        x: 15
        height: 14
        color: "#dddddd"
        text: qsTr("$CCX")
        anchors.right: parent.right
        anchors.rightMargin: 15
        anchors.top: parent.top
        anchors.topMargin: 30
        font.pixelSize: 12
      }

      Text {
        id: availableTitle2
        x: 15
        height: 14
        color: "#dddddd"
        text: qsTr("$CCX")
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: 50
        font.pixelSize: 12
        anchors.rightMargin: 15
      }

      Text {
        id: availableTitle3
        x: 15
        height: 14
        color: "#dddddd"
        text: qsTr("$CCX")
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: 70
        anchors.rightMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: availableTitle4
        x: 15
        height: 14
        color: "#dddddd"
        text: qsTr("$CCX")
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: 90
        font.pixelSize: 12
        anchors.rightMargin: 15
      }
    }

    Rectangle {
      id: rectangle4
      x: 268
      y: 12
      width: 206
      height: 113
      color: "#00000000"
      radius: 5
      border.color: "#ffa500"

      Text {
        id: element8
        color: "#dddddd"
        text: qsTr("CCX/USD")
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element9
        color: "#dddddd"
        text: qsTr("MARKET INFORMATION")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 10
        font.pixelSize: 14
      }

      Text {
        id: element10
        color: "#dddddd"
        text: qsTr("CCX/EUR")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 50
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element13
        color: "#dddddd"
        text: qsTr("CCX/GBP")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 70
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element14
        color: "#ffa500"
        text: qsTr("$")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 30
        anchors.leftMargin: 80
        font.pixelSize: 12
      }

      Text {
        id: element16
        color: "#ffa500"
        text: qsTr("€")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 50
        anchors.leftMargin: 80
        font.pixelSize: 12
      }

      Text {
        id: element17
        color: "#ffa500"
        text: qsTr("£")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 70
        anchors.leftMargin: 80
        font.pixelSize: 12
      }

      Text {
        id: element18
        color: "#ffa500"
        text: qsTr("0.000000000000")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 30
        anchors.leftMargin: 95
        font.pixelSize: 12
      }

      Text {
        id: element19
        color: "#ffa500"
        text: qsTr("0.000000000000")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 50
        anchors.leftMargin: 95
        font.pixelSize: 12
      }

      Text {
        id: element20
        color: "#ffa500"
        text: qsTr("0.000000000000")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 70
        anchors.leftMargin: 95
        font.pixelSize: 12
      }

      Text {
        id: element21
        color: "#dddddd"
        text: qsTr("CCX/BTC")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 90
        anchors.leftMargin: 15
        font.pixelSize: 12
      }

      Text {
        id: element22
        color: "#ffa500"
        text: qsTr("₿")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 90
        anchors.leftMargin: 80
        font.pixelSize: 12
      }

      Text {
        id: element23
        color: "#ffa500"
        text: qsTr("0.000000000000")
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 90
        anchors.leftMargin: 95
        font.pixelSize: 12
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.8999999761581421}D{i:4;anchors_x:74;anchors_y:66}D{i:5;anchors_x:15;anchors_y:45}
D{i:6;anchors_x:15;anchors_y:45}D{i:7;anchors_x:15;anchors_y:45}D{i:8;anchors_x:15;anchors_y:45}
D{i:9;anchors_x:15;anchors_y:45}D{i:10;anchors_x:15;anchors_y:45}D{i:3;anchors_x:45;anchors_y:39}
D{i:12;anchors_x:74;anchors_y:66}D{i:13;anchors_x:15;anchors_y:45}D{i:14;anchors_x:15;anchors_y:45}
D{i:15;anchors_x:15;anchors_y:45}D{i:16;anchors_x:136;anchors_y:45}D{i:17;anchors_x:136;anchors_y:45}
D{i:18;anchors_x:136;anchors_y:45}D{i:19;anchors_x:15;anchors_y:45}D{i:20;anchors_x:136;anchors_y:45}
D{i:21;anchors_width:120;anchors_x:15;anchors_y:45}D{i:22;anchors_width:120;anchors_x:15;anchors_y:45}
D{i:23;anchors_width:120;anchors_x:15;anchors_y:45}D{i:24;anchors_width:120;anchors_x:15;anchors_y:45}
D{i:26;anchors_x:48;anchors_y:39}D{i:27;anchors_x:74;anchors_y:66}D{i:28;anchors_x:48;anchors_y:39}
D{i:29;anchors_x:48;anchors_y:39}D{i:30;anchors_x:48;anchors_y:39}D{i:31;anchors_x:48;anchors_y:39}
D{i:32;anchors_x:48;anchors_y:39}D{i:33;anchors_x:48;anchors_y:39}D{i:34;anchors_x:48;anchors_y:39}
D{i:35;anchors_x:48;anchors_y:39}D{i:36;anchors_x:48;anchors_y:39}D{i:37;anchors_x:48;anchors_y:39}
D{i:38;anchors_x:48;anchors_y:39}
}
##^##*/

