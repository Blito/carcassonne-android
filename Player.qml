import QtQuick 2.1
import QtQuick.Layouts 1.3

/**
  A one-line UI thingy that displays the color, name and score of a player.
  */
Item {
    id: player

    property color color
    property string name
    property int score

    Rectangle {
        Layout.fillHeight: true;
        Layout.fillWidth: true;
        Layout.maximumHeight: 20;
        Layout.maximumWidth: 20;
        Layout.minimumWidth: 20;
        color: player.color;
    }

    Text {
        text: player.name;
        font.bold: true;
        Layout.fillWidth: false;
    }

    Text {
        text: player.score;
        horizontalAlignment: Text.AlignRight;
        Layout.fillWidth: true;
        anchors.right: parent.right;
    }
}
