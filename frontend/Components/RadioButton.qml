import QtQuick 2.12
import QtQuick.Controls 2.12

RadioButton {
  id: control
  checkable: true

  //checked: true
  indicator: Rectangle {
    implicitWidth: 26
    implicitHeight: 26
    x: control.leftPadding
    y: parent.height / 2 - height / 2
    radius: 13
    color: "#00000000"
    border.color: control.checked ? "#dddddd" : "#444444"

    Rectangle {
      width: 14
      height: 14
      x: 6
      y: 6
      radius: 7
      color: control.checked ? "#ffa500" : "#444444"
      visible: control.checked
    }
  }

  contentItem: Text {
    text: control.text
    font: control.font
    opacity: enabled ? 1.0 : 0.3
    color: control.down ? "#17a81a" : "#21be2b"
    verticalAlignment: Text.AlignVCenter
    leftPadding: control.indicator.width + control.spacing
  }
}
