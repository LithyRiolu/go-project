import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Components" as Stash

Item {
  id: overviewView
  width: 560
  height: 601

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    Text {
      id: title
      x: 269
      color: "#dddddd"
      text: qsTr("HISTORY")
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.top: parent.top
      anchors.topMargin: 20
      font.pixelSize: 16
    }

    Rectangle {
      id: rectangle1
      x: 239
      y: 42
      width: 81
      height: 1
      color: "#ffa500"
    }

    Rectangle {
      id: history
      color: "#00000000"
      anchors.bottom: parent.bottom
      anchors.bottomMargin: 20
      anchors.top: parent.top
      anchors.topMargin: 60
      anchors.right: parent.right
      anchors.rightMargin: 20
      anchors.left: parent.left
      anchors.leftMargin: 20
      border.color: "#444444"

      ListView {
        id: listViewTransactions
        x: 2
        y: -65
        delegate: delegateListViewTransactions
        anchors.bottomMargin: 10
        anchors.leftMargin: 10
        boundsBehavior: Flickable.DragAndOvershootBounds
        clip: true
        model: modelListViewTransactions
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.rightMargin: 10
        ScrollBar.vertical: ScrollBar {
          width: 5
          anchors.right: parent.right
          policy: ScrollBar.AlwaysOn
          anchors.rightMargin: 0
        }
        footer: Rectangle {
          width: listViewTransactions.width
          height: 20
          color: "#00000000"

          Text {
            color: "#dddddd"
            text: qsTr("No more results")
            anchors.centerIn: parent
            font.family: "Arial"
            font.pixelSize: 12
          }
        }
      }
    }
  }
}
