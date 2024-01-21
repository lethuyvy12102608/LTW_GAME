package com.example.ltw_game.controller;

import com.example.ltw_game.dao.CategoryDAO;
import com.example.ltw_game.dao.ProductDAO;
import com.example.ltw_game.model.Category;
import com.example.ltw_game.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/shop")
public class ShopController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        ProductDAO productDAO = new ProductDAO();
        List<Product> listProduct = productDAO.getAllProduct();

        CategoryDAO categoryDAO = new CategoryDAO();
        List<Category> categoryList = categoryDAO.getAllCategory();

        request.setAttribute("categoryList", categoryList);
        request.setAttribute("listProduct", listProduct);

        request.getRequestDispatcher("page/shop.jsp").forward(request, response);
    }
}
