import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3

import "model.js" as Carcassonne

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Carcassone")
    Rectangle {
        id: appWindow
        state: "start"

        anchors.fill: parent

        states: [
            State {
                name: "newGame"
                PropertyChanges {target: newGameScreen; visible: true}
                PropertyChanges {target: startScreen; visible: false}
                PropertyChanges {target: playingScreen; visible: false}
            },
            State {
                name: "start"
                PropertyChanges {target: newGameScreen; visible: false}
                PropertyChanges {target: startScreen; visible: true}
                PropertyChanges {target: playingScreen; visible: false}
            },
            State {
                name: "playing"
                PropertyChanges {target: newGameScreen; visible: false}
                PropertyChanges {target: startScreen; visible: false}
                PropertyChanges {target: playingScreen; visible: true}
            }
        ]

        NewGame {
            id: newGameScreen
            model: Carcassonne.model;
            onGameStarted: {
                appWindow.state = "playing";
            }
        }

        StartScreen {
            id: startScreen

            onNewGame: {
                appWindow.state = "newGame"
            }
        }

        TabView {
            id: playingScreen
            anchors.fill: parent
            frameVisible: false

            Tab {
                title: "Rankings"
                Score {
                    id: scoreScreen
                    model: Carcassonne.model;

                    onEndGame: {
                        console.log("Game ended.")
                    }
                }
            }
            Tab {
                title: "Submit score"
                Submit {
                    id: submitScreen
                    model: Carcassonne.model;

                    onSubmit: {
                        console.log("Submitted")
                    }
                }
            }
        }
    }
}
