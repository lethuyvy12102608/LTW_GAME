package com.example.ltw_game.dao;

import com.example.ltw_game.model.Category;
import com.example.ltw_game.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public List<Category> getAllCategory() {
        List<Category> categories = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                categories.add(new Category(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return categories;
    }

    public Category getCategoryById(int id) {
        Category category = new Category();
        String query = "select * from categogy where id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                category = new Category();
                category.setId(rs.getInt(1));
                category.setTitle(rs.getString("title"));
                category.setDescription(rs.getString("description"));
                category.setStatus(rs.getBoolean("status"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return category;
    }
}
