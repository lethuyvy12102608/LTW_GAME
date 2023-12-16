package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class Cart extends BaseEntity {

    private Account account;

    private boolean status;

}
