import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

Item {
    ColumnLayout {
        id: column
        anchors.fill: parent

        anchors.margins: 50
        anchors.topMargin: 80
        anchors.bottomMargin: 80
        spacing: 80

        Button {
            text: "Start Game"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            text: "Join Game"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }
    }
}
