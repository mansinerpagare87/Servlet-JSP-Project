<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Service.*, java.util.*, Model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Alumni</title>
</head>
<body>
<%
    String Al_Name = request.getParameter("n");
    if (Al_Name == null) {
        out.println("No search term provided.");
    } else {
        try {
            AlumniRegisterService arService = new AlumniRegisterServiceImpl();
            List<Object[]> li = arService.searchAlumniByName(Al_Name);
            if (li == null || li.isEmpty()) {
                out.println("No alumni found.");
            } else {
%>
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
        int count = 0;
        for(Object obj[]: li) {
    %>
        <tr>
            <th scope="row"><%= ++count %></th>
            <td><%= obj[0] %></td>
            <td><%= obj[1] %></td>
            <td><a href='UpdateAlumni.jsp?alumniid=<%=(int)obj[2] %>&alumniname=<%=obj[0].toString()%>&departmentname=<%=obj[1]%>'>Update</a></td>
            <td><a href='del?alumniId=<%=(int)obj[2]%>'>Delete</a></td>
        </tr>
    <%
        }
    %>
    </tbody>
</table>
<%
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("An error occurred: " + e.getMessage());
        }
    }
%>
</body>
</html>
