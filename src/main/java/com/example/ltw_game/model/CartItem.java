package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartItem {

    private Cart cart;

    private Product product;

    private int quantity;

    private double totalPrice;

    private boolean status;

    public CartItem() {
    }

    public CartItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "CartItem{" +
                "cart=" + cart +
                ", product=" + product +
                ", quantity=" + quantity +
                ", status=" + status +
                '}';
    }

    public boolean addQuantity(int quantity) {
        this.quantity += quantity;
        return true;
    }

}
