<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page 
	import="com.OnlineMovieAndTVSeries.Package"
	import="java.util.*"
%>    

<%
	List<Package> PackageList = new ArrayList<Package>();
	PackageList = (List<Package>) request.getAttribute("PackageList");
	if (PackageList == null){
		response.sendRedirect("AdminGetAllPackages");
		return;
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/AdminAllPackagesView.css">
	</head>
	<body>
		
		<%@ include file="AdminNavBar.jsp" %>
		
		<div class="addPackageButton">
			<a href="AdminCreatePackage.jsp"><button>Add Package</button></a>
		</div>
		<div class="AllPackagesTable">
			<table>
				<thead>
					<tr>
						<td>Package name</td>
						<td>Price (Rs.)</td>
						<td>Resolution</td>
						<td>No. of Watchers</td>
						<td>Description</td>
						<td>Actions</td>
					</tr>
				</thead>
				<tbody>
					<% for(Package pack : PackageList){ %>
						<tr>
							<td><%= pack.getPackageName() %></td>
							<td><%= pack.getPackagePrice() %></td>
							<td><%= pack.getPackageResolution() %></td>
							<td><%= pack.getPackageWatchers() %></td>
							<td><%= pack.getPackageDescription() %></td>			
							<td>
								<form action="AdminGetPackageFromID" method="post">
									<button type="submit" name="packageID" value=<%= pack.getIdpackages() %> >Update</button>
								</form>
								<form action="AdminDeletePackage" method="post">
									<button class="delete" onClick="alert('Package Deleted')" type="submit" name="packageID" value=<%= pack.getIdpackages() %> >Delete</button>
								</form>
							</td>	
						</tr>
					<% } %>
				</tbody>
			</table>
		</div>
		 <%@ include file="footer.jsp" %>
	</body>
</html>