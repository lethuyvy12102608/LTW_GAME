package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class Order extends BaseEntity {

    private Account account;

    private String fullName;

    private String address;

    private String phone;

    private Date orderDate;

    private double totalAmount;

    private String progress;

    private String note;

    private String image;

    private boolean status;

}
