package com.example.ltw_game.controller;

import com.example.ltw_game.dao.AccountDAO;
import com.example.ltw_game.model.Account;
import com.example.ltw_game.utils.PasswordHashingUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("page/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        AccountDAO dao = new AccountDAO();
        Account account = dao.getAccountByEmail(email);

        if (account == null) {
            request.setAttribute("error", "Email không tồn tại");
            request.getRequestDispatcher("page/login.jsp").forward(request, response);
        } else {
            if (!PasswordHashingUtil.checkPassword(password, account.getPassword())) {
                request.setAttribute("error", "Mật khẩu không chính xác");
                request.getRequestDispatcher("page/login.jsp").forward(request, response);
            }
            HttpSession session = request.getSession();
            Account accountSession = new Account();
            accountSession.setFullName(account.getFullName());
            accountSession.setEmail(account.getEmail());
            accountSession.setRole(account.getRole());
            session.setAttribute("account", accountSession);

            if (account.getRole().equals("USER")) {
                response.sendRedirect("/home");
            } else {
                response.sendRedirect("/admin");
            }

        }
    }

}