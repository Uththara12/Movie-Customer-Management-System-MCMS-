package com.movie;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateMovieServletservlet")
public class UpdateMovieServletservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("mid");
        String name = request.getParameter("name"); 
        String description = request.getParameter("description");
        String year = request.getParameter("year");
        String genre = request.getParameter("genre");
        String poster = request.getParameter("poster");
        String movieurl = request.getParameter("movieurl");

        boolean isTrue;
        isTrue = movieDBUtil.updatemovie(id, name, description, year, genre, poster, movieurl);
        if (isTrue) {
            List<movie> mDetails = movieDBUtil.getMovieDetail(id);
            request.setAttribute("mDetails", mDetails);
            RequestDispatcher dis = request.getRequestDispatcher("moviedisplay.jsp");
            dis.forward(request, response);
        } else {
            List<movie> mDetails = movieDBUtil.getMovieDetail(id);
            request.setAttribute("mDetails", mDetails);
            RequestDispatcher dis = request.getRequestDispatcher("moviedisplay.jsp");
            dis.forward(request, response);
        }
    }
}

