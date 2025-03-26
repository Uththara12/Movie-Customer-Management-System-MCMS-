<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% 
	String error = (String) session.getAttribute("adminErrorLogIn");
	String adminUser = (String) session.getAttribute("adminUser");
	
	if(adminUser != null){
		response.sendRedirect("AdminUserView.jsp");
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/AdminLogin.css">
	</head>
	<body>
	<%@ include file="Anavbar.jsp" %>
		<div class="loginForm">
			<h1>Admin Login</h1>
			<% if (error != null){ %>
		   		 <p style="color:red;text-align:center;font-size:1.5em;background:white;border-radius:5px;padding:10px 15px;font-weight:600;"> 
			   		 <%= error %>
			   		 <% session.setAttribute("adminErrorLogIn" , null); %>
		   		 </p>
		    <% } %>
			<form action="AdminLogin" method="post">
				<div class="input-box">
					<label for="email">Email</label>
			      	<input type="email"  id="email" name="email" required>
			    </div>
			    <div class="input-box">
					<label for="password">Password</label>
			      	<input type="password"  id="password" name="password" required>
			    </div>
			    <button name="login" id="login" class="logBtn">Login</button>
			</form>
		</div>
		<%@ include file="footer.jsp" %>
	</body>
</html>