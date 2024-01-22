package com.example.ltw_game.controller;


import com.example.ltw_game.dao.AccountDAO;
import com.example.ltw_game.dao.ProductDAO;
import com.example.ltw_game.model.Account;
import com.example.ltw_game.model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/manageAccount")
public class ManageAccountController extends HttpServlet {


    AccountDAO accountDAO;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");

        accountDAO = new AccountDAO();

        List<Account> accountList = accountDAO.getAllAccount();
        request.setAttribute("accountList", accountList);
        request.getRequestDispatcher("admin/html/manageAccount.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

}
