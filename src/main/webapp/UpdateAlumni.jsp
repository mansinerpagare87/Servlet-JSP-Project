 <%@page import="Service.*,Model.*,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Alumni</title>
    <link rel="stylesheet" href="CSS/AddAlumni.css">
    <script>
        function validateForm() {
            var name = document.getElementById("nameField").value;
            var email = document.getElementById("email").value;
            var contact = document.getElementById("contact").value;

            if (name.trim() == "") {
                alert("Please enter your name.");
                return false;
            }

            if (email.trim() == "") {
                alert("Please enter your email address.");
                return false;
            } else if (!isValidEmail(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (contact.trim() == "") {
                alert("Please enter your contact number.");
                return false;
            } else if (!isValidContact(contact)) {
                alert("Please enter a valid contact number.");
                return false;
            }

            return true;
        }

        function isValidEmail(email) {
            var re = /\S+@\S+\.\S+/;
            return re.test(email);
        }

        function isValidContact(contact) {
            var re = /^\d{10}$/;
            return re.test(contact);
        }
    </script>
</head>
<body>
    <%@include file="OrganizerDashBoard.jsp"%>
    <%
    	int alumniid=Integer.parseInt(request.getParameter("alumniid").trim());
    	String alumniname=request.getParameter("alumniname");
    	String departmentname=request.getParameter("departmentname");
    %>
    <div class="container">
        <div class="form-box">
            <header>
                <h1 id="title">Update Alumni</h1>
            </header>
            <form action="" method="post" onsubmit="return validateForm()">
            	 <input type="hidden" value='<%=alumniid %>' name="id" required>
                <input type="text" placeholder="Name" id="nameField" value='<%=alumniname %>' name="name" required>
                <input type="email" placeholder="Email" id="email" name="email" required>
                <input type="tel" placeholder="Contact" id="contact" value='' name="contact" required> 
                <input type="number" placeholder="Year" id="year" value='' name="year" min="1900" max="2099" step="1" required>                                 
                <select id="department"  value='<%=departmentname %>' name="department" required>
                    <option value="">Select Department</option>
                    <%
					  DepartmentService dService=new DepartmentServiceImpl();
	            	  List<DepartmentModel> list=dService.getAllDepartments();
	            	  for(DepartmentModel d:list){	  
            		%>
            		<option value='<%=d.getDept_Id()%>'><%=d.getDept_Name() %></option>
            		<% 
            		}%>
                </select>
                <input type="submit" value="Register" id="registerBtn"> 
            </form>
        </div>
    </div>
</body>
</html>