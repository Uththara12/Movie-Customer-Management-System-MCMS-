package com.UserServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class AdminLogout extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get session from request
		HttpSession session = request.getSession();
		
		// if the user session is set and making all sessions invalid
		if (session.getAttribute("adminUser") != null) {
		   	session.invalidate();
		   	//redirect to index jsp
		    response.sendRedirect("AdminLogin.jsp");
		    
		}
	}


}
