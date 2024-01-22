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
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterController() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("page/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String fullName = request.getParameter("fullName");
        String phone = request.getParameter("phone");

        Map<String, String> errors = validate(email, password, confirmPassword, phone);
        if (!errors.isEmpty()) {
            request.setAttribute("errors", errors);
            request.getRequestDispatcher("/page/register.jsp").forward(request, response);
        }
        AccountDAO accountDAO = new AccountDAO();
        Account account = new Account();
        account.setEmail(email);
        account.setPassword(PasswordHashingUtil.hashPassword(password));
        account.setFullName(fullName);
        account.setPhone(phone);
        account.setRole("USER");

        boolean isRegisterSuccess = accountDAO.register(account);
        if (isRegisterSuccess) {
            request.setAttribute("success", "Đăng ký thành công!");
            request.getRequestDispatcher("/page/login.jsp").forward(request, response);
        }
        else {
            request.setAttribute("error", "Đăng ký không thành công!");
            request.getRequestDispatcher("/page/register.jsp").forward(request, response);
        }
    }

    private Map<String, String> validate(String email, String password, String confirmPassword,String phone) {
        Map<String, String> errors = new HashMap<>();

        // validation
        if (email == null || email.isEmpty()) {
            errors.put("email", "Email không phù hợp");
        } else {
            AccountDAO accountDAO = new AccountDAO();
            Account account = accountDAO.getAccountByEmail(email);

            if (account != null) {
                errors.put("email", "Email đã được đăng ký!");
            }
        }

        if (password.length() < 6) {
            errors.put("password", "Vui lòng nhập Mật Khẩu lớn hơn 6 ký tự!");
        }

        if (confirmPassword.length() < 6) {
            errors.put("confirmPassword", "Vui lòng nhập Xác Nhận Mật Khẩu lớn hơn 6 ký tự!");
        } else if (!confirmPassword.equals(password)) {
            errors.put("confirmPassword", "Mật khẩu không trùng khớp");
        }

        if (!isPhone(phone)) {
            errors.put("phone", "Vui lòng nhập đúng định dạng");
        }

        return errors;
    }

    private boolean isPhone(String phone) {
        String regexStr = "^[0-9]{10}$";
        Pattern pattern = Pattern.compile(regexStr);
        Matcher matcher = pattern.matcher(phone);
        return matcher.matches();
    }

}
