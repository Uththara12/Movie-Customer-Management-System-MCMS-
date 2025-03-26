<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>User Account</title>
    <style>
        body {
            font-family: Times New Roman;
            background-color:#585858;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        table {
            border-collapse: collapse;
            width: 40%;
            margin-bottom: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        tr:hover {
            background-color: #f9f9f9;
        }

        input[type="button"] {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            margin: 5px;
        }

        input[type="button"]:hover {
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

<br><br><br>
<table>
    <c:forEach var="cus" items="${cusDetails}">
        <c:set var="id" value="${cus.id}"/>
        <c:set var="name" value="${cus.name}"/>
        <c:set var="email" value="${cus.email}"/>
        <c:set var="phone" value="${cus.phone}"/>
        <c:set var="username" value="${cus.userName}"/>
        <c:set var="password" value="${cus.password}"/>
        <c:set var="message" value="${cus.message}"/>
        <tr>
            <th colspan="2">Ticket Info</th>
        </tr>
        <tr>
            <td>Customer ID</td>
            <td>${cus.id}</td>
        </tr>
        <tr>
            <td>Customer Name</td>
            <td>${cus.name}</td>
        </tr>
        <tr>
            <td>Customer Email</td>
            <td>${cus.email}</td>
        </tr>
        <tr>
            <td>Customer Phone</td>
            <td>${cus.phone}</td>
        </tr>
        <tr>
            <td>Customer User Name</td>
            <td>${cus.userName}</td>
        </tr>
        <tr>
            <td>Customer Password</td>
            <td>${cus.password}</td>
        </tr>
        <tr>
            <td>Customer Message</td>
            <td>${cus.message}</td>
        </tr>
    </c:forEach>
</table>
<div>
    <c:url value="updatecustomer.jsp" var="cusupdate">
        <c:param name="id" value="${id}"></c:param>
        <c:param name="name" value="${name}"></c:param>
        <c:param name="email" value="${email}"></c:param>
        <c:param name="phone" value="${phone}"></c:param>
        <c:param name="uname" value="${username}"></c:param>
        <c:param name="pass" value="${password}"></c:param>
        <c:param name="message" value="${message}"></c:param>
    </c:url>
    <a href="${cusupdate}">
        <input type="button" name="update" value="Update">
    </a>
    <c:url value="deletecustomer.jsp" var="cusdelete">
        <c:param name="id" value="${id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="email" value="${email}"/>
        <c:param name="phone" value="${phone}"/>
        <c:param name="uname" value="${username}"/>
        <c:param name="pass" value="${password}"/>
        <c:param name="message" value="${message}"/>
    </c:url>
    <a href="${cusdelete}">
        <input type="button" name="delete"  value="Delete">
    </a>
</div>

<footer>
  <div class="container">
    <p>&copy; 2024 TVflix. All rights reserved.</p>
  </div>
</footer>

</body>
</html>
