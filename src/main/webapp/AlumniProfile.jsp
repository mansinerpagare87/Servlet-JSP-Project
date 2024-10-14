<!DOCTYPE html>
<%@ page import="Service.*, Model.*, java.util.*" %>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Alumni Profile</title>
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
	display: flex;
	justify-content: center;
	align-items: center;
	background-color: #f4f4f4;
	background-image: url('./IMG/jr.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
.form-box {
	width: 95%;
	max-width: 1000px;
	background-color: #8B008B;
	border-radius: 8px;
	padding: 20px 40px;
	margin: 20px;
	margin-left:80px;
	margin-bottom:350px;
	color: white;
}
.form-box h1 {
	text-align: center;
	color: #FFFFFF;
}
table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 30px;
}
table th, table td {
	border: 1px solid white;
	padding: 8px;
	text-align: center;
	font-size: 16px;
	vertical-align: middle; /* Align content vertically center */
}
table th {
	background-color: #000080;
	color: white;
	text-align: center; /* Center align text in table headers */
}
table tbody tr:nth-child(even) {
	background-color: rgba(255, 255, 255, 0.1);
}
table tbody tr:hover {
	background-color: rgba(255, 255, 255, 0.2);
}
button {
	padding: 8px 12px;
	border: none;
	background-color: #007bff;
	color: white;
	cursor: pointer;
	border-radius: 4px;
}
button:hover {
	background-color: #0056b3;
}
@media screen and (max-width: 700px) {
	.form-box {
		width: 100%;
		padding: 20px;
	}
	table, thead, tbody, th, td, tr {
		display: block;
	}
	thead tr {
		display: none;
	}
	tr {
		margin-bottom: 15px;
	}
	td {
		padding: 10px;
		text-align: right;
		position: relative;
	}
	td::before {
		content: attr(data-label);
		position: absolute;
		left: 0;
		width: 50%;
		padding-left: 10px;
		font-weight: bold;
		text-align: left;
	}
}
</style>
</head>
<body>
	<%@include file="AlumniDashboard.jsp"%>
	<div class="container">
	<%
		HttpSession sessi=request.getSession();
		Object email=sessi.getAttribute("alumniemail");
	%>
	<% AlumniRegisterService aService=new AlumniRegisterServiceImpl(); %>
		<div class="form-box">
			<h1>Alumni Profile</h1>
			<table>
				<thead>
					<tr>
						<th>Name</th>
						<th>Email</th>
						<th>Contact</th>
						<th>Department</th>
						<th>Pass Out Year</th>
					</tr>
				</thead>
				<tbody>
				<%
					List<Object[]> list=aService.getAllalumniDepartment();
					for(Object[] obj:list){
						if(email.equals(obj[3])){
							%>	
					<tr>
						<td data-label="Name"><%=obj[0] %> </td>
						<td data-label="Email"><%=obj[3] %></td>
						<td data-label="Contact"><%=obj[5] %></td>
						<td data-label="Department"><%=obj[1] %></td>
						<td data-label="Pass Out Year"><%=obj[4] %></td>
					</tr>
					<%}
						}%>
				</tbody>
			</table>
		</div>
	</div>
	</div>
	</div>
	<script>
		function viewProfile(name) {
			alert('Viewing profile of ' + name);
		}

		function editProfile(name) {
			alert('Editing profile of ' + name);
		}
	</script>
</body>
</html>
