package com.UserServlets;

import java.io.IOException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OnlineMovieAndTVSeries.GetConnection;

public class AdminUpdatePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String packageName = request.getParameter("packageName");
		String packagePrice = request.getParameter("packagePrice");
		String packageResolution = request.getParameter("packageResolution");
		int packageWatchers = Integer.parseInt(request.getParameter("packageWatchers"));
		String packageDescription = request.getParameter("packageDescription");
		int packageID = Integer.parseInt(request.getParameter("packageID"));
		
		try {
			
			Statement statementObj = GetConnection.getConnection();
			String sql = "UPDATE packages SET packageName = '" + packageName + "', packagePrice = '" + packagePrice + "', packageResolution = '" + packageResolution + "', packageWatchers = " + packageWatchers + ", packageDescription = '" + packageDescription + "' WHERE (idpackages = " + packageID + ");";
			
			statementObj.execute(sql);
			response.sendRedirect("AdminGetAllPackages");
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
		
	}

}
