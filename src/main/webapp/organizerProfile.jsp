<!DOCTYPE html>
<%@ page import="Service.*, Model.*, java.util.*" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive View Profile Dashboard</title>
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
            background-image: url('./IMG/999.jpg');
  background-repeat: no-repeat;
  background-size: cover; 
        }
        .form-box {
            width: 60%;
            max-width: 800px;
            background-color:#8B008B;
            border-radius: 8px;
            padding: 20px 40px;
            margin: 20px;
            color: white;
            margin-bottom:300px;
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
        }
        table th {
            background-color: #000080;
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
<%@include file="OrganizerDashBoard.jsp"%>
    <div class="container">
    <%
    HttpSession sess = request.getSession();
    	Object ob = sess.getAttribute("contact");
    	
    %>
    <% OrganizerService oService  = new OrganizerServiceImpl(); %>
        <div class="form-box">
            <h1>Organizer Profile</h1>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Contact</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
            <% List<OrganizerModel> list  = oService.getAllOrganizers();
        	for(OrganizerModel m:list)
        	{
        		if(ob.equals(m.getOrg_Email())){
		%>
                    <tr>
                        <td data-label="Name"><%=m.getOrg_Name() %></td>
                        <td data-label="Email"><%=m.getOrg_Email() %></td>
                        <td data-label="Contact"><%=m.getOrg_Contact() %></td>
                        <td data-label="Actions">                        
                        	<button onclick="editProfile()">Edit</button>
                        </td>
                    </tr>                  
                </tbody>
                <%
        		}
        	}
        %>
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
