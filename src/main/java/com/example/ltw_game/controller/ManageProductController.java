package com.example.ltw_game.controller;

import com.example.ltw_game.dao.ProductDAO;
import com.example.ltw_game.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;


@WebServlet("/admin/manageProduct")
public class ManageProductController extends HttpServlet {

    ProductDAO productDAO;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        productDAO = new ProductDAO();

        List<Product> listProduct = productDAO.getAllProduct();
        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("html/manageProduct.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }


}
