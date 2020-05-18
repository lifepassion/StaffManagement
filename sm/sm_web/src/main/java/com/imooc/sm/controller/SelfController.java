package com.imooc.sm.controller;

import com.imooc.sm.entity.Staff;
import com.imooc.sm.service.SelfService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller("selfController")
public class SelfController {

    @Autowired
    private SelfService selfService;

    //  /toLogin.do

    public void toLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request,response);
    }

    public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        Staff staff = selfService.login(account, password);

        if(staff==null){
            response.sendRedirect("toLogin.do");
        }else {
            request.getSession().setAttribute("USER",staff);
            response.sendRedirect("main.do");
        }
    }

    public void main(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    public void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().setAttribute("USER",null);
        response.sendRedirect("toLogin.do");
    }

    // /self/info.do
    public void info(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../info.jsp").forward(request,response);
    }

    // /self/toChangePassword.do
    public void toChangePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../change_password.jsp").forward(request,response);
    }

    // /self/changePassword.do
    public void changePassword(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password = request.getParameter("password");
        String password1=request.getParameter("password1");
        Staff staff = (Staff) request.getSession().getAttribute("USER");
        if(!staff.getPassword().equals(password)){
            response.sendRedirect("toChangePassword.do");
        }else{
            selfService.changePassword(staff.getId(),password1);
            response.sendRedirect("info.do");
        }
    }

}
