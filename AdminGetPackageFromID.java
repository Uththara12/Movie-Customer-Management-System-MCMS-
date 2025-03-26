package com.UserServlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OnlineMovieAndTVSeries.GetConnection;
import com.OnlineMovieAndTVSeries.Package;

public class AdminGetPackageFromID extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int packageID = Integer.parseInt(request.getParameter("packageID"));
		
		Statement statementObj = null;
		//get connection and execute the sql
		
		Package pack = null;
		try {
			
			statementObj = GetConnection.getConnection();
			String sql = "SELECT * FROM packages WHERE idpackages = " + packageID;
			
			ResultSet result = statementObj.executeQuery(sql);
			
			if(result.next()) {
				
				int packID = result.getInt(1);
				String packName = result.getString(2);
				String packPrice = result.getString(3);
				String packResolution = result.getString(4);
				int packWatchers = result.getInt(5);
				String packDescription = result.getString(6);
				
				pack = new Package(packID, packName, packPrice, packResolution, packWatchers, packDescription);
			}
			
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
		request.setAttribute("package", pack);
		RequestDispatcher ReqDispatcher = request.getRequestDispatcher("AdminUpdateProperty.jsp");
		ReqDispatcher.forward(request, response);
		
		
	}

}
