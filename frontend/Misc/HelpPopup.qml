import QtQuick 2.12
import QtQuick.Controls 2.12

Popup {
  id: aboutPopup
  height: 500
  width: 400
  anchors.centerIn: parent
  closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
  modal: true
  focus: true

  background: Rectangle {
    id: helpPopupBox
    radius: 5
    implicitHeight: 500
    implicitWidth: 400
    border.width: 1
    border.color: "#444444"
    color: "#282d31"

    Rectangle {
      id: helpBox
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
      id: helpTitle
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
    D{i:0;formeditorZoom:0.8999999761581421}D{i:2;anchors_height:266;anchors_width:246;anchors_x:33;anchors_y:218}
D{i:3;anchors_y:17}
}
##^##*/

