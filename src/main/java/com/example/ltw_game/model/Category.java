package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Category {
    private int id;

    private String title;

    private String description;

    private boolean status;

    public Category() {

    }

    public Category(int id, String title, String description, boolean status) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.status = status;
    }
}
