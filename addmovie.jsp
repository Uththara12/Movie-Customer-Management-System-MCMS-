<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add movie</title>
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
  background-color: #008cba;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 3px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #006994;
}
</style>
<script>
  function validateForm() {
    const year = document.getElementById("release_year").value;
    if (year < 1980) {
      alert("The release year must be 1980 or later.");
      return false;
    }
    return true;
  }
</script>
</head>
<body>
<%@ include file="Anavbar.jsp" %>
<div>
<%
String adminUser = (String) session.getAttribute("adminUser");
if(adminUser != null) {
%>
 <h2>Add New Movie or TV series</h2>
    <form action="amandhi" method="post" onsubmit="return validateForm()">
        <label>Name:</label><br>
        <input type="text" id="name" name="name" required><br>

        <label>Description:</label><br>
        <input type="text" id="description" name="description" required><br>
       
        <label>Release Year:</label><br>
        <input type="text" id="release_year" name="year" required><br>

        <label>Genre:</label><br>
        <input type="text" id="genre" name="genre" required><br>
        
        <label>Poster Image URL :</label><br>
        <input type="text" id="poster_image" name="poster" required><br>
         
        <label>Movie URL :</label><br>
        <input type="text" id="movie_url" name="movieurl" required><br><br>

        <input type="submit" value="Add" name="add">
    </form>
<%
} else {
    response.sendRedirect("AdminLogin.jsp");
}
%>
</div>
<%@ include file="footer.jsp" %>
</body>
</html>
