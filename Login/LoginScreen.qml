import QtQuick 2.12

import "../Components" as Stash

Item {
  id: loginScreen
  width: 600
  height: 900

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

    Stash.TextBox {
      id: descBox
      x: 181
      width: 450
      height: 140
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.top: logo.bottom
      anchors.topMargin: 50

      Text {
        id: descText
        color: "#dddddd"
        text: "Welcome to the Conceal Stash wallet.\n\nIf you're new to Conceal, you are able to create a new wallet right here. Nice, quick and easy.\n\nAlternativly, if you have used Conceal in the past - then you're able to safley import your wallet and continue syncing with the Blockchain."
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10
        anchors.fill: parent
        font.pixelSize: 14
      }
    }

    Stash.Button {
      id: createBtn
      x: 57
      width: 150
      height: 40
      anchors.right: importBtn.left
      anchors.rightMargin: 10
      anchors.top: descBox.bottom
      anchors.topMargin: 50
      onClicked: stackView.push("CreateWallet.qml")

      Text {
        text: qsTr("CREATE WALLET")
        font.pointSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#dddddd"
      }
    }

    Stash.Button {
      id: importBtn
      x: 220
      width: 150
      height: 40
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.top: descBox.bottom
      anchors.topMargin: 50
      onClicked: stackView.push("ImportWallet.qml")

      Text {
        color: "#dddddd"
        text: qsTr("IMPORT WALLET")
        font.pointSize: 12
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
      }
    }

    Stash.Button {
      id: openBtn
      width: 150
      height: 40
      anchors.left: importBtn.right
      anchors.leftMargin: 10
      anchors.top: descBox.bottom
      anchors.topMargin: 50
      onClicked: stackView.push("OpenWallet.qml")

      Text {
        color: "#dddddd"
        text: qsTr("OPEN WALLET")
        font.pointSize: 12
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
      }
    }

    Stash.Button {
      id: toBeDeleted
      x: 8
      y: 8
      width: 150
      height: 40

      Text {
        text: qsTr("BYPASS FOR DEV")
        font.pointSize: 12
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        color: "#dddddd"
      }

      MouseArea {
        anchors.fill: parent
        onClicked: stackView.push("../Wallet/Dashboard.qml")
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:2;anchors_y:266}D{i:4;anchors_y:266}D{i:6;anchors_x:376;anchors_y:266}
D{i:8;anchors_y:145}D{i:12;anchors_x:89;anchors_y:43}D{i:11;anchors_y:615}
}
##^##*/

