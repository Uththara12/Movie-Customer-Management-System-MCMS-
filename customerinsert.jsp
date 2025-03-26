<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<style>
body {
    background-image:url('./images/loginbackground.jpg');
    font-family: Times New Roman;
    background-color:#585858;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

form {
    background-color: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

form input[type="text"],
form input[type="password"] {
    width: calc(100% - 22px);
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

form input[type="submit"] {
    width: calc(100% - 22px);
    padding: 10px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}

form input[type="submit"]:hover {
    background-color: #45a049;
}

form label {
    font-weight: bold;
}

footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 8px 0;
    position: fixed;
    width: 100%;
    bottom: 0;
    z-index: 1000;
}

.container1 {
    width: 90%;
    margin: 0 auto;
}

p {
    margin: 0;
    font-size: 14px;
}

body1 {
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

.container2 {
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
<script>
    function validateForm() {
        var phone = document.getElementById("phone").value;
        var phonePattern = /^\d{10}$/;

        if (!phonePattern.test(phone)) {
            alert("Please enter a valid 10-digit phone number.");
            return false;
        }

        return true;
    }
</script>
</head>
<body>

<header>
    <div class="container2">
        <h1>TVflix</h1>
        <nav>
            <ul>
                <li><a href="homepage.jsp">Home</a></li>
                <li><a href="#">Login</a></li>
                <li><a href="#">Create an Account</a></li>
                <li><a href="#">My Account</a></li>
                <li><a href="#">Package Type</a></li>
                <li><a href="#">Admin Portal</a></li>
                <li><a href="login.jsp">Support</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
    </div>
</header>

<form id="contactForm" action="Customerinsert" method="post" onsubmit="return validateForm()">
    <h2 style="color: Blue;">Contact Us</h2>
    <label for="name">Name</label>
    <input type="text" name="name" id="name"><br>
    <label for="email">Email</label>
    <input type="text" name="email" id="email"><br>
    <label for="phone">Phone Number</label>
    <input type="text" name="phone" id="phone"><br>
    <label for="username">User Name</label>
    <input type="text" name="username" id="username"><br>
    <label for="password">Password</label>
    <input type="password" name="password" id="password"><br>
    <label for="message">Message</label>
    <input type="text" name="message" id="message"><br>

    <div style="height: 20px;"></div>
    <input type="submit" name="submit" value="Create Ticket">
</form>

<footer>
    <div class="container1">
        <p>&copy; 2024 TravelEase. All rights reserved.</p>
    </div>
</footer>

</body>
</html>    