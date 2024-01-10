package com.example.ltw_game.dao;

import com.example.ltw_game.model.Category;
import com.example.ltw_game.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    CategoryDAO categoryDAO = new CategoryDAO();

    public List<Product> getAllProduct() {
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8),
                        rs.getDouble(9), rs.getBoolean(10)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    public Product getProductById(String id) {
        Product product = null;
        String query = "select * from product where id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                product = new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8),
                        rs.getDouble(9), rs.getBoolean(10));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }

    public List<Product> getProductByCategoryId(String cid) {
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where category_id = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8),
                        rs.getDouble(9), rs.getBoolean(10)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }


    public List<Product> getProductByBrand(String brand) {
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where brand = ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, brand);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8),
                        rs.getDouble(9), rs.getBoolean(10)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where title like ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch +"%");
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getDouble(8),
                        rs.getDouble(9), rs.getBoolean(10)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }



}
