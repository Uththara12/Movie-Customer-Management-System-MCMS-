<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        /* General styles */
        body {
           background-image:url('./images/loginBackGround.jpg');
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color:#585858;
        }

        /* Main container */
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        /* Form styles */
        .form-container {
            margin-bottom: 20px;
        }

        .form-container input[type=text],
        .form-container input[type=password] {
            width: calc(100% - 40px);
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .form-container input[type=submit] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 0;
            margin: 8px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-container input[type=submit]:hover {
            background-color: #45a049;
        }

        /* Form headings */
        .form-heading {
            text-align: center;
            margin-bottom: 20px;
        }

        /* Additional content styles */
        .additional-content {
            text-align: center;
            font-size: 16px;
            color: #666;
            margin-top: 20px;
        }

        /* Contact paragraph styles */
        .contact-paragraph {
            font-size: 16px;
            color: #666;
            margin-top: 20px;
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
    <div class="container">
        <h2 class="form-heading">Contact TVflix Customer Support</h2>
        <div class="form-container">
            <form action="LoginServlet" method="post">
                <label for="username">User Name</label>
                <input type="text" id="username" name="username" required><br>
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required><br>
                <input type="submit" name="submit" value="Login">
            </form>
        </div>
        <div class="additional-content">
    <p> Should you wish to connect with us please fill the <a href="customerinsert.jsp">Contact Us form</a>. We are constantly updating this site to provide up-to-date services for you.</p>
</div>
        
    </div>
    <div class="contact-paragraph">
        <p>If you have any further questions, feel free to contact us at support@tvflix.com.</p>
    </div>
    <footer>
  <div class="container1">
    <p>&copy; 2024 TVflix. All rights reserved.</p>
  </div>
</footer>


    
</body>
</html>
