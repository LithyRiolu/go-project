import QtQuick 2.12
import QtQuick.Controls 2.12

Switch {
  id: control

  //text: qsTr("Switch")
  indicator: Rectangle {
    implicitWidth: 48
    implicitHeight: 26
    x: control.leftPadding
    y: parent.height / 2 - height / 2
    color: "#00000000"
    radius: 13
    border.color: "#444444"

    Rectangle {
      x: control.checked ? parent.width - width : 0
      width: 26
      height: 26
      color: "#dddddd"
      radius: 13
      border.color: "#444444"
    }
  }

  contentItem: Text {
    text: control.text
    font: control.font
    opacity: enabled ? 1.0 : 0.3
    color: "#dddddd"
    verticalAlignment: Text.AlignVCenter
    leftPadding: control.indicator.width + control.spacing
  }
}
