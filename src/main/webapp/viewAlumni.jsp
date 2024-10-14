<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Service.*, java.util.*, Model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Alumni</title>
<script type="text/javascript">
function searchByName(str) {
    let xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            document.getElementById("d").innerHTML = this.responseText;
        }
    };
    xhttp.open("GET", "searchAlumniByname.jsp?n=" + encodeURIComponent(str), true);
    xhttp.send();
}
</script>
<link rel="stylesheet" href="CSS/style.css">
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
    ; 
    display: flex;
    justify-content: center;
    align-items: center;   
}

.form-box {
    width: 60%; 
    max-width: 800px; 
    background-color:#8B008B; 
    border-radius: 8px;
    padding: 20px 40px; 
    margin-inline: 20px;
    margin-bottom:300px; 
    margin-top:200px;
}
.form-box header h1 {
    text-align: center;
    color: #FFFFFF; 
    }
.form-box form {
    margin-block: 20px; 
}

@media screen and (max-width:700px) {
    .form-box {
        width: 100%; 
        padding: 20px;
    }
}
#eventTable {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
    margin-top:30px;
}

#eventTable th, #eventTable td {
    border: 3px solid white;
    padding: 8px;
    text-align: center;
    color:white;
    margin-top:200px;
    font-size:20px;
    
}

#eventTable th {
    background-color:#000080;
}

/* Container styles */
.container {
    max-width: revert;
    margin: 0 auto;
    padding: 20px;
    background-image: url('./IMG/999.jpg');
  background-repeat: no-repeat;
  background-size: cover;
}
.search-bar {
  width: 100%;
  padding: 10px;
  box-sizing: border-box;
  background-color: #fff;
  border: 3px solid #ccc;
  border-radius: 5px;
  margin-bottom: 20px;
  position: relative;
  margin-top:20px;
}

</style>
<style>
/* Add your CSS styles here */
</style>
</head>
<body>
<%@ include file="OrganizerDashBoard.jsp" %>
<%
    AlumniRegisterService eService = new AlumniRegisterServiceImpl();
    List<Object[]> list = eService.getAllalumniDepartment();
    int count = 0;
%>
<div class="container">
    <div class="form-box">
        <header>
            <h1 id="title">View Alumni</h1>
        </header>
        <div class="input-group mb-3">
            <input type="text" class="form-control search-bar" placeholder="Search..." aria-label="Search..." aria-describedby="button-addon2" onkeyup="searchByName(this.value)">
        </div>
        <div id="d">
            <table id="eventTable">
                <thead>
                    <tr>
                        <th>Sr.no</th>
                        <th>Alumni</th>
                        <th>Department</th>
                        <th>Update</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    for(Object obj[]: list){
                %>
                    <tr>
                        <th scope="row"><%= ++count %></th>
                        <td><%= obj[0] %></td>
                        <td><%= obj[1] %></td>
                        <td><a href='UpdateAlumni.jsp?alumniid=<%=(int)obj[2] %>&alumniname=<%=obj[0].toString()%>&departmentname=<%=obj[1]%>'>Update</a></td>
                        <td><a href='DeleteAlumni?alumniId=<%=(int)obj[2]%>'>Delete</a></td>
                    </tr>
                <%}%> 
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
