package com.example.ltw_game.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
    public Connection getDBConnection() {
        String connectUrl = "jdbc:mysql://localhost:3306/gamestore?useUnicode=true&characterEncoding=UTF-8";
        String username = "root";
        String password = "121026082001Vy";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connect = DriverManager.getConnection(connectUrl, username, password);
            return connect;
        } catch (Exception e) {
            System.err.println("connect fail!");
            e.printStackTrace();
        }
        return null;
    }
}