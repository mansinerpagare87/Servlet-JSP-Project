<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Service.*, java.util.*, Model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
</head>
<body>
	<%
		String name = request.getParameter("n");
		if (name == null) {
		    out.println("No search term provided.");
		} else {
		    try {
		        List<DepartmentModel> ls = new DepartmentServiceImpl().searchByName(name);
		        if (ls == null || ls.isEmpty()) {
		            out.println("No departments found.");
		        } else {
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
		      int count = 0;
		      for (DepartmentModel d : ls) {
		%>
	    <tr>
	        <th scope="row"><%= ++count %></th>
	        <td><%= d.getDept_Name() %></td>
	        <td><a href="UpdateDepartment.jsp?departmentid=<%= d.getDept_Id() %>&departmentname=<%= d.getDept_Name() %>">Update</a></td>
	        <td><a href="del?departmentid=<%= d.getDept_Id() %>">Delete</a></td>
	    </tr>
	<%
	            }
	%>
	</tbody>
	</table>
	<%}
	    } catch (Exception e) {
	        e.printStackTrace();
	        out.println("An error occurred: " + e.getMessage());
	    }
	}
	%>
</body>
</html>