//package com.example.ltw_game.controller;
//
//import com.example.ltw_game.dao.UserDAO;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//
//
//@WebServlet("/login")
//public class LoginController extends HttpServlet {
//    private static final long serialVersionUID = 1L;
////    private UserDAO userDAO;
////
////    public void init() {
////        userDAO = new UserDAO();
////    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.getRequestDispatcher("page/login.jsp").forward(request, response);
//    }
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html;charset=UTF-8");
//        request.setCharacterEncoding("utf-8");
//        PrintWriter out = response.getWriter();
//        String username = request.getParameter("username");
//        String password = request.getParameter("password");
//        User user = new User();
//        UserDAO userDAO = new UserDAO();
//        user.setUsername(username);
//        user.setPassword(password);
//
//        if (userDAO.validate(user)) {
//            HttpSession session = request.getSession();
//            String role = userDAO.getUserRoleByUsername(username);
//            session.setAttribute("user", user);
//            session.setAttribute("isLogin", "true");
//            session.setAttribute("role", role);
////            response.sendRedirect("check");
//        } else {
//            response.sendRedirect("page/loginError.jsp");
//        }
//    }
//
//}