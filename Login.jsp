<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% String error = (String) session.getAttribute("errorLogIn"); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login Page</title>
		<link rel="stylesheet" href="css/login.css" />
	</head>
	<body>
		<%@ include file="NavBar.jsp" %>
		<div class="loginForm">
			<h1>Login Form</h1>
			<% if (error != null){ %>
		   		 <p style="color:red;text-align:center;font-size:1.5em;background:white;border-radius:5px;padding:10px 0;font-weight:600;"> 
			   		 <%= error %>
			   		 <% session.setAttribute("errorLogIn" , null); %>
		   		 </p>
		    <% } %>
			<form action="Login" method="post">
				<div class="input-box">
					<label for="email">Email</label>
			      	<input type="email"  id="email" name="email" required>
			    </div>
			
			    <div class="input-box">
			    	<label for="password">Password</label>
			      	<input type="password" onChange="passwordValid()" id="password" name="password" required>
			    </div>
			    <button name="login" id="login" class="logBtn">Login</button>
			</form>
		</div>
		<script src="js/main.js"></script>
		<%@ include file="footer.jsp" %>
	</body>
</html>