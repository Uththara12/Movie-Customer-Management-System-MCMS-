<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>navbar</title>
<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
}

header {
    background-color: #333;
    color: #fff;
    padding: 8px 0; 
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000; 
}

.container {
    width: 90%;
    margin: 0 auto;
    display: flex;
    justify-content: space-between;
    align-items: center;
}

h1 {
    margin: 0;
    font-size: 20px; 
}

nav ul {
    list-style: none;
    margin: 0;
    padding: 0;
}

nav ul li {
    display: inline;
    margin-right: 15px; 
}

nav ul li:last-child {
    margin-right: 0;
}

nav ul li a {
    color: #fff;
    text-decoration: none;
    font-size: 14px;
}


</style>
</head>
<body>

<header>
    <div class="container">
        <h1>TVflix</h1>
        <nav>
            <ul>
                <li><a href="homepage.jsp">Home</a></li>
                <li><a href="Login.jsp">Login</a></li>
                <li><a href="SignUp.jsp">Create an Account</a></li>
                <li><a href="Profile.jsp">My Account</a></li>
                <li><a href="AddPackage.jsp">Activate a Package</a></li>
                <li><a href="MyPackages.jsp">My Package</a></li>
                <li><a href="AdminLogin.jsp">Admin Login</a></li>
                <li><a href="adminportal.jsp">Admin Portal</a></li>
                <li><a href="loginS.jsp">Support</a></li>
                 <li><a href="AdminLogout">Logout</a></li>
                
            </ul>
        </nav>
    </div>
</header>





</body>
</html>