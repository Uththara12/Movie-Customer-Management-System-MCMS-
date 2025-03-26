<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.OnlineMovieAndTVSeries.User" %>

<% 
	User user = (User) session.getAttribute("user"); 
	if( user == null ){
		response.sendRedirect("index.jsp");
		return;
	}
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/signup.css">
	</head>
	<body>
		<%@ include file="NavBar.jsp" %>
		<div class="SignUpForm">
			<h1>Edit Profile Form</h1>
			<form action="EditProfile" method="post">
				<div class="input-box">
					<label for="username">Username</label>
			      	<input type="text"  id="username" name="username" value='<%= user.getUsername() %>' required>
			    </div>
			
			    <div class="input-box">
			    	<label for="email">Email</label>
			      	<input type="email" id="email" name="email" value=<%= user.getEmail() %> required>
			    </div>
			    
			    <div class="input-box">
			    	<label for="password">Password</label>
			      	<input type="password" onChange="passwordValid()" value=<%= user.getPassword() %> id="password" name="password" required>
			    </div>
			    
			    <div class="input-box">
			    	<label for="country">Country</label>
			      	<select name="country" id="country">
			      		<option value="">Select a Country</option>
			      		<option value="Sri Lanka" <%= user.getCountry().equals("Sri Lanka")? "selected" : "" %>>Sri Lanka</option>
			      		<option value="India" <%= user.getCountry().equals("India")? "selected" : "" %>>India</option>
			      		<option value="Australia" <%= user.getCountry().equals("Australia")? "selected" : "" %>>Australia</option>
			      	</select>
			    </div>
			    
			    <div class="input-box">
			    	<label for="mobile">Mobile No.</label>
			      	<input type="number"id="mobile" name="mobile" value=<%= user.getMobile() %>>
			    </div>
			    
			    <div class="input-box">
			    	<label for="gender">Gender</label>
			      	<select name="gender" id="gender">
			      		<option value="">Select a Gender</option>
			      		<option value="Male" <%= user.getGender().equals("Male")? "selected" : "" %>>Male</option>
			      		<option value="Female" <%= user.getGender().equals("Female")? "selected" : "" %>>Female</option>
			      		<option value="None" <%= user.getGender().equals("None")? "selected" : "" %>>Prefer Not to Say</option>
			      	</select>
			    </div>
			    
			    <div class="input-box preferences">
			    	<label for="preferences">Preferences</label>
			      	<div>
			      		<div>
			      			<input type="checkbox" id="Action" name="Action" value="Action" <%= user.getPreferences().contains("Action")? "checked" : "" %>> 
			      			<label for="Action">Action</label>
			      		</div>
			      		<div>
			      			<input type="checkbox" id="Comedy" name="Comedy" value="Comedy" <%= user.getPreferences().contains("Comedy")? "checked" : "" %>> 
			      			<label for="Comedy">Comedy</label>
			      		</div>
			      		<div>
			      			<input type="checkbox" id="Romcom" name="Romcom" value="Romcom" <%= user.getPreferences().contains("Romcom")? "checked" : "" %>> 
			      			<label for="Romcom">Romcom</label>
			      		</div>
			      		<div>
			      			<input type="checkbox" id="Adventure" name="Adventure" value="Adventure" <%= user.getPreferences().contains("Adventure")? "checked" : "" %>> 
			      			<label for="Adventure">Adventure</label>
			      		</div>
			      	</div>
			    </div>
			    
			    <button name="login" id="login" class="logBtn">Edit Profile</button>
			</form>
		</div>
		<script src="js/main.js"></script>
		<%@ include file="footer.jsp" %>
	</body>
</html>