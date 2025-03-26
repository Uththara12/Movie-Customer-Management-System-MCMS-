<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
	String adminUser = (String) session.getAttribute("adminUser");
	
	if(adminUser == null){
		response.sendRedirect("AdminLogin.jsp");
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/AdminNavBar.css">
	</head>
	<body>
		<div class="AdminHeader">
				<div></div>
				<div></div>
				<div>
					<a href="AdminUserView.jsp">All Users</a>
					<a href="AdminAllPackageView.jsp">All Packages</a>
					<a href="AdminLogout" style="border: 1px solid white; padding: 5px 12px; border-radius: 8px">Log Out</a>
				</div>
			</div>
	</body>
</html>