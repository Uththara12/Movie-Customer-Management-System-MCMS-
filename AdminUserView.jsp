<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page 
	import="com.OnlineMovieAndTVSeries.*"
	import="java.util.*"
%>    

<%
	List<User> UserList = new ArrayList<User>();
	UserList = (List<User>) request.getAttribute("UserList");
	if (UserList == null){
		response.sendRedirect("AdminGetAllUsers");
		return;
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Admin</title>
		<link rel="stylesheet" href="css/AdminUserView.css">
	</head>
	<body>
		<%@ include file="AdminNavBar.jsp" %>
		
		<div class="AllUserTable">
			<table>
				<thead>
					<tr>
						<td>Username</td>
						<td>Email</td>
						<td>Country</td>
						<td>Mobile</td>
						<td>Gender</td>
						<td>Preferences</td>
					</tr>
				</thead>
				<tbody>
					<% for(User user : UserList){ %>
						<tr>
							<td><%= user.getUsername() %></td>
							<td><%= user.getEmail() %></td>
							<td><%= user.getCountry() %></td>
							<td><%= user.getMobile() %></td>
							<td><%= user.getGender() %></td>
							<td><%= user.getPreferences() %></td>					
						</tr>
					<% } %>
				</tbody>
			</table>
		</div>
	 <%@ include file="footer.jsp" %>
	</body>
</html>