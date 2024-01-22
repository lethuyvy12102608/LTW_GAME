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

import static java.lang.Double.parseDouble;
import static java.lang.Integer.parseInt;

@WebServlet("/admin/product/add")
public class AddProductController extends HttpServlet {

    ProductDAO productDAO;
    CategoryDAO categoryDAO;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("productId");
        String category_id = request.getParameter("category_id");
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String detail = request.getParameter("detail");
        String image = request.getParameter("image");
        String price = request.getParameter("price");
        String discount = request.getParameter("discount");
        String brand = request.getParameter("brand");

        productDAO = new ProductDAO();
        Product product = productDAO.getProductById(id);
        if (product == null) {
            Product p = new Product(parseInt(id), categoryDAO.getCategoryById(parseInt(category_id)), title, description, detail, image, parseDouble(price), parseDouble(discount), true, brand);
            productDAO.saveProduct(p);
            response.sendRedirect("admin/product/add");
        } else {
            request.setAttribute("error", "ID " + id + " exited");
            request.getRequestDispatcher("admin/html/addProduct.jsp").forward(request, response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}