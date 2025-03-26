package com.UserServlets;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OnlineMovieAndTVSeries.GetConnection;
import com.OnlineMovieAndTVSeries.User;

public class EditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get session from request 
		HttpSession session = request.getSession();
		//get user session from session
		User user = (User) session.getAttribute("user");
		//get all inputs from the preferences page
		int UID = user.getUID();
		
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String country = request.getParameter("country");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String Adventure = request.getParameter("Adventure");
		String Action = request.getParameter("Action");
		String Comedy = request.getParameter("Comedy");
		String Romcom = request.getParameter("Romcom");
		
		String preferences = "";
		
		if(Adventure != null) {
			preferences += Adventure + " ";
		}
		if(Action != null) {
			preferences += Action + " ";
		}
		if(Comedy != null) {
			preferences += Comedy + " ";
		}
		if(Romcom != null) {
			preferences += Romcom + " ";
		}
		
		try {
			
			Statement statementObj = GetConnection.getConnection();
			String sql = "UPDATE users SET username = '" + username + "', email = '" + email + "', password = '" + password + "', country = '" + country + "', mobile = '" + mobile + "', gender = '" + gender + "', preferences = '" + preferences + "' WHERE (idusers = " + UID + ")" ;
			
			statementObj.execute(sql);

			user = new User(UID, username, email, password, country, mobile, gender, preferences);
			//setting user session
			session.setAttribute("user", user);
			//redirect to index page
			response.sendRedirect("index.jsp");
			
		} catch (SQLException e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}

	}

}
