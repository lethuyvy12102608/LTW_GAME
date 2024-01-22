package com.example.ltw_game.filter;

import com.example.ltw_game.model.Account;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(urlPatterns = {"/admin", "/user/*", "/cart/*", "/checkout/*"},
        initParams = {@WebInitParam(name = "paramName", value = "paramValue")})
public class AuthenticationFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");

        if (account != null) {
            String role = account.getRole();

            if (role.equals("ADMIN") && request.getRequestURI().startsWith("/admin")) {
                filterChain.doFilter(servletRequest, servletResponse);
                return;
            } else if (role.equals("USER") && isUserPath(request.getRequestURI())) {
                filterChain.doFilter(servletRequest, servletResponse);
                return;
            }
            else {
                response.sendRedirect(request.getContextPath() + "/error404");
                return;
            }

        }

        response.sendRedirect(request.getContextPath() + "/login");
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
    private boolean isUserPath(String requestURI) {
        return requestURI.startsWith("/user/") || "/cart/".equals(requestURI) || "/checkout/".equals(requestURI);
    }

}
