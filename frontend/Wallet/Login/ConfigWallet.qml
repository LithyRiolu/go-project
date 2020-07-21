import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
  id: splashScreen
  width: 500
  height: 700

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    Image {
      id: image
      x: 200
      y: 32
      width: 100
      height: 100
      source: "../../Images/logo.svg"
      fillMode: Image.PreserveAspectFit
    }

    Rectangle {
      id: createBox
      x: 44
      width: 400
      height: 118
      color: "#00000000"
      radius: 5
      anchors.top: parent.top
      anchors.topMargin: 208
      anchors.horizontalCenterOffset: 0
      anchors.horizontalCenter: parent.horizontalCenter
      border.color: "#ffa500"

      Text {
        id: createTitle
        color: "#ffa500"
        text: qsTr("CREATE")
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 15
        font.pixelSize: 16
      }

      Button {
        id: createWalletButton
        x: 100
        width: 200
        anchors.top: createDesc.bottom
        anchors.topMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        onClicked: stackView.push("../Overview/Dashboard.qml")
        Text {
          text: qsTr("CREATE WALLET")
          font.pointSize: 11
          anchors.verticalCenter: parent.verticalCenter
          anchors.horizontalCenter: parent.horizontalCenter
          color: "#dddddd"
        }
        background: Rectangle {
          color: "#282d31"
          border.color: "#ffa500"
          radius: 5
        }
      }

      Text {
        id: createDesc
        x: 100
        width: 312
        height: 18
        color: "#dddddd"
        text: "It's easy to get your first wallet created right here."
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        anchors.topMargin: 35
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 14
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
      }
    }

    Rectangle {
      id: importBox
      x: 36
      width: 400
      color: "#00000000"
      radius: 5
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 127
      anchors.top: createBox.bottom
      anchors.topMargin: 50
      anchors.horizontalCenterOffset: 0
      border.color: "#ffa500"
      anchors.horizontalCenter: parent.horizontalCenter

      Text {
        id: element1
        color: "#ffa500"
        text: qsTr("IMPORT")
        anchors.left: parent.left
        anchors.topMargin: 10
        font.pixelSize: 16
        anchors.leftMargin: 15
        anchors.top: parent.top
      }

      Text {
        id: importDesc
        x: 100
        width: 312
        height: 52
        color: "#dddddd"
        text: "If however you have used Conceal before,\nYou can either Import your wallet using your Seed or Private Keys."
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        anchors.topMargin: 35
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: 14
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
      }

      Button {
        id: importKeysButton
        x: 119
        width: 200
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Text {
          color: "#dddddd"
          text: qsTr("IMPORT PRIVATE KEYS")
          anchors.verticalCenter: parent.verticalCenter
          font.pointSize: 11
          anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.top: importSeedButton.bottom
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
      }

      Button {
        id: importSeedButton
        x: 122
        width: 200
        height: 25
        anchors.horizontalCenterOffset: 0
        anchors.topMargin: 20
        Text {
          color: "#dddddd"
          text: qsTr("IMPORT SEED")
          anchors.verticalCenter: parent.verticalCenter
          font.pointSize: 11
          anchors.horizontalCenter: parent.horizontalCenter
        }
        anchors.top: importDesc.bottom
        background: Rectangle {
          color: "#282d31"
          radius: 5
          border.color: "#ffa500"
        }
        anchors.horizontalCenter: parent.horizontalCenter
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}D{i:4;anchors_x:100;anchors_y:80}D{i:5;anchors_height:25;anchors_y:88}
D{i:8;anchors_x:100;anchors_y:80}D{i:3;anchors_height:134;anchors_y:208}D{i:10;anchors_x:100;anchors_y:80}
D{i:11;anchors_x:100;anchors_y:80}D{i:12;anchors_height:25;anchors_y:150}D{i:15;anchors_height:25;anchors_y:93}
D{i:9;anchors_height:197;anchors_y:423}
}
##^##*/

