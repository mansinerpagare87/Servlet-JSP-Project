<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Department</title>
<link rel="stylesheet" href="CSS/AddDepartment.css">
<style>
.form-box {
    width: 40%; 
    max-width: 800px; 
    background-color: #8B008B; 
    border-radius: 8px;
    padding: 20px 40px; 
    margin-inline: 20px; 
}
</style>
<script>
function validateForm() {
    var departmentName = document.getElementById("departmentName").value;
    if (departmentName.trim() === "") {
        document.getElementById("errorMsg").innerText = "Department name is required";
        document.getElementById("errorMsg").style.color = "white";
        return false;
    }
    return true;
}

//Function to validate the form
function validateForm() {
    var departmentName = document.getElementById("departmentName").value.trim();
    var regex = /^[a-zA-Z\s]+$/; // Regular expression to allow only letters and spaces
    
    if (departmentName === "") {
        document.getElementById("errorMsg").innerText = "Department name is required";
        document.getElementById("errorMsg").style.color = "white";
        return false;
    } else if (!regex.test(departmentName)) {
        document.getElementById("errorMsg").innerText = "Invalid department name. Only letters and spaces are allowed.";
        document.getElementById("errorMsg").style.color = "white";
        return false;
    }
    
    return true;
}
document.getElementById("departmentName").addEventListener("input", function() {
    // Clear the error message when the user starts typing
    document.getElementById("errorMsg").innerText = "";
});

</script>
</head>
<body>
    <%@include file="OrganizerDashBoard.jsp"%>
    <div class="container">
        <div class="form-box">
            <header>
                <h1 id="title">Add Department</h1>
            </header>
            <form action="AddDepartment" method="post" onsubmit="return validateForm()">
                <input type="text" placeholder="Department Name" id="departmentName" name="departmentName">
                <input type="submit" value="Submit" id="registerBtn">
            </form>
            <div class="msg">
                <p id="errorMsg"></p>
                <% 
                    String message = (String) request.getAttribute("message");
                    if (message != null) {
                        out.println("<h1 style='color:white;font-size:18px;'>" + message + "</h1>");
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>
