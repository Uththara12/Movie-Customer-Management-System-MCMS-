<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Portal</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #1e1e1e;
         padding-top: 150px;
    }

    .container {
        width: 80%;
        margin: 200px auto 0;
        background-color: #333;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.5);
        display: flex;
        flex-direction: column;
        align-items: center; 
        justify-content: center; 
    }

    h1 {
        text-align: center;
        color: #fff;
    }

    .button-container {
        display: flex;
        flex-direction: column;
        margin-top: 20px;
    }

    .button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s ease;
        margin: 10px;
        text-align: center;
        width: 200px;
    }

    .button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%@ include file="Anavbar.jsp" %>

<div class="container">
    <h1>Welcome to Admin Portal</h1>
    <div class="button-container">
        <a href="AdminUserView.jsp" class="button">Customer List</a>
        <a href="AdminAllPackageView.jsp" class="button">Manage Packages</a>
         <a href="addmovie.jsp" class="button">Add Movies</a>
           <a href="getmovie.jsp" class="button">Manage Movies</a>
    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
