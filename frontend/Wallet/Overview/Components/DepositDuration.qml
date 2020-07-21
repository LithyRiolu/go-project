import QtQuick 2.12
import QtQuick.Controls 2.12

ComboBox {
  id: control
  width: 200
  height: 31

  model: ["1 Month", "2 Months", "3 Months", "4 Months", "5 Months", "6 Months", "7 Months", "8 Months", "9 Months", "10 Months", "11 Months", "12 Months"]

  property var why: "orange"

  contentItem: Text {
    text: control.displayText
    font: control.font
    color: why
    verticalAlignment: Text.AlignVCenter
    elide: Text.ElideRight
    leftPadding: 10
    rightPadding: control.indicator.width + control.spacing
  }
  delegate: ItemDelegate {
    width: control.width
    contentItem: Text {
      text: modelData
      font: control.font
      elide: Text.ElideRight
      verticalAlignment: Text.AlignVCenter
      color: why
    }
    highlighted: control.highlightedIndex === index
  }

  indicator: Canvas {
    id: canvas
    x: control.width - width - control.rightPadding
    y: control.topPadding + (control.availableHeight - height) / 2
    width: 12
    height: 8
    contextType: "2d"

    Connections {
      target: control
      function onPressedChanged() {
        canvas.requestPaint()
      }
    }

    onPaint: {
      context.reset()
      context.moveTo(0, 0)
      context.lineTo(width, 0)
      context.lineTo(width / 2, height)
      context.closePath()
      context.fillStyle = "#ffa500"
      context.fill()
    }
  }

  background: Rectangle {
    implicitWidth: 120
    implicitHeight: 40
    color: "#282d31"
    border.color: "#444444"
    border.width: control.visualFocus ? 2 : 1
  }

  popup: Popup {
    y: control.height - 1
    width: control.width
    implicitHeight: contentItem.implicitHeight
    padding: 1

    contentItem: ListView {
      clip: true
      implicitHeight: contentHeight
      model: control.popup.visible ? control.delegateModel : null
      currentIndex: control.highlightedIndex

      ScrollIndicator.vertical: ScrollIndicator {}
    }

    background: Rectangle {
      color: "#282d31"
      border.color: "#ffa500"
      radius: 5
    }
  }
}
