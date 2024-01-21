package com.example.ltw_game.controller;

import com.example.ltw_game.dao.ProductDAO;
import com.example.ltw_game.model.Cart;
import com.example.ltw_game.model.CartItem;
import com.example.ltw_game.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;


@WebServlet("/cart")
public class CartController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        HttpSession session = request.getSession();
        Cart cart =  (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        String action = request.getParameter("action");
        if (action == null) {
            request.getRequestDispatcher("page/cart.jsp").forward(request, response);
        } else {
            switch (action) {
                case "get":
                    request.getRequestDispatcher("page/cart.jsp").forward(request, response);
                    break;
                case "add":
                    addToCart(cart, request, response);
                    break;
                case "delete":
                    delete(request, response);
                    break;
                case "post":
                    String id = request.getParameter("id");
                    ProductDAO productDAO = new ProductDAO();
                    Product product = productDAO.getProductById(id);
                    CartItem cartItem = new CartItem(product, 1);
                    double totalPrice = cartItem.getQuantity() * cartItem.getProduct().getPrice();
                    cartItem.setTotalPrice((double) Math.round(totalPrice * 100) / 100);
                    cart.addToCart(cartItem);
                    session.setAttribute("cart", cart);
                    request.getRequestDispatcher("page/cart.jsp").forward(request, response);
                    break;
                default:
                    break;
            }
        }
        session.setAttribute("size", cart.getSize());
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    public void delete(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        String id = request.getParameter("id");
        cart.removeToCart(Integer.parseInt(id));
        session.setAttribute("cart", cart);
        response.sendRedirect("/cart");
    }

    public void addToCart(Cart cart, HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession(true);

        String tnum = request.getParameter("num").trim();
        String tid = request.getParameter("id");
        int num, id;
        try {
            num = Integer.parseInt(tnum);
            id = Integer.parseInt(tid);
            if ((num == -1) && (cart.getQuantityById(id)) <= 1) {
                cart.removeToCart(id);
            } else {
                ProductDAO productDAO = new ProductDAO();
                Product p = productDAO.getProductById(tid);
                double price = p.getPrice();
                CartItem ci = new CartItem(p, num);
                cart.addToCart(ci);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        List<CartItem> list = cart.getCartItems();
        session.setAttribute("cart", cart);
        session.setAttribute("size", list.size());

        response.sendRedirect("/cart");
    }

}
