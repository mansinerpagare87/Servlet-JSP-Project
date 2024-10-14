<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Service.*,Model.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Alumni Register | Log In</title>
    <link rel="stylesheet" href="registerloginadmin.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="CSS/registerlogin.css">
    <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap");
*{
	padding:0;
	margin:0;
	box-sizing:border-box;
}
body {
  font-family: "Poppins", sans-serif;
   background-image: url("./IMG/999.jpg");
  background-repeat: no-repeat;
  color: white;
  background-size: cover; 
  height: 100vh;
  width: 100vw; 
}
.box {
  /*background-color: transparent;
  width: 530px;
  height: 500px;
  perspective: 1000px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);*/
  background-color: rgba(0, 0, 0, 0.5); /* White color with 50% opacity */
  width: 530px;
  height: 650px;
  perspective: 1000px;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  border-radius: 25px;
  box-shadow: 0 4px 8px 10px rgba(0, 0, 0, 0.2);
}
/* .box:hover .flip-card-inner {
            transform: rotateY(-180deg);
        } */
.box-login,
.box-signup {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}
.box-login {
  width: 100%;
  height: 100%;
  font-size: 1.5rem;
    background: transparent;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 25px;
  box-sizing: border-box; 
  position: absolute;
}
.box-login h1 {
  letter-spacing: 2px;
}
.box-signup h1 {
  padding-top: 5px;
  letter-spacing: 2px;
}
.box-login ul {
  padding: 26px;
}
.box-signup ul {
  padding: 10px;
}
.box-login .inpt {
  width: 27rem;
  padding: 15px 10px;
  font-size: 1.4rem;
  border-radius: 15px;
  margin: 15px;
  background: transparent;
  outline: none;
}
input::placeholder {
  color: white;
  font-size: 1.2rem;
}
.btn {
  height: 3.2rem;
  width: 27rem;
  margin: 15px 15px 0 15px;
  padding: 10px;
  font-size: 1.5rem;
  letter-spacing: 0.5px;
  border-radius: 50px;
  background: white;
  color: black;
  font-weight: 700;
  border: none;
  cursor: pointer;
  transition: 0.3s ease;
}
.btn:hover {
  transform: translateY(-0.4rem);
}
.box-login form a {
  text-decoration: none;
  color: white;
  padding-left: 150px;
  font-size: 1rem;
}
label {
  font-size: 1rem;
  cursor: pointer;
}
.box-signup {
  color: white;
  transform: rotateY(180deg);
  width: 100%;
  height: 100%;
  font-size: 1.5rem;
  text-align: center;
  background: transparent;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 25px;
  backdrop-filter: blur(10px);
  position: absolute;
}
.box input {
  color: white;
  border-radius: 0px;
  border: 1px solid white;
}
.box inpt
{
color: white;
  border-radius: 0px;
  border: 1px solid white;


}
.box input:focus{
    border: 2px solid cyan;
}
.box-signup .inpt {
  width: 27rem;
  padding: 15px;
  font-size: 1.2rem;
  border-radius: 15px;
  margin: 10px;
  background: transparent;
  transition: 0.5s ease;
  outline: none;
}
.box-signup form a {
  text-align: right;
  text-decoration: none;
  color: white;
  padding-left: 155px;
  font-size: 1rem;
}
form a:active {
  color: blueviolet;
}
.box-login .register-link {
  font-size: 1rem;
  padding-bottom: 15px;
  font-style: italic;
}
.box-signup .register-link {
  font-size: 1rem;
  padding-bottom: 30px;
  font-style: italic;
}
.register-link a {
  color: blueviolet;
  transition: 0.5s ease;
}
.register-link a:active {
  color: blue;
}
.register-link a:hover {
  color: red;
  transform: scale(1.5);
}
.email-login i {
  position: absolute;
  top: 11rem;
  right: 3.5rem;
  cursor: pointer;
}
.password-login i {
  position: absolute;
  right: 3.5rem;
  top: 16.4rem;
  cursor: pointer;
  transition: 0.3s ease;
}
.user-signup i {
  position: absolute;
  right: 3.8rem;
  top: 8.7rem;
  cursor: pointer;
}
.email-signup i {
  top: 13.3rem;
  position: absolute;
  right: 3.6rem;
  cursor: pointer;
}
.password-signup i {
  top: 17.9rem;
  position: absolute;
  right: 3.7rem;
  cursor: pointer;
  transition: 0.3s ease;
}
.password-signup .inpt
{
   color:white;
   border:1px solid white;
}
<style>
    #s {
    color: red; 
    font-size: 16px; 
    }
    #m
    {
       color:red;
       font-size:16px;
    }
    #e
    {
       color:red;
       font-size:16px;
    }
#error-message {
    display: none; 
    color: red; 
    font-size: 14px;
    margin-top: 5px; 
}

.form-box {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 700px;
            max-width: 1000px;
            background-color: black;
            border-radius: 8px;
            padding: 20px;
        }


