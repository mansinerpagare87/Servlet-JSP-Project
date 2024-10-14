<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  background-size: cover; /* or use 'auto' for actual size */
  height: 100vh; /* Set the height of the background */
  width: 100vw; /* Set the width of the background */
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
  height: 600px;
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
.message {
            color: white;
            font-weight: bold;
            font-size:40px;
        }
    </style>
  </head>
  <body>
  <%
        String logoutMessage = (String) request.getAttribute("logoutMessage");
        if (logoutMessage != null) {
    %>
        <p class="message"><%= logoutMessage %></p>
    <%
        }
    %>
       <div class="box">
        <div class="flip-card-inner">
            <div class="box-login">
                <ul>
                    <form action="OrganizerLogIn" method="post">
                        <h1>Organizer Login</h1>
                        <div class="email-login">
                            <input class="inpt" type="email" name="email" id="" placeholder="Email " required>
                            <i class='fa fa-envelope'></i>
                        </div>
                        <div class="password-login">
                            <input class="inpt" type="password" name="password" id="password-login"
                                placeholder="Password" required>
                            <i id="eye-login" class="fa fa-eye-slash"></i>
                        </div>
                        <div class="forget">
                            <input type="checkbox" name="checkbox1" id="checkbox">
                            <label for="checkbox">Remember me</label>
                            <a href="#">Forget Password?</a>
                        </div>
                        <button type="submit" class="btn">LOGIN</button>
                    </form>
                    <div class="register-link">
                        <p>Dont have an account? <a href="#" onclick="flip()">Register</a></p>
                    </div>
                </ul>
            </div>
            <div class="box-signup">
                <ul>
                    <form action="OrganizerRegis" method="post">
                        <h1>Organizer Register</h1>
                        <div class="user-signup">
                            <input class="inpt" type="text" name="Name" id="Name" placeholder="Name">
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="email-signup">
                            <input class="inpt" type="email" name="email" id="email-login" placeholder="Email "
                                required>
                            <i class='fa fa-envelope'></i>
                        </div>
                        <div class="password-signup">
                            <input class="inpt" type="cpntact" name="contact" id="contact-signup"
                                placeholder="Contact" required>
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
                </ul>
            </div>
        </div>
    </div> 
      <script src="JS/register.js"></script>   
     </body>
</html>