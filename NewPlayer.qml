import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1

/**
  A one-line UI thingy that lets the user input the color and name of a player.
  */
Item {
    id: newPlayer;

    property color color
    property string name

    width: layout.width;
    height: layout.height;

    RowLayout {

        id: layout;
        spacing: 20;

        TextField {
            id: textField;
            placeholderText: newPlayer.name;
            onEditingFinished: {
                if (text !== '') {
                    newPlayer.name = text;
                    console.log(newPlayer.name);
                }
            }
        }

        Rectangle {
            id: colorRect;
            width: 30
            height: 15
            Layout.fillHeight: true;
            Layout.maximumHeight: 40;
            Layout.maximumWidth: 40;

            anchors.topMargin: 40
            color: newPlayer.color;
        }
    }

}
