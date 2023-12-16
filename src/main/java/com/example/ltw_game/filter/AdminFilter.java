//package com.example.ltw_game.filter;
//
//import com.example.ltw_game.dao.UserDAO;
//import com.example.ltw_game.model.User;
//import jakarta.servlet.*;
//import jakarta.servlet.annotation.WebFilter;
//import jakarta.servlet.http.Cookie;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//
//import java.io.IOException;
//
//@WebFilter("/admin/*")
//public class AdminFilter implements Filter {
//
//    public AdminFilter() {
//
//    }
//
//    public void destroy() {
//        // TODO Auto-generated method stub
//    }
//
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//            throws IOException, ServletException {
//        HttpServletRequest httpRequest = (HttpServletRequest) request;
//        HttpServletResponse httpResponse = (HttpServletResponse) response;
//
//        HttpSession session = httpRequest.getSession(false);
//
//        if (session != null && session.getAttribute("loginId") != null) {
//            User user = new UserDAO().getUserById((String) session.getAttribute("loginId"));
//            request.setAttribute("userLogin", user);
//            if (user.getRole().equals("admin")) {
//                chain.doFilter(request, response);
//            } else {
//                httpRequest.getRequestDispatcher("/Warning.jsp").forward(request, response);
//            }
//        } else {
//            // Chuyển hướng yêu cầu đến trang "/Login.jsp" hoặc trang đăng nhập khác
//            httpResponse.sendRedirect("/Login.jsp");
//        }
//
//
//    }
//}