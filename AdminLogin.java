package com.UserServlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		// get session from the request object
		HttpSession session = request.getSession();
		
		if(email.equals("admin@gmail.com") && password.equals("1234")) {
			session.setAttribute("adminUser", "Admin");
			response.sendRedirect("adminportal.jsp");
			return;
		} else {
			session.setAttribute("adminErrorLogIn", "Invalid Credentials");
			response.sendRedirect("AdminLogin.jsp");
			return;
		}
	}

}
