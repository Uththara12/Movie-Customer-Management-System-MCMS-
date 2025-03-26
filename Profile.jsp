<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.OnlineMovieAndTVSeries.User" %>

<% 
	User user = (User) session.getAttribute("user"); 
	if( user == null ){
		response.sendRedirect("index.jsp");
		return;
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Profile Page</title>
		<style>
	        body {
	            font-family: Arial, sans-serif;
	            background-color: #f2f2f2;
	            margin: 0;
	            padding: 0;
	        }
	        .container {
	            max-width: 600px;
	            margin: 50px auto;
	            background-color: #fff;
	            padding: 20px;
	            border-radius: 10px;
	            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	        }
	        .profile-item {
	            margin-bottom: 15px;
	        }
	        .profile-item label {
	            font-weight: bold;
	        }
	        .profile-item span {
	            display: inline-block;
	            margin-left: 10px;
	        }
	        .edit-delete-links a {
	            text-decoration: none;
	            color: #007bff;
	            margin-right: 10px;
	        }
	        
	        .edit-delete-links a.deleteLink {
	            text-decoration: none;
	            color: #FF0000;
	            margin-right: 10px;
	        }
	        .edit-delete-links a:hover {
	            text-decoration: underline;
	        }
	    </style>
	</head>
	<body>
		<%@ include file="NavBar.jsp" %>
		<div class="container">
	        <div class="profile-item">
	            <label>Username:</label>
	            <span><%= user.getUsername() %></span>
	        </div>
	        <div class="profile-item">
	            <label>Email:</label>
	            <span><%= user.getEmail() %></span>
	        </div>
	        <div class="profile-item">
	            <label>Country:</label>
	            <span><%= user.getCountry() %></span>
	        </div>
	        <div class="profile-item">
	            <label>Mobile:</label>
	            <span><%= user.getMobile() %></span>
	        </div>
	        <div class="profile-item">
	            <label>Gender:</label>
	            <span><%= user.getGender() %></span>
	        </div>
	        <div class="profile-item">
	            <label>Preferences:</label>
	            <span><%= user.getPreferences() %></span>
	        </div>
	        <div class="edit-delete-links">
	            <a href="EditProfile.jsp">Edit</a>
	            <a class="deleteLink" href="DeleteProfile" onClick="alert('Profile Deleted')">Delete</a>
	        </div>
	    </div>
	   
	</body>
</html>