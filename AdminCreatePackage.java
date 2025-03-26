package com.UserServlets;

import java.io.IOException;

import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OnlineMovieAndTVSeries.GetConnection;

public class AdminCreatePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String packageName = request.getParameter("packageName");
		String packagePrice = request.getParameter("packagePrice");
		String packageResolution = request.getParameter("packageResolution");
		int packageWatchers = Integer.parseInt(request.getParameter("packageWatchers"));
		String packageDescription = request.getParameter("packageDescription");
		
		
		try {
			
			Statement statementObj = GetConnection.getConnection();
			String sql = "INSERT INTO packages(packageName , packagePrice , packageResolution, packageWatchers, packageDescription) VALUES( '"+ packageName +"', '"+ packagePrice +"', '"+ packageResolution +"', "+ packageWatchers +", '"+ packageDescription +"' )";
			
			statementObj.execute(sql);
			response.sendRedirect("AdminAllPackageView.jsp");
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
	}

}
