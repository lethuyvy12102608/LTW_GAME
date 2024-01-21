package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Account {
    private int id;
    private String email;
    private String password;
    private String fullName;
    private String phone;
    private String address;
    private String role;
    private boolean status;

    public Account() {
    }

    public Account(int id, String email, String password, String fullName, String phone, String address, String role, boolean status) {
        this.id = id;
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.phone = phone;
        this.address = address;
        this.role = role;
        this.status = status;
    }
}
