<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Service.*, java.util.*, Model.*" %>
<%
    String eventName = request.getParameter("n");
    EventService eService = new EventServiceImpl();
    List<Object[]> list = eService.searchEventByName(eventName);
%>
<table id="eventTable">
    <thead>
        <tr>
            <th scope="col">Sr.no</th>
            <th scope="col">Event</th>
            <th scope="col">Department</th>
            <th scope="col">Update</th>
            <th scope="col">Delete</th>
        </tr>
    </thead>
    <tbody>
        <%
        int count = 0;
        for(Object[] obj : list) {
        %>
        <tr>
            <th scope="row"><%= ++count %></th>
            <td><%= obj[0] %></td>
            <td><%= obj[1] %></td>
            <td><a href='UpdateEvent.jsp?eventid=<%=(int)obj[2] %>&eventname=<%=obj[0].toString()%>&departmentname=<%=obj[1]%>'>Update</a></td>
            <td><a href='del?eventid=<%=(int)obj[2] %>'>Delete</a></td>
        </tr>
        <%
        }
        %>
    </tbody>
</table>
