import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Components" as Stash
import "../Misc" as StashMisc

Item {
  id: dashboard
  width: 600
  height: 900

  function copiedAddr() {
    /* make go-qml link to copy address */
    copyTimer.start()
    QmlBridge.copyAddressClicked()
  }

  StashMisc.HelpPopup {
    id: helpPopup
    height: 500
    width: 400
  }

  StashMisc.SettingsPopup {
    id: settingsPopup
    height: 500
    width: 400
  }

  Timer {
    id: copyTimer
    interval: 2500
    running: false
    onRunningChanged: if (copyTimer.running) {
                        copiedTitle.text = "Copied!"
                      } else {
                        copiedTitle.text = ""
                      }
  }

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    Image {
      id: logo
      width: 100
      height: 100
      anchors.left: parent.left
      anchors.leftMargin: 20
      anchors.top: parent.top
      anchors.topMargin: 20
      fillMode: Image.PreserveAspectFit
      source: "../Images/logo.svg"
    }

    Stash.Button {
      id: overviewBtn
      y: 50
      width: 100
      height: 30
      anchors.left: logo.right
      anchors.leftMargin: 10
      anchors.verticalCenter: logo.verticalCenter
      onClicked: swipeView.currentIndex = 0

      Text {
        id: element
        x: 39
        y: 13
        color: "#dddddd"
        text: qsTr("OVERVIEW")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
      }
    }

    Stash.Button {
      id: transferBtn
      y: 50
      width: 100
      height: 30
      anchors.left: overviewBtn.right
      anchors.leftMargin: 15
      anchors.verticalCenter: logo.verticalCenter
      onClicked: swipeView.currentIndex = 1

      Text {
        id: element1
        x: 39
        y: 13
        color: "#dddddd"
        text: qsTr("TRANSFER")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
      }
    }

    Stash.Button {
      id: bankBtn
      y: 50
      width: 100
      height: 30
      anchors.verticalCenter: logo.verticalCenter
      /* NOTE: Banking needs to implemented into walletd */
      //onClicked: swipeView.currentIndex = 2
      visible: false

      Text {
        id: element2
        x: 39
        y: 13
        color: "#dddddd"
        text: qsTr("BANK")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
      }
    }

    Stash.Button {
      id: historyBtn
      y: 50
      width: 100
      height: 30
      anchors.left: transferBtn.right
      anchors.leftMargin: 15
      anchors.verticalCenter: logo.verticalCenter
      onClicked: swipeView.currentIndex = 2

      Text {
        id: element3
        x: 39
        y: 13
        color: "#dddddd"
        text: qsTr("HISTORY")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 14
      }
    }

    Rectangle {
      id: addrBox
      width: 580
      height: 70
      color: "#00000000"
      radius: 5
      anchors.top: logo.bottom
      anchors.topMargin: 20
      anchors.right: parent.right
      anchors.leftMargin: 10
      anchors.left: parent.left
      anchors.rightMargin: 10
      border.color: "#444444"

      Text {
        id: addrTitle
        color: "#dddddd"
        text: qsTr("ADDRESS")
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        font.pixelSize: 14
      }

      Text {
        id: address
        color: "#ffa500"
        /* @NOTE: This is Giomar's address, just for an example - Delete when done */


        /* @NOTE: Also, maybe a MouseArea effect filling the addrBox to copy the address
         * when clicked - then have a popup saying it has been copied */
        text: qsTr(
                "ccx7PxCQTHx6egQfGoEBvuFytcCA9PtfoPDNvgAkJrE5TkQe6HNBr1ZXtznxBsofFP8JB32YYBmtwLdoEirjAbYo4DBZih8g3T")
        wrapMode: Text.WrapAnywhere
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 30
        anchors.left: parent.left
        anchors.leftMargin: 20
        font.pixelSize: 12

        Connections {
          target: QmlBridge

          onDisplayAddress: {
            address.text = address
          }
        }
      }

      MouseArea {
        anchors.fill: parent
        onClicked: copiedAddr()
      }

      Text {
        id: copiedTitle
        x: 263
        color: "#dddddd"
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        font.pixelSize: 14
      }
    }

    Rectangle {
      id: viewBox
      color: "#00000000"
      radius: 5
      anchors.bottom: settingsBtn.top
      anchors.bottomMargin: 20
      anchors.top: parent.top
      anchors.topMargin: 229
      anchors.left: parent.left
      anchors.leftMargin: 20
      anchors.right: parent.right
      anchors.rightMargin: 20
      border.color: "#444444"

      SwipeView {
        id: swipeView
        anchors.fill: parent
        clip: true
        currentIndex: 0

        OverviewView {} // 0
        TransferView {} // 1
        //BankView {} // 2
        HistoryView {} // 3// 2
      }
    }

    Stash.Button {
      id: helpBtn
      x: 71
      y: 838
      width: 100
      height: 30
      anchors.right: settingsBtn.left
      anchors.rightMargin: 15
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 20
      onClicked: helpPopup.open()

      Text {
        id: element4
        x: 39
        y: 8
        color: "#dddddd"
        text: qsTr("HELP")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
      }
    }

    Stash.Button {
      id: settingsBtn
      x: 240
      y: 832
      width: 100
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 20
      anchors.right: parent.right
      anchors.rightMargin: 20
      onClicked: settingsPopup.open()

      Text {
        id: element5
        x: 39
        y: 8
        color: "#dddddd"
        text: qsTr("SETTINGS")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.pixelSize: 12
      }
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}D{i:17;anchors_y:10}
}
##^##*/

