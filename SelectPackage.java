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

public class SelectPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int packageID = Integer.parseInt(request.getParameter("packageID"));
		//get session from request 
		HttpSession session = request.getSession();
		//get user session from session
		User user = (User) session.getAttribute("user");
		//get all inputs from the preferences page
		int UID = user.getUID();
		int pk = packageID + UID;
		try {
			
			Statement statementObj = GetConnection.getConnection();
			String sql = "INSERT INTO user_enrolled_package(iduser_enrolled_package, userID, packageID) VALUES ("+ pk +","+ UID +","+ packageID +")";
			
			statementObj.execute(sql);
			response.sendRedirect("GetUserPackage");
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
	}

}