@media (max-width: 480px) {
  .box {
    width: 90%;
  }
  .box .inpt {
    width: 85%;
    font-size: 90%;
  }
  .box form a {
    padding-left: 1rem;
    font-size: 0.9rem;
  }
  .box-login ul {
    padding: 5px;
  }
  .btn {
    width: 80%;
  }
}
#contact-signup[name="department"] option {
    color: black;
}
#contact-signup[name="organizer"] option {
    color: black; 
}
 .message {
            color: white;
            font-weight: bold;
            font-size:40px;
        }
    </style>
    <script>  
    document.addEventListener('DOMContentLoaded', function() {
        document.querySelectorAll('input').forEach(function(input) {
            input.addEventListener('focus', function() {
                document.getElementById('s').innerHTML = '';
                document.getElementById('m').innerHTML = '';
                document.getElementById('e').innerHTML = '';
                document.getElementById('error-message').style.display = 'none';
            });
        });
    });

    function nameValidate(str) {
        let pattern = /^[A-Z][a-zA-Z]*$/;
        let digitPattern = /\d/;
        let valid = true;

        if (digitPattern.test(str)) {
            document.getElementById("s").innerHTML = "Name should not contain digits.";
            valid = false;
        } else if (!pattern.test(str)) {
            document.getElementById("s").innerHTML = "Name should start with a capital letter.";
            valid = false;
        } else {
            document.getElementById("s").innerHTML = "";
        }

        return valid;
        
        function clearErrorMessage() {
            document.getElementById("s").innerText = "";
        }
    }

    function validateMobile(mobile) {
        var pattern = /^[6-9]\d{9}$/;
        if (pattern.test(mobile)) {
            document.getElementById("m").innerHTML = "";
            return true;
        } else {
            document.getElementById("m").innerHTML = "Invalid Mobile Number";
            return false;
        }
        function clearErrorMessage() {
            document.getElementById("m").innerText = "";
        }
    }

    function validateEmail(email) {
        let pattern = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;
        if (!pattern.test(email)) {
            document.getElementById("e").innerHTML = "Invalid email format";
            return false;
        } else {
            document.getElementById("e").innerHTML = "";
            return true;
        }
        function clearErrorMessage() {
            document.getElementById("e").innerText = "";
        }
    }

    function validateYear() {
        const passYearInput = document.getElementById('passYear');
        const errorMessage = document.getElementById('error-message');
        const year = passYearInput.value;
        const yearRegex = /^[0-9]{4}$/;

        if (yearRegex.test(year)) {
            errorMessage.style.display = 'none';
            passYearInput.setCustomValidity('');
            return true;
        } else {
            errorMessage.style.display = 'block';
            errorMessage.textContent = "Please enter a valid 4-digit year.";
            passYearInput.setCustomValidity('Invalid year');
            return false;
        }
        function clearErrorMessage() {
            document.getElementById("passYear").innerText = "";
        }
    }

    </script>
    
  </head>
  <body>
       <div class="box">
        <div class="flip-card-inner">
            <div class="box-login">
                <ul>
                    <form action="AlumniLogIn" method="post">
                        <h1>Alumni Login</h1>
                        <div class="email-login">
                            <input class="inpt" type="email" name="email" id="" placeholder="Email " required>
                            <i class='fa fa-envelope'></i>
                        </div>
                       <div class="password-login">
    <input class="inpt" type="password" name="password" id="password-login" placeholder="Password" required>
    <i class="fa fa-eye-slash" id="eye-login"></i>
</div>
                        <div class="forget">
                            <input type="checkbox" name="checkbox1" id="checkbox">
                            <label for="checkbox">Remember me</label>
                            <a href="#">Forget Password?</a>
                        </div>
                        <button type="submit" class="btn">LOGIN</button>
                    </form>
                    <div class="register-link">
                        <p>Don't have an account? <a href="#" onclick="flip()">Register</a></p>
                    </div>
                </ul>
            </div>
            <div class="box-signup">
                <ul>
                    <form action="AlumniRegister" method="post">
                        <h1>Alumni Register</h1>
                        <div class="user-signup">
                            <input class="inpt" type="text" name="name" id="username" placeholder="Name">
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="email-signup">
                            <input class="inpt" type="email" name="email" id="email-login" placeholder="Email "
                                required>
                            <i class='fa fa-envelope'></i>
                        </div>
                        <div class="password-signup">
                            <input class="inpt" type="contact" name="contact" id="contact-signup"
                                placeholder="Contact" required>
                            <i id="eye-signup" class="fa fa-eye-slash"></i>
                        </div>                 
                        <div class="password-signup">
                            <input class="inpt" type="Batch Year" name="passYear" id="contact-signup"
                                placeholder="Batch Year" required>
                            <i id="eye-signup" class="fa fa-eye-slash"></i>
                        </div>                       
                        <div class="password-signup">
    <select class="inpt" name="department" id="contact-signup" required>
        <option value="" disabled selected>Select Department</option>
        <% 
            DepartmentService dService = new DepartmentServiceImpl();
            List<DepartmentModel> departments = dService.getAllDepartments();
            for (DepartmentModel department : departments) { 
        %>
        <option value="<%= department.getDept_Id() %>"><%= department.getDept_Name() %></option>
        <% } %>
    </select>
    
    <i id="eye-signup" class="fa fa-eye-slash"></i>
</div>
                        <div class="forget">
                            <input type="checkbox" name="checkbox1" id="checkbox1">
                            <label for="checkbox1">Remember me</label>
                            <a href="#">Forget Password?</a>
                        </div>
                        <button type="submit" class="btn">Register</button>
                    </form>
                    <div class="register-link">
                        <p>Already have an account? <a href="#" onclick="flipAgain()">Log In</a></p>
                    </div>
                    <div class="msg">
                <% 
                    String message = (String) request.getAttribute("message");
                    if (message != null) {
                        out.println("<h1 style='color:white;font-size:18px;'>" + message + "</h1>");
                    }
                %>
            </div>
                </ul>
            </div>
        </div>
    </div> 
      <script src="JS/register.js"></script>   
     </body>
</html>