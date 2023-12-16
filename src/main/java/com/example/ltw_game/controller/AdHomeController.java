//package com.example.ltw_game.controller;
//
//import com.example.ltw_game.model.User;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//
//@WebServlet("/admin/*")
//public class AdHomeController extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        User user = (User) request.getSession().getAttribute("user");
//
//        if (user != null) {
//            if ("admin".equals(user.getRole())) {
//                // User is logged in and has the role 'admin'
//                request.getRequestDispatcher("admin/adminhome.jsp").forward(request, response);
//            } else {
//                // Redirect to login page if the user doesn't have the correct role
//                response.sendRedirect("login.jsp");
//            }
//        } else {
//            // Redirect to login page if the user is not logged in
//            response.sendRedirect("login.jsp");
//        }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        doGet(req, resp);
//    }
//}
