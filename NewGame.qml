import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

/*
  Manages setup of players and other configurations before
  starting the match.

  The game begins when signal gameStarted() is fired.
  */

Item {
    id: menu
    anchors.fill: parent

    property var model;

    signal gameStarted()

    Component.onCompleted: {
        this.model.newGame();
        this.model.newPlayer(players);
        this.model.newPlayer(players);
    }

    Layout.fillWidth: true
    ColumnLayout {
        id: column
        anchors.fill: parent
        anchors.margins: column.spacing

        spacing: 20;

        Text {
            id: labelNewGame;
            text: "New Game";
            anchors.top: parent.top;
            anchors.topMargin: 30;
            font.bold: true;
            font.pointSize: 27;
            horizontalAlignment: Text.AlignHCenter;
            Layout.fillWidth: true
        }

        Column {
            id: players
            Layout.fillWidth: true

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: labelNewGame.bottom
            anchors.topMargin: 20
            anchors.bottomMargin: 50
            anchors.leftMargin: 20
            anchors.rightMargin: 20
        }

        Button {
            id: addButton
            text: "Add Player"
            Layout.fillWidth: true
            anchors.top: players.bottom
            onClicked: {
                var room_for_more = menu.model.newPlayer(players);

                addButton.enabled = room_for_more;
            }
        }

        Item { Layout.fillHeight: true }

        Button {
            text: "Start Game"
            Layout.fillWidth: true
            onClicked: {
                model.startGame();
                menu.gameStarted();
            }
        }
    }
}
