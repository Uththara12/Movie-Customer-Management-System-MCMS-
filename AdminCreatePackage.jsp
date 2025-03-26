<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <link rel="stylesheet" href="css/AdminCreatePackage.css">
    <script>
        function validatePrice() {
            var price = document.getElementById("packagePrice").value;
            if (parseFloat(price) < 10) {
                alert("Package price must be 10 or more.");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<%@ include file="AdminNavBar.jsp" %>
<div class="createPackageForm">
    <h1>Create Package</h1>
    <form action="AdminCreatePackage" method="post" onsubmit="return validatePrice()">
        <div class="input-box">
            <label for="packageName">Package Name </label>
            <input type="text"  id="packageName" name="packageName" required>
        </div>
        <div class="input-box">
            <label for="packagePrice">Package Price </label>
            <input type="text"  id="packagePrice" name="packagePrice" required>
        </div>
        <div class="input-box">
            <label for="packageResolution">Package Resolution </label>
            <select id="packageResolution" name="packageResolution" required>
                <option value="">Select a resolution</option>
                <option value="SD">SD</option>
                <option value="HD">HD</option>
                <option value="Full HD">Full HD</option>
                <option value="Ultra HD">Ultra HD</option>
            </select>
        </div>
        <div class="input-box">
            <label for="packageWatchers">Package Watchers</label>
            <input type="number"  id="packageWatchers" name="packageWatchers" required>
        </div>
        <div class="input-box">
            <label for="packageDescription">Package Description </label>
            <textarea rows="10" id="packageDescription" name="packageDescription" required></textarea>
        </div>
        
        <button name="login" id="login" class="logBtn">Create Package</button>
    </form>
</div>
</body>
</html>
    