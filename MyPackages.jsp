<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page 
	import="com.OnlineMovieAndTVSeries.User"
	import="com.OnlineMovieAndTVSeries.Package"
 %>

<% 
	User user = (User) session.getAttribute("user");
	if (user == null){
		response.sendRedirect("Login.jsp");
		return;
	}
	Package pack = null;
	try{
		pack = (Package) request.getAttribute("myPackage");
		if (pack == null){
			response.sendRedirect("GetUserPackage");
			return;
		}
	} catch (Exception e){
		pack = null;
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/MyPackages.css">
	</head>
	<body>
		<%@ include file="NavBar.jsp" %>
		<div class="container">
			<% if (pack == null){ %>
				<div class="package">
					<h2>No Package Selected</h2>
				</div>
				<div class="addPackageButton">
					<a href="AddPackage.jsp">Add Package</a>
				</div>
			<% } else { %>
				<div class="package">
		            <h2><%= pack.getPackageName() %></h2>
		            <p class="price">$<%= pack.getPackagePrice() %>/month</p>
		            <p>Resolution: <%= pack.getPackageResolution() %></p>
		            <p>No. of Watchers: Up to <%= pack.getPackageWatchers() %></p>
		            <p>Description: <%= pack.getPackageDescription() %></p>
		            <form action="DeleteUserPackage" method="post">
		            	<button type="submit" name="packageID" value="<%= pack.getIdpackages() %>">Delete Package</button>
		            </form>
		        </div>
			<% } %>
		</div>
		 
	</body>
</html>