package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Category extends BaseEntity {

    private String title;

    private String description;

    private boolean status;

}
