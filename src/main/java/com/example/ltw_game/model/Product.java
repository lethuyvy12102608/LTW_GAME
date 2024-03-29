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

    private double price;

    private double discount;

    private boolean status;

    private String brand;

    public Product(int id, Category category, String title, String description, String detail, String image, double price, double discount, boolean status, String brand) {
        this.id = id;
        this.category = category;
        this.title = title;
        this.description = description;
        this.detail = detail;
        this.image = image;
        this.price = price;
        this.discount = discount;
        this.status = status;
        this.brand = brand;
    }

    public Product() {
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", category=" + category +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", detail='" + detail + '\'' +
                ", image='" + image + '\'' +
                ", price=" + price +
                ", discount=" + discount +
                ", status=" + status +
                ", brand='" + brand + '\'' +
                '}';
    }
}
