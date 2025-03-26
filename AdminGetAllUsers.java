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
import com.OnlineMovieAndTVSeries.User;


public class AdminGetAllUsers extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<User> UserList = new ArrayList<User>();
		Statement statementObj = null;
		
		try {
			
			statementObj = GetConnection.getConnection();
			String sql = "SELECT * FROM users";
			
			ResultSet resultSetObj = statementObj.executeQuery(sql);
			
			while(resultSetObj.next()) {
				
				int uid = resultSetObj.getInt(1);
				String username = resultSetObj.getString(2);
				String email = resultSetObj.getString(3);
				String password = resultSetObj.getString(4);
				String country = resultSetObj.getString(5);
				String mobile = resultSetObj.getString(6);
				String gender = resultSetObj.getString(7);
				String preferences = resultSetObj.getString(8);
				
				User user = new User(uid, username, email, password, country,mobile, gender, preferences);
				UserList.add(user);
			}
			
			
			
		} catch (Exception e) {
			
			System.out.println("Something wrong with Connecting to SQL server " + e.getMessage());
			
		}
		
		request.setAttribute("UserList", UserList);
		
		RequestDispatcher reqDis = request.getRequestDispatcher("AdminUserView.jsp");
		reqDis.forward(request, response);
		
	}


}
