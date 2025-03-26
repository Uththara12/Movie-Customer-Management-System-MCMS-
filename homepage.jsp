<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<style>
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }

  body {
    font-family: Arial, sans-serif;
    background-color: #000000;
  }

  .container {
    width: 80%;
    margin: 0 auto;
    padding: 20px;
  }

 
  header {
    background-color: #333;
    color: #fff;
    padding: 10px 0;
  }

  header h1 {
    margin-left: 20px;
  }

  nav ul {
    list-style: none;
  }

  nav ul li {
    display: inline;
    margin-right: 20px;
  }

  nav ul li a {
    color: #fff;
    text-decoration: none;
  }

  .hero {
    background-image: url('./images/loginBackground.jpg');
    background-size: cover;
    color: #fff;
    text-align: center;
    padding: 100px 0;
  }

  .hero h2 {
    font-size: 36px;
    margin-bottom: 20px;
  }

  .hero p {
    font-size: 18px;
    margin-bottom: 30px;
  }

  .btn {
    display: inline-block;
    background-color: #f00;
    color: #fff;
    padding: 10px 20px;
    text-decoration: none;
    margin-right: 10px;
  }

  .btn:hover {
    background-color: #000;
  }

  .featured {
    padding: 50px 0;
  }

  .featured h2 {
    font-size: 24px;
    margin-bottom: 20px;
    color: #ffffff;
  }

  .movies {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  .movie {
    margin: 0 10px;
  }

  .movie img {
    width: 200px; 
    height: auto; 
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
  }

  footer {
    background-color: #333;
    color: #fff;
    text-align: center;
    padding: 10px 0;
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
        
         
      </ul>
    </nav>
  </div>
</header>
<main>
  <section class="hero">
    <div class="container">
      <h2>Welcome to TVflix</h2>
      <p>Explore thousands of movies and TV series. Start streaming now!</p>
    </div>
  </section>
  <section class="featured">
    <div class="container">
      <h2>Featured</h2>
      <div class="movies">
        <div class="movie">
          <img src="./images/movie1.jpg" alt="Movie 1">
        </div>
        <div class="movie">
          <img src="./images/movie2.jpg" alt="Movie 2">
        </div>
        <div class="movie">
          <img src="./images/movie3.jpg" alt="Movie 3">
        </div>
        <div class="movie">
          <img src="./images/movie4.jpeg" alt="Movie 4">
        </div>
        <div class="movie">
          <img src="./images/movie5.jpeg" alt="Movie 5">
        </div>
      </div>
    </div>
  </section>
</main>
<footer>
  <div class="container">
    <p>&copy; 2024 TVflix. All rights reserved.</p>
  </div>
</footer>


</body>
</html>