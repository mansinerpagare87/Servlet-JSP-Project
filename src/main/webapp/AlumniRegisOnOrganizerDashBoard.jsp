<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Service.*,Model.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/AlumniRegisOnOrganizerDashBoard.css">
<style>
.form-box {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 700px;
            max-width: 1000px;
            background-color:#8B008B;
            border-radius: 8px;
            padding: 20px;
        }
</style>
</head>
<body>
	<%@include file="OrganizerDashBoard.jsp"%>
    <div class="container">
        <div class="form-box">
            <header>
                <h1 id="title">Alumni Register</h1>
            </header>
            <form action="AlumniRegisterOnDashBoard" method="post" onsubmit="return validateForm()"> 
                <input type="text" placeholder="Name" id="nameField" name="name" required>
                <input type="email" placeholder="Email" id="email" name="email" required>
                <input type="tel" placeholder="Contact" id="contact" name="contact" required> 
                <input type="text" placeholder="Pass Year" id="passYear" name="passYear" required>   
                <select id="department"  name='department' required>
                    <option value="">Select Department</option>
                    <%
					  DepartmentService dService=new DepartmentServiceImpl();
	            	  List<DepartmentModel> list=dService.getAllDepartments();
	            	  for(DepartmentModel d:list){	  
            		%>
            		<option value='<%=d.getDept_Id()%>'><%=d.getDept_Name() %></option>
            		<% 
            		}%>
                </select>
                <input type="submit" value="Register" id="registerBtn"/> 
            </form>
            <div class="msg">
                <% 
                    String message = (String) request.getAttribute("message");
                    if (message != null) {
                        out.println("<h1 style='color:white;font-size:18px;'>" + message + "</h1>");
                    }
                %>
            </div>
        </div>
    </div>
    </div>
    </div>
    <script src="JS/AlumniRegisOnOrganizerDashBoard.js"></script>
</body>
</html>