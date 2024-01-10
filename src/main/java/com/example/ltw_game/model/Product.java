package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Product {
    private int id;

    private Category category;

    private String title;

    private String description;

    private String detail;

    private String image;

    private String brand;

    private double price;

    private double discount;

    private boolean status;

    public Product(int id, Category category, String title, String description, String detail, String image, String brand, double price, double discount, boolean status) {
        this.id = id;
        this.category = category;
        this.title = title;
        this.description = description;
        this.detail = detail;
        this.image = image;
        this.brand = brand;
        this.price = price;
        this.discount = discount;
        this.status = status;
    }
}
