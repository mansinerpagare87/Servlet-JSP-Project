<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Service.*,Model.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Event Registration</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}
.form-box {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 700px;
            max-width: 1000px;
            background-color:white;
            border-radius: 8px;
            padding: 20px;
        }	
        body {
  overflow: hidden;
  background-image: url('./IMG/333.jpg');
  background-repeat: no-repeat;
  background-size: cover;
  
}
        #form-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: 9999; 
            display: none; 
            overflow-y: auto; 
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

        header {
            text-align: center;
            margin-bottom: 20px;
        }

        #title {
            color: white;
            font-size: 30px;
            margin-top: 20px;
        }

        form {
            margin-top: 20px;
        }

        input, select {
            width: 100%;
            padding: 12px 16px;
            border: none;
            outline: none;
            border-radius: 4px;
            background-color: white;
            font-size: 16px;
            margin: 10px 0;
        }

        input[type="submit"] {
            margin-top: 20px;
            background-color: #DAA520;
            color: white;
            font-size: 20px;
            font-weight: 700;
            border-radius: 8px;
            cursor: pointer;
            transition: .4s;
        }
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
        input[type="submit"]:hover {
            background-color: #FF7F50;
        }

        @media screen and (max-width: 700px) {
            .form-box {
                width: 50%;
            }
        }
        

</style>
</head>
<body>
	<%@include file="AlumniDashboard.jsp"%>
	<div class="container">
		<div class="form-box">
			<header>
                <h1 id="title">Event Registration</h1>
            </header>
            <form action="Registration" method="post" onsubmit="return validateForm()">
            	<input type="text" placeholder="Alumni Name" id="nameField" name="name" required oninput="nameValidate(this.value)">
                <span id="s"></span> 
                <select class="inpt" name="ename" id="contact-signup" required>
        			<option value="" disabled selected>Select Event</option>
        			<% 
			            RegistrationService rService = new RegistrationServiceImpl();
			            List<EventModel> list = rService.getAllOrganizedEvent();
			            for (EventModel d :list) { 
			        %>
			        <option value="<%= d.getEid() %>"><%= d.getEName() %></option>
			        <% } %>
                </select>
                <input type="email" placeholder="Email" id="email" name="email" required oninput="validateEmail(this.value)">
                <span id="e"></span>
                <input type="tel" placeholder="Contact" id="contact" name="contact" required oninput="validateMobile(this.value)">                
                <span id="m"></span>
                </select>
                <input type="submit" value="Register" id="registerBtn"> 
            </form>
		</div>
	</div>
	</div>
	</div>
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
</body>
</html>