<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>SignUp Form</title>
    <link rel="stylesheet" href="css/signup.css">
    <script>
        function validateForm() {
            const email = document.getElementById("email").value;
            
            if (!email.endsWith("@gmail.com")) {
                alert("Email must end with @gmail.com");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <%@ include file="NavBar.jsp" %>
    <div class="SignUpForm">
        <h1>Signup Form</h1>
        <form action="Signup" method="post" onsubmit="return validateForm()">
            <div class="input-box">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
        
            <div class="input-box">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            
            <div class="input-box">
                <label for="password">Password</label>
                <input type="password" onChange="passwordValid()" id="password" name="password" required>
            </div>
            
            <div class="input-box">
                <label for="country">Country</label>
                <select name="country" id="country">
                    <option value="">Select a Country</option>
                    <option value="Sri Lanka">Sri Lanka</option>
                    <option value="India">India</option>
                    <option value="Australia">Australia</option>
                </select>
            </div>
            
            <div class="input-box">
                <label for="mobile">Mobile No.</label>
                <input type="number" id="mobile" name="mobile">
            </div>
            
            <div class="input-box">
                <label for="gender">Gender</label>
                <select name="gender" id="gender">
                    <option value="">Select a Gender</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="None">Prefer Not to Say</option>
                </select>
            </div>
            
            <div class="input-box preferences">
                <label for="preferences">Preferences</label>
                <div>
                    <div>
                        <input type="checkbox" id="Action" name="Action" value="Action"> 
                        <label for="Action">Action</label>
                    </div>
                    <div>
                        <input type="checkbox" id="Comedy" name="Comedy" value="Comedy"> 
                        <label for="Comedy">Comedy</label>
                    </div>
                    <div>
                        <input type="checkbox" id="Romcom" name="Romcom" value="Romcom"> 
                        <label for="Romcom">Romcom</label>
                    </div>
                    <div>
                        <input type="checkbox" id="Adventure" name="Adventure" value="Adventure"> 
                        <label for="Adventure">Adventure</label>
                    </div>
                </div>
            </div>
            
            <button name="login" id="login" class="logBtn">Signup</button>
        </form>
    </div>
    <script src="js/main.js"></script>
    <%@ include file="footer.jsp" %>
</body>
</html>