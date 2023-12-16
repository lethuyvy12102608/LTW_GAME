package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Product extends BaseEntity {

    private Category category;

    private String title;

    private String description;

    private String detail;

    private String image;

    private double price;

    private double discount;

    private boolean status;

}
