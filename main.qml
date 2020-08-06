import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
  visible: true
  width: 600
  height: 900
  title: qsTr("The Holy One v2")

  StackView {
    id: stackView
    anchors.fill: parent
    initialItem: "Misc/SplashScreen.qml"

    pushEnter: Transition {
      PropertyAnimation {
        property: "opacity"
        from: 0
        to: 1
        duration: 200
      }
    }
    pushExit: Transition {
      PropertyAnimation {
        property: "opacity"
        from: 1
        to: 0
        duration: 200
      }
    }
    popEnter: Transition {
      PropertyAnimation {
        property: "opacity"
        from: 0
        to: 1
        duration: 200
      }
    }
    popExit: Transition {
      PropertyAnimation {
        property: "opacity"
        from: 1
        to: 0
        duration: 200
      }
    }
  }
}
