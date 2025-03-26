<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.OnlineMovieAndTVSeries.User" 
	import="com.OnlineMovieAndTVSeries.Package"
	import="java.util.*"
%>

<% 
	User user = (User) session.getAttribute("user");
	if (user == null){
		response.sendRedirect("Login.jsp");
		return;
	}
	List<Package> PackageList = new ArrayList<Package>();
	PackageList = (List<Package>) request.getAttribute("PackageList");
	if (PackageList == null){
		response.sendRedirect("GetAllPackges");
		return;
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/AddPackage.css">
	</head>
	<body>
		<%@ include file="NavBar.jsp" %>
	    <div class="container">
	        <% for (Package pack: PackageList){ %>
	        	<div class="package">
		            <h2><%= pack.getPackageName() %></h2>
		            <p class="price">$<%= pack.getPackagePrice() %>/month</p>
		            <p>Resolution: <%= pack.getPackageResolution() %></p>
		            <p>No. of Watchers: Up to <%= pack.getPackageWatchers() %></p>
		            <p>Description: <%= pack.getPackageDescription() %></p>
		            <form action="SelectPackage" method="post">
		            	<button type="submit" name="packageID" value="<%= pack.getIdpackages() %>">Select Package</button>
		            </form>
		        </div>
	        <% } %>
	    </div>
	    <%@ include file="footer.jsp" %>
	</body>
</html>