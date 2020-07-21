import QtQuick 2.12
import QtQuick.Controls 2.12

Popup {
  id: aboutPopup
  height: 500
  width: 300
  anchors.centerIn: parent
  closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
  modal: true
  focus: true

  background: Rectangle {
    id: rectangle1
    radius: 5
    implicitHeight: 500
    implicitWidth: 300
    border.width: 1
    border.color: "#ffa500"
    color: "#282d31"

    Rectangle {
      id: rectangle
      y: 40
      height: 160
      color: "#00000000"
      radius: 5
      anchors.right: parent.right
      anchors.rightMargin: 15
      anchors.left: parent.left
      anchors.leftMargin: 15
      border.color: "#444444"

      Rectangle {
        id: discordButton
        width: 120
        height: 40
        color: "#00000000"
        radius: 5
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#444444"
        border.width: 1
        Image {
          id: image1
          x: 8
          y: 3
          width: 25
          height: 25
          fillMode: Image.PreserveAspectFit
          source: "../../../Images/Icons/discord.png"
          anchors.verticalCenter: parent.verticalCenter
        }

        Text {
          id: element2
          x: 39
          y: 16
          color: "#dddddd"
          text: qsTr("DISCORD")
          anchors.rightMargin: 5
          anchors.verticalCenter: parent.verticalCenter
          anchors.right: parent.right
          font.bold: true
          font.pixelSize: 14
        }
      }

      Rectangle {
        id: githubButton
        x: 148
        width: 120
        height: 40
        color: "#00000000"
        radius: 5
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        border.color: "#444444"
        border.width: 1
        Image {
          id: image2
          x: 8
          y: 3
          width: 25
          height: 25
          fillMode: Image.PreserveAspectFit
          source: "../../../Images/Icons/github.png"
          anchors.verticalCenter: parent.verticalCenter
        }

        Text {
          id: element3
          x: 39
          y: 16
          width: 67
          height: 17
          color: "#dddddd"
          text: qsTr("GITHUB")
          horizontalAlignment: Text.AlignHCenter
          anchors.rightMargin: 5
          anchors.verticalCenter: parent.verticalCenter
          anchors.right: parent.right
          font.bold: true
          font.pixelSize: 14
        }
      }

      Rectangle {
        id: mediumButton
        width: 120
        height: 40
        color: "#00000000"
        radius: 5
        anchors.top: discordButton.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#444444"
        border.width: 1
        Image {
          id: image3
          x: 8
          y: 3
          width: 25
          height: 25
          fillMode: Image.PreserveAspectFit
          source: "../../../Images/Icons/medium.png"
          anchors.verticalCenter: parent.verticalCenter
        }

        Text {
          id: element4
          x: 39
          y: 16
          width: 67
          height: 17
          color: "#dddddd"
          text: qsTr("MEDIUM")
          horizontalAlignment: Text.AlignHCenter
          anchors.rightMargin: 5
          anchors.verticalCenter: parent.verticalCenter
          anchors.right: parent.right
          font.bold: true
          font.pixelSize: 14
        }
      }

      Rectangle {
        id: redditButton
        x: 148
        width: 120
        height: 40
        color: "#00000000"
        radius: 5
        anchors.top: githubButton.bottom
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        border.color: "#444444"
        border.width: 1
        Image {
          id: image4
          x: 8
          y: 3
          width: 25
          height: 25
          fillMode: Image.PreserveAspectFit
          source: "../../../Images/Icons/reddit.png"
          anchors.verticalCenter: parent.verticalCenter
        }

        Text {
          id: element5
          x: 39
          y: 16
          width: 67
          height: 17
          color: "#dddddd"
          text: qsTr("REDDIT")
          horizontalAlignment: Text.AlignHCenter
          anchors.rightMargin: 5
          anchors.verticalCenter: parent.verticalCenter
          anchors.right: parent.right
          font.bold: true
          font.pixelSize: 14
        }
      }

      Rectangle {
        id: telegramButton
        width: 120
        color: "#00000000"
        radius: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.top: mediumButton.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        border.color: "#444444"
        border.width: 1
        Image {
          id: image5
          x: 8
          y: 3
          width: 25
          height: 25
          fillMode: Image.PreserveAspectFit
          source: "../../../Images/Icons/telegram.png"
          anchors.verticalCenter: parent.verticalCenter
        }

        Text {
          id: element6
          x: 39
          y: 16
          color: "#dddddd"
          text: qsTr("TELEGRAM")
          anchors.rightMargin: 5
          anchors.verticalCenter: parent.verticalCenter
          anchors.right: parent.right
          font.bold: true
          font.pixelSize: 14
        }
      }

      Rectangle {
        id: twitterButton
        x: 148
        width: 120
        color: "#00000000"
        radius: 5
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.top: redditButton.bottom
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        border.color: "#444444"
        border.width: 1
        Image {
          id: image6
          x: 8
          y: 3
          width: 25
          height: 25
          fillMode: Image.PreserveAspectFit
          source: "../../../Images/Icons/twitter.png"
          anchors.verticalCenter: parent.verticalCenter
        }

        Text {
          id: element7
          x: 39
          y: 16
          width: 67
          height: 17
          color: "#dddddd"
          text: qsTr("TWITTER")
          horizontalAlignment: Text.AlignHCenter
          anchors.rightMargin: 9
          anchors.verticalCenter: parent.verticalCenter
          anchors.right: parent.right
          font.bold: true
          font.pixelSize: 14
        }
      }
    }

    Rectangle {
      id: rectangle2
      y: 218
      height: 266
      color: "#00000000"
      radius: 5
      anchors.leftMargin: 15
      anchors.left: parent.left
      anchors.right: parent.right
      border.color: "#444444"
      anchors.rightMargin: 15
    }

    Text {
      id: element
      x: 139
      color: "#dddddd"
      text: qsTr("HELP")
      anchors.horizontalCenter: parent.horizontalCenter
      font.bold: false
      anchors.top: parent.top
      anchors.topMargin: 15
      font.pixelSize: 16
    }
  }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:3;anchors_x:8;anchors_y:8}D{i:6;anchors_y:8}D{i:9;anchors_x:8;anchors_y:60}
D{i:12;anchors_y:54}D{i:15;anchors_height:40;anchors_x:8;anchors_y:110}D{i:18;anchors_height:40;anchors_y:100}
D{i:2;anchors_width:246;anchors_x:33}D{i:21;anchors_width:246;anchors_x:33}D{i:22;anchors_y:17}
}
##^##*/

