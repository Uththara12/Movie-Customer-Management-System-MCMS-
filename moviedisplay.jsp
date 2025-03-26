<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movies</title>
<style>
body {
  background-image: url('./images/loginBackground.jpg');
  background-size: cover;
  background-attachment: fixed;
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  display: flex;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
}

div {
  background-color: rgba(0, 0, 0, 0.5); 
  padding: 20px;
  border-radius: 5px;
  color: #fff; /* White text */
}

table {
  width: 100%;
  border-collapse: collapse;
  margin: 0 auto; 
}

th, td {
  padding: 10px;
  text-align: left;
  border: 1px solid #ddd;
 
  color: white;

}

th {
  background-color: #333; 
  color: #fff; 
}

.movie-details {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin-top: 20px;
}

.movie-poster {
  width: 200px;
  height: auto;
  margin-bottom: 10px;
}

.movie-url {
  color: #007bff; /* Blue for movie URL */
  text-decoration: underline;
}



input[type="button"]:hover {
  background-color: #0062cc; /* Darker blue on hover */
}

input[type="button"] {
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  background-color: #007bff; 
  color: #fff; 
  cursor: pointer;
  margin-right: 10px;
}
h1 {
  font-size: 24px;
  margin-bottom: 15px;
  color: white;
}


</style>
</head>
<body>
<%@ include file="Anavbar.jsp" %>
<div>
    <h1>Added Movie</h1>
    <table>
      <c:forEach var="movies" items="${mDetails}">
       <c:set var="id" value="${movies.id }"/>
        <c:set var="name" value="${movies.name }"/>
        <c:set var="description" value="${movies.description }"/>
        <c:set var="year" value="${movies.year }"/>
        <c:set var="genre" value="${movies.genre }"/>
        <c:set var="poster" value="${movies.poster }"/>
       <c:set var="movieurl" value="${movies.movieurl }"/>
    <tr>
        <td>Movie ID</td>
        <td>${movies.id}</td>
    </tr> 
    <tr>
        <td>Title</td>
        <td>${movies.name}</td>
    </tr> 
    <tr>
        <td>Description</td>
        <td>${movies.description}</td>
    </tr> 
    <tr>
        <td>Year</td>
        <td>${movies.year}</td>
    </tr>
    <tr> 
        <td>Genre</td>
        <td>${movies.genre}</td>
    </tr> 
    <tr>
        <td>Poster</td>
        <td>${movies.poster}</td>
    </tr> 
    <tr>
        <td>Movie URL</td>
        <td>${movies.movieurl}</td>
    </tr>
   
</c:forEach>
      
              
                    
               
           
    </table>
     <c:url value="updatemovie.jsp" var="mupdate">
               <c:param name="id" value="${id }"/>
                <c:param name="name" value="${name }"/>
                 <c:param name="description" value="${description }"/>
                  <c:param name="year" value="${year}"/>
                   <c:param name="genre" value="${genre}"/>
                    <c:param name="poster" value="${poster}"/>
                     <c:param name="movieurl" value="${movieurl}"/> 
             </c:url>
    
     <a href="${mupdate}">
            <input type="button" value="Update Details" name="update">
            </a>
            
            <c:url value="deletemovie.jsp" var="mdelete">
            <c:param name="id" value="${id }"/>
                <c:param name="name" value="${name }"/>
                 <c:param name="description" value="${description }"/>
                  <c:param name="year" value="${year}"/>
                   <c:param name="genre" value="${genre}"/>
                    <c:param name="poster" value="${poster}"/>
                     <c:param name="movieurl" value="${movieurl}"/> 
          
                  </c:url>
            <a href="${mdelete}">
            <input type="button" value="Delete Details" name="delete">
            </a>
</div>
 <%@ include file="footer.jsp" %>
</body>
</html>
