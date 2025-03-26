package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String message = request.getParameter("message");
        
        
        boolean isTrue;
        isTrue = CustomerDBUtil.insertCustomer(name,email,phone,username,password,message);
        
        
        if(isTrue) {
            RequestDispatcher dis = request.getRequestDispatcher("loginS.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }

}
