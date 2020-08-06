import QtQuick 2.0

Item {
  id: splashScreen
  width: 600
  height: 900

  Timer {
    interval: 5000
    running: splashScreen.visible
    onTriggered: stackView.push("../Login/LoginScreen.qml")
  }

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

    Text {
      id: concealTitle
      x: 289
      color: "#dddddd"
      text: qsTr("CONCEAL\nSTASH GUI WALLET")
      font.bold: false
      anchors.top: logo.bottom
      anchors.topMargin: 50
      horizontalAlignment: Text.AlignHCenter
      anchors.horizontalCenter: parent.horizontalCenter
      font.pixelSize: 30
    }
  }
}
