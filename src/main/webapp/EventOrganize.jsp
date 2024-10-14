<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="Service.*,java.util.*,Model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event Organize</title>
<link rel="stylesheet" href="">
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

label {
	color: white;
	font-size: 18px;
}

.form-box {
	width: 40%;
	max-width: 800px;
	background-color:#8B008B;
	border-radius: 8px;
	padding: 20px 40px;
	margin-inline: 20px;
	margine-top: 20px;
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
	background-color: #ffffff;
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
.error-message {
    color: red;
    font-size: 14px;
    margin-top: 5px;
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
    <div class="container">
        <div class="form-box">
            <header>
                <h1 id="title">Event Organize</h1>
            </header>
            <form action="EventOrg" method="post" onsubmit="return validateForm()">
                <select id="department" name='event' required>
                    <option value="">Select Event</option>
                    <%
                    EventService eService = new EventServiceImpl();
                    List<EventModel> list = eService.getAllEvents();
                    for (EventModel e : list) {
                    %>
                    <option value='<%=e.getEid()%>'><%=e.getEName()%></option>
                    <%    
                    }
                    %>
                </select> <input type="date" placeholder="Event_Date" id="eventDate" name="eventDate" required> 
                <label for="startTime">Start Time</label> 
                <input type="time" id="startTime" name="startTime" required> 
                <label for="endTime">End Time</label> 
                <input type="time" id="endTime" name="endTime" required> 
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
    </div>
    </div>
    <script>
        function validateForm() {
            var event = document.getElementById("event").value;
            var eventDate = document.getElementById("eventDate").value;
            var startTime = document.getElementById("startTime").value;
            var endTime = document.getElementById("endTime").value;

            if (event.trim() == "" || eventDate.trim() == "" || startTime.trim() == "" || endTime.trim() == "") {
                alert("Please fill in all fields.");
                return false; 
            }
            return true; 
        }
    </script>
</body>
</html>