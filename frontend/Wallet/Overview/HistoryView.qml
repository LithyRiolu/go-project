import QtQuick 2.12
import QtQuick.Controls 2.5

import "Components"

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

    ListView {
      id: listViewTransactions
      x: 2
      y: -65
      delegate: delegateListViewTransactions
      anchors.bottomMargin: 10
      anchors.leftMargin: 10
      boundsBehavior: Flickable.DragAndOvershootBounds
      clip: true
      ScrollBar.vertical: ScrollBar {
        width: 5
        anchors.right: parent.right
        policy: ScrollBar.AlwaysOn
        anchors.rightMargin: 0
      }
      model: modelListViewTransactions
      anchors.left: parent.left
      anchors.bottom: parent.bottom
      anchors.right: parent.right
      footer: Rectangle {
        width: listViewTransactions.width - 7
        height: 20
        color: "#00000000"
        border.color: "#ffa500"
        border.width: 1
        radius: 5
        Text {
          color: "#ffa500"
          text: qsTr("No more results")
          anchors.centerIn: parent
          font.family: "Arial"
          font.pixelSize: 12
        }
      }
      anchors.top: parent.top
      anchors.topMargin: 39
      anchors.rightMargin: 4
    }
  }
}
