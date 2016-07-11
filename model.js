var Player = function(name, color) {
    this.name = name;
    this.color = color;
    this.score = 0;
}

var Model = function() {

    this.MAX_PLAYERS = 5;

    this.colors = [
             "red",
             "green",
             "blue",
             "yellow",
             "black"
         ];

    // Loads up components for faster UI loading
    this.newGame = function () {
        if (!this.newPlayerUI) {
            this.newPlayerUI = Qt.createComponent("NewPlayer.qml");
        }

        if (!this.playerUI) {
            this.playerUI = Qt.createComponent("Player.qml")
        }

        this.playersUIs = [];
        this.players = [];
    };

    // Creates a new Player, UI and data
    // Returns true if there is room for more players
    this.newPlayer = function (ui_parent) {
        if (this.playersUIs.length >= this.MAX_PLAYERS)
            return false;

        var placeholder_name = "Player " + (this.playersUIs.length + 1);
        this.playersUIs.push(this.newPlayerUI.createObject(ui_parent, {"name": placeholder_name, "color": this.colors[this.playersUIs.length]}));

        return this.playersUIs.length < this.MAX_PLAYERS;
    };

    this.startGame = function() {
        // TODO: Check that names and colors are unique between players
        var self = this;
        this.playersUIs.forEach(function(player) {
            self.players.push(new Player(player.name, player.color));
        });
    };

}

var model = new Model();
