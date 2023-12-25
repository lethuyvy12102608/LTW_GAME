package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter

public class Cart {
    private int id;
    public ArrayList<CartItem> cartItem;
    private Account account;
    private boolean status;

}
