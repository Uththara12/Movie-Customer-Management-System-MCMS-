<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page
	import="com.OnlineMovieAndTVSeries.Package"
	import="java.util.*"
%>

<%
	Package pack = (Package) request.getAttribute("package");
	if (pack == null){
		response.sendRedirect("AdminGetAllPackages");
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/AdminCreatePackage.css">
	</head>
	<body>
	
		<%@ include file="AdminNavBar.jsp" %>
			<div class="createPackageForm">
				<h1>Update Package</h1>
				<form action="AdminUpdatePackage" method="post">
					<div class="input-box">
						<label for="packageName">Package Name </label>
				      	<input type="text"  id="packageName" name="packageName" value="<%= pack.getPackageName() %>" required>
				    </div>
				    <div class="input-box">
						<label for="packagePrice">Package Price </label>
				      	<input type="text"  id="packagePrice" name="packagePrice" value="<%= pack.getPackagePrice() %>" required>
				    </div>
				    <div class="input-box">
						<label for="packageResolution">Package Resolution </label>
				      	<select id="packageResolution" name="packageResolution" required>
				      		<option value="">Select a resolution</option>
				      		<option value="SD" <%= pack.getPackageResolution().equals("SD")? "selected" : "" %>>SD</option>
				      		<option value="HD" <%= pack.getPackageResolution().equals("HD")? "selected" : "" %>>HD</option>
				      		<option value="Full HD" <%= pack.getPackageResolution().equals("Full HD")? "selected" : "" %>>Full HD</option>
				      		<option value="Ultra HD" <%= pack.getPackageResolution().equals("Ultra HD")? "selected" : "" %>>Ultra HD</option>
				      	</select>
				    </div>
				    <div class="input-box">
						<label for="packageWatchers">Package Watchers</label>
				      	<input type="number"  id="packageWatchers" name="packageWatchers" value="<%= pack.getPackageWatchers() %>" required>
				    </div>
				    <div class="input-box">
						<label for="packageDescription">Package Description </label>
				      	<textarea rows="10" id="packageDescription" name="packageDescription" required><%= pack.getPackageDescription() %></textarea>
				    </div>
				    
				    <button type="submit" name="packageID" id="login" value="<%= pack.getIdpackages() %>" class="logBtn">Update Package</button>
				</form>
			</div>
		 <%@ include file="footer.jsp" %>
	
	</body>
</html>