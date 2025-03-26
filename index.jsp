<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.OnlineMovieAndTVSeries.User" %>

<% User user = (User) session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Home</title>
		<link rel="stylesheet" href="css/index.css">
	</head>
	<body>
		<%@ include file="NavBar.jsp" %>
		
	</body>
</html>