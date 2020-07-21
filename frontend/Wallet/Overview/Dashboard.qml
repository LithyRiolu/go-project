import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.12

import "Components"

Item {
  width: 500
  height: 700

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    /* tabBar and items */
    TabBar {
      id: tabBar
      height: 25
      anchors.top: primAddressBox.bottom
      anchors.topMargin: 20
      //spacing: 50
      anchors.right: parent.right
      anchors.rightMargin: 20
      anchors.left: parent.left
      anchors.leftMargin: 20
      background: Item {
        opacity: 0
      }

      TabButton {
        id: overviewButton
        width: tabBar.width / 5
        contentItem: Column {
          id: column
          Text {
            id: overviewButtonText
            color: "#dddddd"
            text: qsTr("Overview")
            font.pointSize: 10
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
          }

          Rectangle {
            width: overviewButtonText.width
            height: 1
            color: "#ffa500"
            anchors.top: overviewButtonText.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            visible: tabBar.currentIndex == 0
          }
        }
        background: Rectangle {
          color: "#282d31"
          border.color: "orange"
          radius: 5
        }
      }

      TabButton {
        id: transactionButton
        width: tabBar.width / 5
        contentItem: Column {
          id: column3
          Text {
            id: transactionButtonText
            color: "#dddddd"
            text: qsTr("Transaction")
            anchors.horizontalCenter: parent.horizontalCenter
          }

          Rectangle {
            width: transactionButtonText.width
            height: 1
            color: "#ffa500"
            anchors.top: overviewButtonText.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            visible: tabBar.currentIndex == 1
          }
        }
        background: Rectangle {
          color: "#282d31"
          border.color: "orange"
          radius: 5
        }
      }

      TabButton {
        id: bankButton
        width: tabBar.width / 5
        contentItem: Column {
          id: column2
          Text {
            id: bankButtonText
            color: "#dddddd"
            text: qsTr("Bank")
            anchors.horizontalCenter: parent.horizontalCenter
          }

          Rectangle {
            width: bankButtonText.width
            height: 1
            color: "#ffa500"
            anchors.top: overviewButtonText.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            visible: tabBar.currentIndex == 2
          }
        }
        background: Rectangle {
          color: "#282d31"
          border.color: "orange"
          radius: 5
        }
      }

      TabButton {
        id: historyButton
        width: tabBar.width / 5
        contentItem: Column {
          id: column1
          anchors.horizontalCenter: parent.horizontalCenter
          Text {
            id: historyButtonText
            color: "#dddddd"
            text: qsTr("History")
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
          }

          Rectangle {
            width: historyButtonText.width
            height: 1
            color: "#ffa500"
            anchors.top: overviewButtonText.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            visible: tabBar.currentIndex == 3
          }
        }
        background: Rectangle {
          color: "#282d31"
          border.color: "orange"
          radius: 5
        }
      }

      TabButton {
        id: settingsButton
        width: tabBar.width / 5
        contentItem: Column {
          id: column4
          Text {
            id: settingsButtonText
            color: "#dddddd"
            text: qsTr("Settings")
            anchors.horizontalCenter: parent.horizontalCenter
          }

          Rectangle {
            width: settingsButtonText.width
            height: 1
            color: "#ffa500"
            anchors.top: overviewButtonText.bottom
            anchors.topMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            visible: tabBar.currentIndex == 4
          }
        }
        background: Rectangle {
          color: "#282d31"
          border.color: "orange"
          radius: 5
        }
      }
    }

    Rectangle {
      id: rectangle1
      x: 8
      y: 155
      width: 484
      height: 387
      color: "#00000000"
      border.color: "#ffa500"
      StackLayout {
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        clip: true

        OverviewView {}
        TransactionView {}
        BankView {}
        HistoryView {}
        SettingsView {}
      }
    }

    Rectangle {
      id: primAddressBox
      x: 8
      y: 8
      width: 484
      height: 73
      color: "#00000000"
      radius: 5
      border.color: "#ffa500"

      Text {
        id: element
        color: "#dddddd"
        text: qsTr(
                "ccx7ddP7eNNXoMjLBQ1Nofi2Ujxt9exJgWheXXYtRyoxYbPWNdRK3bRXtznxBsofFP8JB32YYBmtwLdoEirjAbYo4DBZhzoes2")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 15
        anchors.top: parent.top
        anchors.topMargin: 30
        horizontalAlignment: Text.AlignLeft
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        font.pixelSize: 12
      }

      Text {
        id: element1
        color: "#ffa500"
        text: qsTr("ADDRESS")
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 15
        font.pixelSize: 12
      }
    }

    Rectangle {
      id: rectangle2
      y: 556
      width: 200
      height: 1
      color: "#444444"
      anchors.right: parent.right
      anchors.rightMargin: 15
      anchors.left: parent.left
      anchors.leftMargin: 15
    }

    Button {
      id: helpButton
      x: 8
      y: 654
      width: 100
      height: 30
      anchors.right: parent.right
      anchors.top: customNodeBox.bottom
      anchors.topMargin: 10
      anchors.rightMargin: 10
      background: Rectangle {
        id: helpBtnBg
        color: "#282d31"
        radius: 5
        border.color: "#ffa500"
      }
      MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onClicked: helpPopup.open()
      }
      Text {
        id: clearText
        color: "#dddddd"
        text: qsTr("HELP")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
      }
    }
  }

  HelpPopup {
    id: helpPopup
    height: 500
    width: 300
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.8999999761581421}D{i:2;anchors_height:27;anchors_y:328}D{i:57;anchors_x:96}
}
##^##*/

