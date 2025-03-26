<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update movie</title>
<style>
body {
  background-image: url('./images/loginBackground.jpg');
  background-size: cover;
  background-attachment: fixed; 
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  display: flex; 
  align-items: center; 
  justify-content: center; 
  min-height: 100vh; 
}

div {
  background-color: rgba(0, 0, 0, 0.5); 
  border: 1px solid #ddd;
  border-radius: 5px;
  padding: 20px;
  width: 400px; 
  display: flex;
  flex-direction: column;
  align-items: center;
}

h2 {
  font-size: 24px;
  margin-bottom: 15px;
  color: white;
}

label {
  font-weight: bold;
  margin-bottom: 5px;
  
  color: white;

}

input[type="text"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 3px;
  margin-bottom: 10px;
}

input[type="submit"] {
  background-color: #007bff; 
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #0062cc;
}
</style>
</head>
<body>
<%@ include file="Anavbar.jsp" %>
<div>
 <h2>Update Movie</h2>
 <%
   String id = request.getParameter("id");
   String name = request.getParameter("name");
   String description = request.getParameter("description");
   String year = request.getParameter("year");
   String genre = request.getParameter("genre");
   String poster = request.getParameter("poster");
   String movieurl = request.getParameter("movieurl");
 %>
    
<form action="updatemovie" method="post">
    <label> Movie ID:</label><br>
    <input type="text" name="mid" value="<%= id %>" readonly><br>
     
    <label>Name:</label><br>
    <input type="text" id="name" name="name" value="<%= name %>"><br>

    <label>Description:</label><br>
    <input type="text" id="description" name="description" value="<%= description %>"><br>
   
    <label>Release Year:</label><br>
    <input type="text" id="release_year" name="year" value="<%= year %>"><br>

    <label>Genre:</label><br>
    <input type="text" id="genre" name="genre" value="<%= genre %>"><br>
    
    <label>Poster Image URL :</label><br>
    <input type="text" id="poster_image" name="poster" value="<%= poster %>"><br>
     
    <label>Movie URL :</label><br>
    <input type="text" id="movie_url" name="movieurl" value="<%= movieurl %>"><br><br>
     
    <input type="submit" value="Update My Data" name="add">
</form>
</div>
 <%@ include file="footer.jsp" %>
</body>
</html>
