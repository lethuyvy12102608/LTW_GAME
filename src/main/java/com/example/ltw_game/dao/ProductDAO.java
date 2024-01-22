package com.example.ltw_game.dao;

import com.example.ltw_game.model.Category;
import com.example.ltw_game.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;
    CategoryDAO categoryDAO = new CategoryDAO();
    Category category = new Category();

    public List<Product> getAllProduct() {
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getDouble(7), rs.getDouble(8), rs.getBoolean(9), rs.getString(10)));
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
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getDouble(7), rs.getDouble(8), rs.getBoolean(9), rs.getString(10));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return product;
    }

    public List<Product> getProductByCategoryId(String cid) {
        List<Product> products = new ArrayList<Product>();
        String query = "select * from product where category_id= ?";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getDouble(7), rs.getDouble(8), rs.getBoolean(9), rs.getString(10)));
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
                new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getDouble(7), rs.getDouble(8), rs.getBoolean(9), rs.getString(10));
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
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1), new Category(), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getDouble(7), rs.getDouble(8), rs.getBoolean(9), rs.getString(10)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return products;
    }

    public void deleteProduct(String id) {
        String query = "DELETE FROM product where id = ?";

        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }

    public void editProduct() {


    }


    public void saveProduct(Product product) {
        String query = "INSERT INTO product (id,category_id, title, description, detail, image, price, discount, status) value(?,?,?,?,?,?,?,?,?)";
        try {
            conn = new ConnectDB().getDBConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product.getId());
            ps.setInt(2, product.getCategory().getId());
            ps.setString(3, product.getTitle());
            ps.setString(4, product.getDescription());
            ps.setString(5, product.getDetail());
            ps.setString(6, product.getImage());
            ps.setDouble(7, product.getPrice());
            ps.setDouble(8, product.getDiscount());
            ps.setBoolean(9, product.isStatus());

            ps.executeUpdate();


        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
