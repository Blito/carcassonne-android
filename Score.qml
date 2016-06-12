import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.3

Item {
    id: score
    anchors.fill: parent

    Layout.fillWidth: true

    ColumnLayout {
        id: column
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.margins: column.spacing

        anchors.bottomMargin: 10
        anchors.rightMargin: 30
        anchors.leftMargin: 30

        Text {
            id: rankings;
            text: "Rankings";
            anchors.top: parent.top;
            anchors.topMargin: 30;
            font.bold: true;
            font.pointSize: 27;
            horizontalAlignment: Text.AlignHCenter;
            Layout.fillWidth: true
        }

        GridLayout {
            id: grid
            Layout.fillWidth: true
            columns: 3

            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: rankings.bottom
            anchors.topMargin: 20
            anchors.bottomMargin: 20
            anchors.leftMargin: 20
            anchors.rightMargin: 20

            // Player 1
            Rectangle { Layout.fillHeight: true; Layout.fillWidth: true; Layout.maximumHeight: 20; Layout.maximumWidth: 20; Layout.minimumWidth: 20; color: "red" }
            Text { text: "Ruso"; font.bold: true; Layout.fillWidth: false }
            Text { text: "33"; horizontalAlignment: Text.AlignRight; Layout.fillWidth: true; anchors.right: parent.right }

            // Player 2
            Rectangle { Layout.fillHeight: true; Layout.fillWidth: true; Layout.maximumHeight: 20; Layout.maximumWidth: 20; Layout.minimumWidth: 20; color: "blue" }
            Text { text: "Lauta"; font.bold: true; Layout.fillWidth: false }
            Text { text: "30"; Layout.fillWidth: true; horizontalAlignment: Text.AlignRight; anchors.right: parent.right }

            // Player 3
            Rectangle { Layout.fillHeight: true; Layout.fillWidth: true; Layout.maximumHeight: 20; Layout.maximumWidth: 20; Layout.minimumWidth: 20; color: "green" }
            Text { text: "Blito"; font.bold: true; Layout.fillWidth: false }
            Text { text: "25"; horizontalAlignment: Text.AlignRight; Layout.fillWidth: true; anchors.right: parent.right }
        }

        Item { Layout.fillHeight: true }

        Button {
            text: "End Game"
            Layout.fillWidth: true
        }
    }
}
