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
      text: qsTr("OVERVIEW")
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
      id: heightBox
      height: 125
      color: "#00000000"
      radius: 5
      anchors.top: title.bottom
      anchors.topMargin: 50
      anchors.right: balanceBox.left
      anchors.rightMargin: 5
      anchors.left: parent.left
      anchors.leftMargin: 20
      border.color: "#444444"

      Text {
        id: heightTitle
        width: 50
        height: 14
        color: "#dddddd"
        text: qsTr("HEIGHT")
        font.underline: false
        anchors.leftMargin: 15
        anchors.topMargin: 10
        anchors.top: parent.top
        anchors.left: parent.left
        font.pixelSize: 16
      }

      Text {
        id: walletHeightTitle
        width: 80
        color: "#dddddd"
        text: qsTr("WALLET:")
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: heightTitle.bottom
        anchors.topMargin: 15
        font.pixelSize: 14
      }

      Text {
        id: nodeHeightTitle
        width: 80
        color: "#dddddd"
        text: qsTr("NODE:")
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.top: walletHeightTitle.bottom
        anchors.left: parent.left
        font.pixelSize: 14
      }

      Text {
        id: blockchainHeightTitle
        width: 80
        color: "#dddddd"
        text: qsTr("BLOCKCHAIN:")
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: nodeHeightTitle.bottom
        font.pixelSize: 14
      }

      Text {
        id: walletHeight
        color: "#ffa500"
        text: qsTr("123,456,789")
        horizontalAlignment: Text.AlignHCenter
        anchors.left: walletHeightTitle.right
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.topMargin: 15
        anchors.top: heightTitle.bottom
        font.pixelSize: 14
      }

      Text {
        id: nodeHeight
        color: "#ffa500"
        text: qsTr("123,456,789")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.top: walletHeight.bottom
        anchors.left: nodeHeightTitle.right
        font.pixelSize: 14
      }

      Text {
        id: blockchainHeight
        color: "#ffa500"
        text: qsTr("123,456,789")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.left: blockchainHeightTitle.right
        anchors.top: nodeHeight.bottom
        font.pixelSize: 14
      }
    }

    Rectangle {
      id: connectionBox
      height: 100
      color: "#00000000"
      radius: 5
      anchors.top: heightBox.bottom
      anchors.topMargin: 20
      anchors.right: marketBox.left
      anchors.rightMargin: 5
      anchors.left: parent.left
      anchors.leftMargin: 20
      border.color: "#444444"

      Text {
        id: connectionTitle
        width: 100
        height: 14
        color: "#dddddd"
        text: qsTr("CONNECTION")
        anchors.leftMargin: 15
        font.underline: false
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 16
      }

      Text {
        id: peerCountTitle
        width: 100
        color: "#dddddd"
        text: qsTr("PEER COUNT:")
        anchors.leftMargin: 20
        anchors.topMargin: 15
        anchors.top: connectionTitle.bottom
        anchors.left: parent.left
        font.pixelSize: 14
      }

      Text {
        id: syncStatusTitle
        width: 100
        color: "#dddddd"
        text: qsTr("SYNC STATUS:")
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: peerCountTitle.bottom
        font.pixelSize: 14
      }

      Text {
        id: peerCount
        color: "#ffa500"
        text: qsTr("1,000")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 15
        anchors.rightMargin: 10
        anchors.top: connectionTitle.bottom
        anchors.left: peerCountTitle.right
        font.pixelSize: 14
      }

      Text {
        id: syncStatus
        color: "#ffa500"
        text: qsTr("syncing... (99%)")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.left: peerCountTitle.right
        anchors.top: peerCount.bottom
        font.pixelSize: 14
      }
    }

    Rectangle {
      id: marketBox
      x: 290
      width: 250
      height: 155
      color: "#00000000"
      radius: 5
      anchors.top: balanceBox.bottom
      anchors.topMargin: 20
      anchors.right: parent.right
      anchors.rightMargin: 20
      border.color: "#444444"

      Text {
        id: marketTitle
        width: 50
        height: 14
        color: "#dddddd"
        text: qsTr("MARKET")
        anchors.leftMargin: 15
        font.underline: false
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 16
      }

      Text {
        id: toBtcTitle
        width: 60
        color: "#dddddd"
        text: qsTr("CCX/BTC")
        anchors.leftMargin: 20
        anchors.topMargin: 15
        anchors.top: marketTitle.bottom
        anchors.left: parent.left
        font.pixelSize: 14
      }

      Text {
        id: toEurTitle
        width: 60
        color: "#dddddd"
        text: qsTr("CCX/EUR")
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: toBtcTitle.bottom
        font.pixelSize: 14
      }

      Text {
        id: toGbpTitle
        width: 60
        color: "#dddddd"
        text: qsTr("CCX/GBP")
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.top: toEurTitle.bottom
        anchors.left: parent.left
        font.pixelSize: 14
      }

      Text {
        id: toUsdTitle
        width: 60
        color: "#dddddd"
        text: qsTr("CCX/USD")
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: toGbpTitle.bottom
        font.pixelSize: 14
      }

      Text {
        id: toBtc
        color: "#ffa500"
        text: qsTr("0.000000000")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 15
        anchors.rightMargin: 10
        anchors.top: marketTitle.bottom
        anchors.left: btcTitle.right
        font.pixelSize: 14
      }

      Text {
        id: toEur
        color: "#ffa500"
        text: qsTr("0.00")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.left: eurTitle.right
        anchors.top: toBtcTitle.bottom
        font.pixelSize: 14
      }

      Text {
        id: toGbp
        color: "#ffa500"
        text: qsTr("0.00")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.top: toEurTitle.bottom
        anchors.left: gbpTitle.right
        font.pixelSize: 14
      }

      Text {
        id: toUsd
        color: "#ffa500"
        text: qsTr("0.00")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.left: usdTitle.right
        anchors.top: toGbpTitle.bottom
        font.pixelSize: 14
      }

      Text {
        id: btcTitle
        color: "#ffa500"
        text: qsTr("₿")
        anchors.left: toBtcTitle.right
        anchors.leftMargin: 10
        anchors.top: marketTitle.bottom
        anchors.topMargin: 15
        font.pixelSize: 14
      }

      Text {
        id: eurTitle
        color: "#008000"
        text: qsTr("€")
        anchors.left: toEurTitle.right
        anchors.leftMargin: 10
        anchors.top: btcTitle.bottom
        anchors.topMargin: 10
        font.pixelSize: 14
      }

      Text {
        id: gbpTitle
        color: "#008000"
        text: qsTr("£")
        anchors.top: eurTitle.bottom
        anchors.topMargin: 10
        anchors.left: toGbpTitle.right
        anchors.leftMargin: 10
        font.pixelSize: 14
      }

      Text {
        id: usdTitle
        color: "green"
        text: qsTr("$")
        anchors.top: gbpTitle.bottom
        anchors.topMargin: 10
        anchors.left: toUsdTitle.right
        anchors.leftMargin: 10
        font.pixelSize: 14
      }
    }

    Rectangle {
      id: economicBox
      x: 110
      width: 340
      height: 125
      color: "#00000000"
      radius: 5
      anchors.horizontalCenter: parent.horizontalCenter
      anchors.top: marketBox.bottom
      anchors.topMargin: 20
      Text {
        id: bankingTitle
        width: 50
        height: 14
        color: "#dddddd"
        text: qsTr("ECONOMIC")
        anchors.leftMargin: 15
        font.underline: false
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: parent.top
        font.pixelSize: 16
      }

      Text {
        id: totalSupplyTitle
        width: 100
        color: "#dddddd"
        text: qsTr("TOTAL SUPPLY:")
        anchors.leftMargin: 20
        anchors.topMargin: 15
        anchors.top: bankingTitle.bottom
        anchors.left: parent.left
        font.pixelSize: 14
      }

      Text {
        id: nodeHeightTitle1
        width: 100
        color: "#dddddd"
        text: "TOTAL BANKED:"
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: totalSupplyTitle.bottom
        font.pixelSize: 14
      }

      Text {
        id: blockchainHeightTitle1
        width: 100
        color: "#dddddd"
        text: qsTr("TOTAL ACTIVE:")
        anchors.leftMargin: 20
        anchors.topMargin: 10
        anchors.top: nodeHeightTitle1.bottom
        anchors.left: parent.left
        font.pixelSize: 14
      }

      Text {
        id: walletHeight1
        color: "#ffa500"
        text: qsTr("123,456,789.000000")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 15
        anchors.rightMargin: 10
        anchors.top: bankingTitle.bottom
        anchors.left: totalSupplyTitle.right
        font.pixelSize: 14
      }

      Text {
        id: nodeHeight1
        color: "#ffa500"
        text: qsTr("123,456,789.000000")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.left: nodeHeightTitle1.right
        anchors.top: walletHeight1.bottom
        font.pixelSize: 14
      }

      Text {
        id: blockchainHeight1
        color: "#ffa500"
        text: qsTr("123,456,789.000000")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.leftMargin: 10
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.top: nodeHeight1.bottom
        anchors.left: blockchainHeightTitle1.right
        font.pixelSize: 14
      }
      border.color: "#444444"
    }


    Rectangle {
      id: balanceBox
      x: 267
      width: 285
      height: 125
      color: "#00000000"
      radius: 5
      anchors.top: title.bottom
      anchors.topMargin: 50
      anchors.right: parent.right
      anchors.rightMargin: 20
      border.color: "#444444"
      Text {
        id: heightTitle1
        width: 50
        height: 14
        color: "#dddddd"
        text: qsTr("BALANCE")
        anchors.leftMargin: 15
        anchors.left: parent.left
        font.underline: false
        anchors.topMargin: 10
        font.pixelSize: 16
        anchors.top: parent.top
      }

      Text {
        id: walletHeightTitle1
        width: 115
        color: "#dddddd"
        text: qsTr("AVAILABLE")
        anchors.leftMargin: 20
        anchors.left: parent.left
        anchors.topMargin: 15
        font.pixelSize: 14
        anchors.top: heightTitle1.bottom
      }

      Text {
        id: nodeHeightTitle2
        width: 115
        color: "#dddddd"
        text: qsTr("LOCKED")
        anchors.leftMargin: 20
        anchors.left: parent.left
        anchors.topMargin: 10
        font.pixelSize: 14
        anchors.top: walletHeightTitle1.bottom
      }

      Text {
        id: blockchainHeightTitle2
        width: 115
        height: 17
        color: "#dddddd"
        text: qsTr("LOCKED DEPOSIT")
        anchors.leftMargin: 20
        anchors.left: parent.left
        anchors.topMargin: 10
        font.pixelSize: 14
        anchors.top: nodeHeightTitle2.bottom
      }

      Text {
        id: walletHeight2
        color: "#ffa500"
        text: qsTr("100,000.000000")
        anchors.leftMargin: 10
        anchors.left: walletHeightTitle1.right
        anchors.topMargin: 15
        anchors.right: parent.right
        anchors.rightMargin: 10
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        anchors.top: heightTitle1.bottom
      }

      Text {
        id: nodeHeight2
        color: "#ffa500"
        text: qsTr("100,000.000000")
        anchors.leftMargin: 10
        anchors.left: nodeHeightTitle2.right
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        anchors.top: walletHeight2.bottom
      }

      Text {
        id: blockchainHeight2
        color: "#ffa500"
        text: qsTr("100,000.000000")
        anchors.leftMargin: 10
        anchors.left: blockchainHeightTitle2.right
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        font.pixelSize: 14
        horizontalAlignment: Text.AlignHCenter
        anchors.top: nodeHeight2.bottom
      }
    }
  }
}

