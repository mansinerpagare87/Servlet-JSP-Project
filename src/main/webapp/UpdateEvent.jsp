<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="Service.*, Model.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Event</title>
<link rel="stylesheet" href="CSS/addevent.css">
<style>
/* Your CSS styles */
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
<%@ include file="OrganizerDashBoard.jsp" %>
<%
    int eventId = Integer.parseInt(request.getParameter("eventid").trim());
    String eventname = request.getParameter("eventname");
    String departmentname = request.getParameter("departmentname");
%>
<div class="container">
    <div class="form-box">
        <header>
            <h1 id="title">Update Event</h1>
