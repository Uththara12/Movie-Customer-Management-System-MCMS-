package com.UserServlets;

import java.io.IOException;

import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OnlineMovieAndTVSeries.GetConnection;


public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			String sql = "INSERT INTO users(username , email , password, country, mobile, gender, preferences) VALUES ('" + username + "','" + email + "','" + password + "','"+ country + "','"+ mobile + "','" + gender + "','" + preferences + "')";
			
			statementObj.execute(sql);
			//redirect to Login
			RequestDispatcher reqDis = request.getRequestDispatcher("Login");
			//redirect with the request and response objects of the current servlet
			reqDis.forward(request, response);
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
		
		
	}

}
