package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Account {
    private int id;
    private String role;
    private String email;
    private String password;
    private String fullName;
    private String phone;
    private String address;
    private boolean status;

}
