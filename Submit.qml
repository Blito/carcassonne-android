import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

ScrollView {
    id: menu

    property var model;

    signal submit()

    implicitWidth: 640
    implicitHeight: 400

    horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff

    Item {
        id: content

        width: Math.max(menu.viewport.width, column.implicitWidth + 2 * column.spacing)
        height: Math.max(menu.viewport.height, column.implicitHeight + 2 * column.spacing)

        Layout.fillWidth: true

        ColumnLayout {
            id: column
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.margins: column.spacing

            anchors.rightMargin: 30
            anchors.leftMargin: 30

            // Input for points
            GroupBox {
                id: scoreBox
                title: "Points to add"

                flat: true
                Layout.fillWidth: true

                SpinBox {
                    id: newScore
                    value: 10
                    Layout.fillWidth: true
                    z: 1
                }
            }

            // Players checkboxes
            GroupBox {
                id: players
                flat: true
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                title: "Players"
                Layout.fillWidth: true
                ColumnLayout {
                    anchors.fill: parent
                    CheckBox { text: "Blito"; checked: true }
                    CheckBox { text: "Lauta"; checked: true }
                    CheckBox { text: "Ruso" }
                }
            }

            // Reasons dropdown
            GroupBox {
                id: reasons
                title: "Reason"
                Layout.fillWidth: true
                flat: true
                ColumnLayout {
                    anchors.fill: parent
                    ComboBox {
                        model: ListModel {
                            id: listModel
                            ListElement { text: "City" }
                            ListElement { text: "Road" }
                            ListElement { text: "Cloister" }
                            ListElement { text: "Field" }
                        }
                        Layout.fillWidth: true
                    }
                }
            }

            // Push button to the bottom
            Item {
                Layout.fillHeight: true
            }

            Button {
                text: "Submit"
                Layout.fillWidth: true
                onClicked: menu.submit()
            }
        }
    }
}
