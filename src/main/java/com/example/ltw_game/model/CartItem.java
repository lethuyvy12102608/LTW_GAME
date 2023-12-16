package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartItem extends BaseEntity {

    private Cart cart;

    private Product product;

    private int quantity;

    private boolean status;

}
