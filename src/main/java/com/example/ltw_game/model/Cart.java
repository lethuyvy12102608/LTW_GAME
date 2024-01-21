package com.example.ltw_game.model;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;

@Getter
@Setter

public class Cart {
    private int id;
    public ArrayList<CartItem> cartItems;
    private Account account;
    private int userId;
    private boolean status;

    public Cart() {
        cartItems = new ArrayList<>();
    }

    public Cart(int userId) {
        this.cartItems = new ArrayList<CartItem>();
        this.userId = userId;
    }

    private CartItem getItemById(int id) {
        for (CartItem item : cartItems) {
            if (item.getProduct().getId() == id) {
                return item;
            }
        }
        return null;
    }

    public int getQuantityById(int id) {
        return getItemById(id).getQuantity();
    }

//    public void addToCart(int id, CartItem cartItem, int quantity) {
//        int count = 0;
//        for (CartItem ct : cartItems) {
//            if (ct.getProduct().getId() == id) {
//                ct.setQuantity(ct.getQuantity() + quantity);
//                count++;
//            }
//        }
//        if (count == 0) {
//            cartItems.add(cartItem);
//        }
//
//    }


//    public void addToCart(CartItem ci) {
//        if (getItemById(ci.getProduct().getId()) != null) {
//            CartItem i = getItemById(ci.getProduct().getId());
//            i.setQuantity((i.getQuantity() + ci.getQuantity()));
//        } else {
//            cartItems.add(ci);
//        }
//    }


    public void addToCart(CartItem cartItem) {
        for (CartItem ci : cartItems) {
            if (ci.getProduct().getId() == cartItem.getProduct().getId()) {
                ci.addQuantity(cartItem.getQuantity());
                double totalPrice = ci.getQuantity() * ci.getProduct().getPrice();
                ci.setTotalPrice((double) Math.round(totalPrice * 100) / 100);
                return;
            }
        }
        this.cartItems.add(cartItem);
    }

    public void removeToCart(int id) {
        for (CartItem ci : cartItems) {
            if (ci.getProduct().getId() == id) {
                cartItems.remove(ci);
                return;
            }
        }
    }

    public double getTotalPrice() {
        double result = 0;
        for (CartItem c : cartItems) {
            result += c.getQuantity() * (c.getProduct().getPrice());
        }
        return result;
    }

    public int getSize() {
        int result = 0;
        for (CartItem ci : cartItems) {
            result += ci.getQuantity();
        }
        return result;
    }
}
