import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

Item {
    id: menu
    anchors.fill: parent

    signal startGame()

    Layout.fillWidth: true
    ColumnLayout {
        id: column
        anchors.fill: parent
        anchors.margins: column.spacing


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

        GridLayout {
            id: grid
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            columns: 2

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: labelNewGame.bottom
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            anchors.leftMargin: 20
            anchors.rightMargin: 20

            // Player 1
            TextField { text: "Ruso"; placeholderText: "Jugador 1"; Layout.fillWidth: false; z: 1 }
            Rectangle { Layout.fillHeight: true; Layout.fillWidth: true; Layout.maximumHeight: 20; Layout.maximumWidth: 40; Layout.minimumWidth: 40; color: "red"; anchors.right: parent.right }

            // Player 2
            TextField { text: "Lauta"; placeholderText: "Jugador 2"; Layout.fillWidth: false; z: 1 }
            Rectangle { Layout.fillHeight: true; Layout.fillWidth: true; Layout.maximumHeight: 20; Layout.maximumWidth: 40; Layout.minimumWidth: 40; color: "blue"; anchors.right: parent.right }

            // Player 3
            TextField { placeholderText: "Jugador 3"; Layout.fillWidth: false; z: 1 }
            Rectangle { Layout.fillHeight: true; Layout.fillWidth: true; Layout.maximumHeight: 20; Layout.maximumWidth: 40; Layout.minimumWidth: 40; color: "green"; anchors.right: parent.right }

            Button {
                text: "Add Player"
                Layout.fillWidth: true
                Layout.rowSpan: 2
                anchors.right: parent.right
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
