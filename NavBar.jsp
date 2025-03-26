<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.OnlineMovieAndTVSeries.User" %>

<% User NavBarUser = (User) session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/NavBar.css">
	</head>
	<body>
		<div class="navBar">
			<div></div>
			<div>
				<% if (NavBarUser == null){ %>
			
					<a href="homepage.jsp">Home</a>
					<a href="Login.jsp">Login</a>
					<a href="SignUp.jsp">Signup</a>
				<% } else { %>
					<a href="homepage.jsp">Home</a>
					<a href="MyPackages.jsp">My Package</a>
					<a href="Profile.jsp"><%= NavBarUser.getUsername() %></a>
					<a href="Logout" style="border: 1px solid white; padding: 5px 12px; border-radius: 8px">Logout</a>
				<% } %>
			</div>
		</div>
	</body>
</html>