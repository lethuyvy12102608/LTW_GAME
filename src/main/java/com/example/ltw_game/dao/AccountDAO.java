package com.example.ltw_game.dao;

import com.example.ltw_game.model.Account;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AccountDAO {

    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public boolean validate(Account account) {
        String query = "SELECT * FROM account WHERE email = ? AND password = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, account.getEmail());
            ps.setString(2, account.getPassword());
            try (ResultSet resultSet = ps.executeQuery()) {
                return resultSet.next(); // Account exists if there is a result
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Account> getAllAccount() {
        List<Account> accounts = new ArrayList<Account>();
        String query = "select * from account";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                accounts.add(new Account(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return accounts;
    }

    public Account getAccountById(String id) {
        Account account = new Account();
        String query = "select * from account where id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                account = new Account(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return account;
    }

    public Account getAccountByEmail(String email) {
        Account account = null;
        String query = "select * from account where email = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                account = new Account(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return account;
    }

    public boolean register(Account account) {
        String query = "insert into gamestore.account(email, password, fullName, phone, role, status) values(?,?,?,?,?,1)";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, account.getEmail());
            ps.setString(2, account.getPassword());
            ps.setString(3, account.getFullName());
            ps.setString(4, account.getPhone());
            ps.setString(5, account.getRole());
            int rowCount = ps.executeUpdate();
            return rowCount > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
