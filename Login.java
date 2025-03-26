package com.UserServlets;

import java.io.IOException;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OnlineMovieAndTVSeries.User;
import com.OnlineMovieAndTVSeries.GetConnection;

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User user = null;
		
		try {
			
			Statement statementObj = GetConnection.getConnection();
			String sql = "SELECT * FROM users WHERE email = '" + email + "' AND password = '" + password + "'";
			
			ResultSet resultSetObj = statementObj.executeQuery(sql);
			
			if(resultSetObj.next()) {
				int uid = resultSetObj.getInt(1);
				String username = resultSetObj.getString(2);
				String country = resultSetObj.getString(5);
				String mobile = resultSetObj.getString(6);
				String gender = resultSetObj.getString(7);
				String preferences = resultSetObj.getString(8);
				
				user = new User(uid, username, email, password, country, mobile, gender, preferences);
			}
			
			
			
		} catch (SQLException e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
	
		
		// get session from the request object
		HttpSession session = request.getSession();
		
		//sending error msg if the login is invalid
		if (user == null) {
			session.setAttribute("errorLogIn", "Invalid Credentials");
			response.sendRedirect("Login.jsp");
			return;
		}
		
		//setting user session
		session.setAttribute("user", user);
		//redirect to index jsp
		response.sendRedirect("homepage.jsp");
	}

}
