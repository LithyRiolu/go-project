import QtQuick 2.12
import QtQuick.Particles 2.12

Item {
  id: splashScreen
  width: 500
  height: 700

  Timer {
    interval: 5000
    running: splashScreen.visible
    onTriggered: stackView.push("Wallet/Login/ConfigWallet.qml")
  }

  Rectangle {
    id: rectangle
    anchors.fill: parent
    color: "#282d31"

    Text {
      id: element
      x: 174
      y: 68
      color: "#dddddd"
      text: qsTr("The Stash Wallet")
      anchors.horizontalCenter: parent.horizontalCenter
      font.pixelSize: 20
    }

    Image {
      id: image
      x: 150
      y: 250
      width: 200
      height: 200
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.verticalCenter: parent.verticalCenter
      source: "qrc:/Images/logo.svg"
      fillMode: Image.PreserveAspectFit
    }

    Text {
      id: element1
      x: 174
      y: 104
      color: "#dddddd"
      text: qsTr("v1")
      anchors.horizontalCenter: parent.horizontalCenter
      font.pixelSize: 18
    }


    /* particle effect
     uncomment when building!
    ParticleSystem {
      anchors.fill: parent

      ImageParticle {
        anchors.fill: parent
        source: "qrc:/Images/star.png"
        sizeTable: "qrc:/Images/sparkleSize.png"
        alpha: 0
        alphaVariation: 0.4
        colorVariation: 0.6
        rotation: 15
        rotationVariation: 5
        rotationVelocity: 45
        rotationVelocityVariation: 15
        entryEffect: ImageParticle.Scale
      }

      Emitter {
        anchors.top: parent.top
        anchors.left: parent.left
        startTime: 5000
        emitRate: 18
        lifeSpan: 26000
        size: 24
        sizeVariation: 30
        velocity: AngleDirection {
          angleVariation: 90
          magnitude: 300
          magnitudeVariation: 200
        }
      }

      Turbulence {
        anchors.fill: parent
        strength: 2
      }

      Wander {
        anchors.horizontalCenter: parent.horizontalCenter
        width: 19200
        height: 1080
        affectedParameter: Wander.Position
        pace: 400
      }
    } */
  }
}
