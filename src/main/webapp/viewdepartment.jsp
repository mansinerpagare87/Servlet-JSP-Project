<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Service.*, java.util.*, Model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Department</title>

<script type="text/javascript">
    function searchByName(str) {
        let xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("d").innerHTML = this.responseText;
            }
        };
        xhttp.open("GET", "searchbyname.jsp?n=" + encodeURIComponent(str), true);
        xhttp.send();
    }
</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
/* Your custom styles here */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
.container {
    width: 100%;
    height: 100vh; 
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
    margin-top:250px;
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
    margin-top:50px;
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
</head>
<body>
<%@include file="OrganizerDashBoard.jsp"%>
<div class="container">
    <div class="form-box">
        <header>
            <h1 id="title">View Department</h1>
        </header>      
        <div class="input-group mb-3">
            <input type="text" class="form-control search-bar" name="name" placeholder="Search..." aria-label="Search..." aria-describedby="button-addon2" onkeyup="searchByName(this.value)">
        </div>   
        <div id="d">
            <!-- Initial Department List -->
            <%
            DepartmentService dService = new DepartmentServiceImpl();
            List<DepartmentModel> list1 = dService.getAllDepartments();
            int count = 0;
            %>
            <table id="eventTable">
                <thead>
                    <tr>
                        <th>Sr.No</th>
                        <th>Department</th>  
                        <th>Update</th> 
                        <th>Delete</th>                              
                    </tr>
                </thead>
                <tbody>
                <%
                for (DepartmentModel d : list1) {
                %>
                    <tr>
                        <th scope="row"><%= ++count %></th>
                        <td><%= d.getDept_Name() %></td>
                        <td><a href="UpdateDepartment.jsp?departmentid=<%= d.getDept_Id() %>&departmentname=<%= d.getDept_Name() %>"><i class="fas fa-pencil-alt"></i> Update</a></td>
                        <td><a href="del?departmentid=<%= d.getDept_Id() %>"><i class="fa-solid fa-pen-to-square">delete</i></a></td>
                    </tr>
                <%
                }
                %>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript" src="JS/viewdepartment.js"></script>
</body>
</html>
