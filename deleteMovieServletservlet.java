package com.movie;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteMovieServletservlet")
public class deleteMovieServletservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String id = request.getParameter("mid");
		 boolean  isTrue;
		 isTrue =movieDBUtil.deleteMovie(id);
		 
		 if(isTrue==true) {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("adminportal.jsp");
			 dispatcher.forward(request, response);
		 }else {
			 List<movie> mDetails=movieDBUtil.getMovieDetail(id);
			 request.setAttribute("mDetails", mDetails);
			 
			 RequestDispatcher dispatcher = request.getRequestDispatcher("moviedisplay.jsp");
			 dispatcher.forward(request, response);
		 }
	       
	}

}
