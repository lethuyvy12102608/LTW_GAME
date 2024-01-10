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


@WebServlet("/search")
public class SearchController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        String txtSearch = request.getParameter("text");
        ProductDAO productDAO = new ProductDAO();
        List<Product> list = productDAO.searchByName(txtSearch);

        request.setAttribute("listProduct", list);
        request.getRequestDispatcher("page/home.jsp").forward(request, response);

    }
}
