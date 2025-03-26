package com.UserServlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OnlineMovieAndTVSeries.GetConnection;
import com.OnlineMovieAndTVSeries.Package;

public class AdminGetAllPackages extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Package> PackageList = new ArrayList<Package>();
		Statement statementObj = null;
		
		try {
			
			statementObj = GetConnection.getConnection();
			String sql = "SELECT * FROM packages";
			
			ResultSet resultSetObj = statementObj.executeQuery(sql);
			
			while(resultSetObj.next()) {
				
				int idpackages = resultSetObj.getInt(1);
				String packageName =  resultSetObj.getString(2);
				String packagePrice =  resultSetObj.getString(3);
				String packageResolution =  resultSetObj.getString(4);
				int packageWatchers =  resultSetObj.getInt(5);
				String packageDescription =  resultSetObj.getString(6);
				
				Package pack = new Package(idpackages, packageName, packagePrice, packageResolution, packageWatchers, packageDescription);
				PackageList.add(pack);
			}
			
			
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
		
		request.setAttribute("PackageList", PackageList);
		
		RequestDispatcher reqDis = request.getRequestDispatcher("AdminAllPackageView.jsp");
		reqDis.forward(request, response);
	}

}