/*##^##
Designer {
    D{i:2;anchors_y:51}D{i:4;anchors_x:15;anchors_y:56}D{i:5;anchors_x:15;anchors_y:56}
D{i:6;anchors_x:15;anchors_y:56}D{i:7;anchors_x:15;anchors_y:56}D{i:8;anchors_width:80;anchors_x:15;anchors_y:56}
D{i:9;anchors_width:80;anchors_x:15;anchors_y:56}D{i:10;anchors_width:80;anchors_x:15;anchors_y:56}
D{i:3;anchors_x:32;anchors_y:79}D{i:12;anchors_x:15;anchors_y:56}D{i:13;anchors_x:15;anchors_y:56}
D{i:14;anchors_x:15;anchors_y:56}D{i:15;anchors_width:80;anchors_x:15;anchors_y:56}
D{i:16;anchors_width:80;anchors_x:15;anchors_y:56}D{i:11;anchors_y:79}D{i:18;anchors_x:15;anchors_y:56}
D{i:19;anchors_x:15;anchors_y:56}D{i:20;anchors_x:15;anchors_y:56}D{i:21;anchors_x:15;anchors_y:56}
D{i:22;anchors_x:15;anchors_y:56}D{i:23;anchors_width:80;anchors_x:15;anchors_y:56}
D{i:24;anchors_width:80;anchors_x:15;anchors_y:56}D{i:25;anchors_width:80;anchors_x:15;anchors_y:56}
D{i:26;anchors_width:80;anchors_x:15;anchors_y:56}D{i:27;anchors_x:86;anchors_y:39}
D{i:28;anchors_x:86;anchors_y:59}D{i:29;anchors_x:90;anchors_y:59}D{i:30;anchors_x:90;anchors_y:111}
D{i:32;anchors_x:15;anchors_y:56}D{i:33;anchors_x:15;anchors_y:56}D{i:34;anchors_x:15;anchors_y:56}
D{i:35;anchors_x:15;anchors_y:56}D{i:36;anchors_width:80;anchors_x:15;anchors_y:56}
D{i:37;anchors_width:80;anchors_x:15;anchors_y:56}D{i:38;anchors_width:80;anchors_x:15;anchors_y:56}
D{i:31;anchors_x:32;anchors_y:79}
}
##^##*/

