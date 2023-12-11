package src.main.java.com.example.ltw_game.model;

public class Game {
    int gameId;
    String title;
    double price;
    String genre;
    String platform;

    public Game(int gameId, String title, double price, String genre, String platform) {
        this.gameId = gameId;
        this.title = title;
        this.price = price;
        this.genre = genre;
        this.platform = platform;
    }
}
