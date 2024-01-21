package com.example.ltw_game.filter;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

public class RoleBasedFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;

        // get email and password
        String email = httpServletRequest.getParameter("email");
        String password = httpServletRequest.getParameter("password");

    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }

    private boolean isUserRole(String email, String password) {

        return true;
    }

}
