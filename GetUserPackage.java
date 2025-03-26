package com.UserServlets;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.OnlineMovieAndTVSeries.GetConnection;
import com.OnlineMovieAndTVSeries.Package;
import com.OnlineMovieAndTVSeries.User;


public class GetUserPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Statement statementObj = null;
		
		//get session from request 
		HttpSession session = request.getSession();
		//get user session from session
		User user = (User) session.getAttribute("user");
		if(user == null) {
			response.sendRedirect("Login.jsp");
			return;
		}
		//get all inputs from the preferences page
		int UID = user.getUID();
		
		Integer packageID = null;
		Package packageFromDB = null;
		try {
			
			statementObj = GetConnection.getConnection();
			String sql = "SELECT * FROM user_enrolled_package WHERE userID = " + UID +";";
			
			ResultSet resultSetObj = statementObj.executeQuery(sql);
			
			if(resultSetObj.next()) {
				packageID = resultSetObj.getInt(3);
			}
			
			if(packageID == null) {
				request.setAttribute("myPackage", "Nothing");
				
				RequestDispatcher reqDis = request.getRequestDispatcher("MyPackages.jsp");
				reqDis.forward(request, response);
				return;
			}
			
			String sql2 = "SELECT * FROM packages WHERE idpackages = " + packageID +";";
			
			ResultSet resultSetObj2 = statementObj.executeQuery(sql2);
			
			if(resultSetObj2.next()) {
				int idpackages = resultSetObj2.getInt(1);
				String packageName = resultSetObj2.getString(2);
				String packagePrice = resultSetObj2.getString(3);
				String packageResolution = resultSetObj2.getString(4);
				int packageWatchers = resultSetObj2.getInt(5);
				String packageDescription = resultSetObj2.getString(6);
				
				packageFromDB = new Package(idpackages, packageName, packagePrice, packageResolution, packageWatchers, packageDescription);
			}
			
			if (packageFromDB == null) {
				response.sendRedirect("Login.jsp");
				return;
			}
			
			request.setAttribute("myPackage", packageFromDB);
			
			RequestDispatcher reqDis = request.getRequestDispatcher("MyPackages.jsp");
			reqDis.forward(request, response);

			
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
		
	}

}
