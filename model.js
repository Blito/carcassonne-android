var Player = function(name, color) {
    this.name = name;
    this.color = color;
    this.score = 0;
}

var Model = function() {
    this.newGame = function () {
        console.log("Model: New Game");
        if (!this.newPlayerUI) {
            this.newPlayerUI = Qt.createComponent("NewPlayer.qml");
            console.log(this.newPlayerUI);
        }

        if (!this.playerUI) {
            this.playerUI = Qt.createComponent("Player.qml")
        }

        this.players = []
    };

    this.addPlayer = function (name, color) {
        this.players.push(new Player(name, color));
    };
}

var model = new Model();
