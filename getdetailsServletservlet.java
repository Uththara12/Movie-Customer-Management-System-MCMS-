package com.movie;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/getdetailsServletservlet")
public class getdetailsServletservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		String name=request.getParameter("name");
		
		try{
			List<movie> mDetails = movieDBUtil.validate(id ,name);
		request.setAttribute("mDetails", mDetails);
		}catch(Exception e) {
			e.printStackTrace();
			
		}
	
		RequestDispatcher dis =request.getRequestDispatcher("moviedisplay.jsp");
		dis.forward(request, response);
	}
	

}