package com.UserServlets;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OnlineMovieAndTVSeries.GetConnection;
import com.OnlineMovieAndTVSeries.User;



public class DeleteProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get session from request 
		HttpSession session = request.getSession();
		//get user session from session
		User user = (User) session.getAttribute("user");
		//get all inputs from the preferences page
		int UID = user.getUID();
		Statement statementObj = null;
		//get connection and execute the sql
		try {
			
			statementObj = GetConnection.getConnection();
			String sql = "DELETE FROM users WHERE idusers = " + UID;
			
			statementObj.execute(sql);			
			
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
		//redirect to logout servlet
		response.sendRedirect("Logout");
				
	}

}
