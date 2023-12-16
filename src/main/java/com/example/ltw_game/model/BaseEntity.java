package com.example.ltw_game.model;

import java.io.Serializable;
import java.util.Date;


public class BaseEntity implements Serializable {

    private static final long SERIAL_VERSION_UID = 1L;

    private long id;

    private long version;

    private Date createdOn;

    private Date updatedOn;

}
