package com.UserServlets;

import java.io.IOException;

import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OnlineMovieAndTVSeries.GetConnection;

public class AdminDeletePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int packageID = Integer.parseInt(request.getParameter("packageID"));
		
		Statement statementObj = null;
		//get connection and execute the sql
		try {
			
			statementObj = GetConnection.getConnection();
			String sql = "DELETE FROM packages WHERE idpackages = " + packageID;
			
			statementObj.execute(sql);			
			
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
		//redirect to logout servlet
		response.sendRedirect("AdminGetAllPackages");
	}

}
