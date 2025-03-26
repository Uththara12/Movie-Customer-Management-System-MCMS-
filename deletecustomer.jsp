<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Customer Account Delete</title>
    <style>
        body {
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background-color:#585858;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        h2 {
            margin: 0;
            margin-bottom: 20px;
            color: #333;
        }

        form {
            width: 50%;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: calc(100% - 22px);
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
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
                <li><a href="#">Activate a Package</a></li>
                <li><a href="#">My Package</a></li>
                <li><a href="#">Admin Login</a></li>
                <li><a href="adminportal.jsp">Admin Portal</a></li>
                <li><a href="login.jsp">Support</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
    </div>
</header>

<h2> Delete Ticket</h2>
<form action="DeleteCustomerServlet" method="post">
    <% String id = request.getParameter("id"); %>
    Customer ID <input type="text" name="cusid" value="<%= id %>" readonly><br>
    <% String name = request.getParameter("name"); %>
    Name <input type="text" name="name" value="<%= name %>" readonly><br>
    <% String email = request.getParameter("email"); %>
    Email <input type="text" name="email" value="<%= email %>" readonly><br>
    <% String phone = request.getParameter("phone"); %>
    Phone Number <input type="text" name="phone" value="<%= phone %>" readonly><br>
    <% String userName = request.getParameter("uname"); %>
    User Name <input type="text" name="uname" value="<%= userName %>" readonly><br>
    <% String message = request.getParameter("message"); %>
    Message <input type="text" name="message" value="<%= message %>" readonly><br>
    <input type="submit" name="submit" value="Delete My Ticket">
</form>

<footer>
  <div class="container">
    <p>&copy; 2024 TVflix. All rights reserved.</p>
  </div>
</footer>

</body>
</html>

 