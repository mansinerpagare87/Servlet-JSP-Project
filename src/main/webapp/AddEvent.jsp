<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="Service.*,Model.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Event</title>
<link rel="stylesheet" href="CSS/AddEvent.css">
<style>
.error-message {
    color: white;
    font-size: 14px;
    margin-top: 5px;
}
</style>
</head>
<body>
    <%@ include file="OrganizerDashBoard.jsp" %>
<div class="container">
    <div class="form-box">
        <header>
            <h1 id="title">Add Event</h1>
        </header>
        <form action="AddNewEvent" method="post" onsubmit="return validateForm()"> 
            <input type="text" placeholder="Event Name" id="Event_Name" name="EName" oninput="clearErrorMessage()">
            <span class="error-message" id="eventNameError"></span>
            <table>
                <%
                    DepartmentService dService = new DepartmentServiceImpl();
                    List<DepartmentModel> list = dService.getAllDepartments();
                    for (DepartmentModel m : list) {
                %> 
                <tr>
                    <td>
                        <label class="dept-label">
                            <input type='checkbox' name='department' value='<%= m.getDept_Id() %>' class="dept-checkbox"/>
                            <span class="dept-name"><%= m.getDept_Name() %></span>
                        </label>
                    </td>
                </tr>
                <% } %>
            </table>
            <input type="submit" value="Submit" id="registerBtn"> 
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
<script>
function validateForm() {
    var eventName = document.getElementById("Event_Name").value;
    if (eventName.trim() === "") {
        document.getElementById("eventNameError").innerText = "Please fill in the Event Name field.";
        return false; 
    } else {
        document.getElementById("eventNameError").innerText = "";
    }
    return true; 
}

function clearErrorMessage() {
    document.getElementById("eventNameError").innerText = "";
}

</script>
</body>
</html>
