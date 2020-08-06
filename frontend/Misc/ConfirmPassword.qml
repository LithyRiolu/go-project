import QtQuick 2.12
import QtQuick.Controls 2.12

Dialog {
  id: dialogConfirmPassword
  title: "Confirm password"
  standardButtons: StandardButton.Cancel | StandardButton.Ok
  width: 250
  height: 120

  property bool walletIsImporting: false

  Text {
    id: textDescriptionConfirmPassword
    text: "Re-type your new password:"
    font.family: "Arial"
  }

  Rectangle {
    id: rectangleTextInputConfirmPassword
    color: "#bbbbbb"
    height: 25
    anchors.top: textDescriptionConfirmPassword.bottom
    anchors.topMargin: 12
    anchors.left: textDescriptionConfirmPassword.left
    anchors.leftMargin: 0
    anchors.right: parent.right
    anchors.rightMargin: 10
    radius: 3

    TextInput {
      id: textInputConfirmPassword
      echoMode: TextInput.Password
      anchors.fill: parent
      color: "#444444"
      text: ""
      rightPadding: 5
      leftPadding: 5
      verticalAlignment: Text.AlignVCenter
      clip: true
      font.family: "Arial"
    }
  }

  function show(isImporting) {
    walletIsImporting = isImporting
    dialogConfirmPassword.open()
    textInputConfirmPassword.text = ""
    textInputConfirmPassword.focus = true
  }

  onAccepted: {
    if (walletIsImporting) {
      rectangleImportWalletFromKeys.enteredPasswordConfirmation(
            textInputConfirmPassword.text)
    } else {
      rectangleCreateWallet.enteredPasswordConfirmation(
            textInputConfirmPassword.text)
    }
  }
}
