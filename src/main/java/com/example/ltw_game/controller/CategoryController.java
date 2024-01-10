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

@WebServlet("/category")
public class CategoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");


        CategoryDAO categoryDAO = new CategoryDAO();
        ProductDAO productDAO = new ProductDAO();
        String id = request.getParameter("categoryId");

        List<Category> categoryList = categoryDAO.getAllCategory();
        List<Product> productList = productDAO.getProductByCategoryId(id);
        List<Product> productsListAll = productDAO.getAllProduct();

//        List<Product> productByBrand = productDAO.getProductByBrand(brand);

        request.setAttribute("categoryList", categoryList);
        request.setAttribute("productsListAll", productList);
        request.getRequestDispatcher("page/category.jsp").forward(request, response);

    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
