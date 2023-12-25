package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderItem {

    private Order order;

    private Product product;

    private double price;

    private double discount;

    private int quantity;

}
