<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get movie</title>
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

form {
  background-color: rgba(0, 0, 0, 0.5); 
  border: 1px solid #ddd;
  border-radius: 5px;
  padding: 20px;
  width: 300px;
  display: flex;
  flex-direction: column;
  align-items: center;
}

label {
  font-weight: bold;
  margin-bottom: 5px;
  
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


.white-text {
    color: white;
  }
</style>
</head>
<body>
<%@ include file="Anavbar.jsp" %>
<div>
<%

String adminUser = (String) session.getAttribute("adminUser");


if(adminUser != null) {
%>
<form action="details" method="post">
<span class="white-text">Movie ID</span> <input type="text" name= "id"><br>
<span class="white-text">Title</span><input type="text" name= "name"><br>
<input type="submit" name="submit" value="GET DETAILS">
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