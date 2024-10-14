<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Department</title>
<link rel="stylesheet" href="CSS/addevent.css">
<style>

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
.container {
    width: 100%;
    height: 100vh;
    background-image: url('./IMG/999.jpg');
  background-repeat: no-repeat;
  background-size: cover; 
    display: flex;
    justify-content: center;
    align-items: center;   
}

.form-box {
    width: 40%; 
    max-width: 800px; 
    background-color:#8B008B; 
    border-radius: 8px;
    padding: 20px 40px; 
    margin-inline: 20px; 
}
.form-box header h1 {
    text-align: center;
    color: #FFFFFF; 
    }
.form-box form {
    margin-block: 20px; 
}
input, select {
    width: 100%;
    padding: 12px 16px;
    border: none;
    outline: none;
    border-radius: 4px;
    background-color:  #ffffff; 
    font-size: 16px;
    margin: 10px 0; 
}
input[type="submit"] {
    margin-block: 20px;
    background-color: #DAA520; 
    color: #ffffff; 
    font-size: 20px;
    font-weight: 700;
    border-radius: 8px;
    cursor: pointer;
    transition: .4s; 
}
input[type="submit"]:hover {
    background-color: #FF7F50; 
}

@media screen and (max-width:700px) {
    .form-box {
        width: 100%; 
        padding: 20px;
    }
}

</style>
</head>
<body>

<%@include file="OrganizerDashBoard.jsp"%>
 <%
	int did=Integer.parseInt(request.getParameter("departmentid").trim());
	String dname=request.getParameter("departmentname");
%>
<div class="container">

    <div class="form-box">
        <header>
            <h1 id="title">Update Department</h1>
        </header>
        <form name='frm' action="upd" method="post"> 
        	<input type="hidden" placeholder="Department Id" value='<%=did%>' name="departmentid">
            <input type="text" placeholder="Department_Name" id="Alumni_Name" value="<%=dname%>" name="name">
            <input type="submit" value="Sumbit" id="registerBtn"> 
        </form>
    </div>
</div>
</div>
</div>
</body>
</html>