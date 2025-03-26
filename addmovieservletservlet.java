package com.movie;

import java.io.IOException;




import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/addmovieservletservlet")
public class addmovieservletservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int year = Integer.parseInt(request.getParameter("year"));
        String genre = request.getParameter("genre");
        String poster = request.getParameter("poster");
        String movieurl = request.getParameter("movieurl");

        boolean isSuccess = movieDBUtil.insertmovie(name, description, year, genre, poster, movieurl);
        
        if (isSuccess) {
            
            
            RequestDispatcher dis = request.getRequestDispatcher("adminportal.jsp");
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
            dis2.forward(request, response);
        }
    }
}