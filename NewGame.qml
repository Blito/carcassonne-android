import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

Item {
    id: menu
    anchors.fill: parent

    property var model;

    signal startGame()

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

            NewPlayer { id:ruso; name: "Ruso"; color: "red"; }

        }

        Button {
            text: "Add Player"
            Layout.fillWidth: true
            anchors.top: players.bottom
            onClicked: {
                menu.model.newPlayerUI.createObject(players, {"name": "Rusingui", "color": "red"});
            }
        }

        Item { Layout.fillHeight: true }

        Button {
            text: "Start Game"
            Layout.fillWidth: true
            onClicked: menu.startGame()
        }
    }
}
