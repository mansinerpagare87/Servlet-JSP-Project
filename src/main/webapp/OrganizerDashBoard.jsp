<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Organizer Dashboard</title>
<!-- Boxiocns CDN Link -->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css'
	rel='stylesheet'>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
/* Google Fonts Import Link */
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Poppins', sans-serif;
}

body {
	overflow: hidden;
	background-repeat: no-repeat;
	background-size: cover;
}

.sidebar {
	position: fixed;
	top: 0;
	left: 0;
	height: 100%;
	width: 300px;
	background: #8B008B;
	z-index: 100;
	transition: all 0.5s ease;
	overflow-y: auto;
}

.sidebar.close {
	width: 78px;
}

.sidebar .logo-details {
	height: 60px;
	width: 100%;
	display: flex;
	align-items: center;
	margin-top: 50px;
}

.sidebar .logo-details i {
	font-size: 30px;
	color: #fff;
	height: 50px;
	min-width: 78px;
	text-align: center;
	line-height: 50px;
}

.sidebar .logo-details .logo_name {
	font-size: 25px;
	color: #fff;
	font-weight: 600;
	transition: 0.3s ease;
	transition-delay: 0.1s;
}

.sidebar.close .logo-details .logo_name {
	transition-delay: 0s;
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links {
	height: 100%;
	padding: 30px 0 150px 0;
	overflow: auto;
	margin-top: 130px;
}

.sidebar.close .nav-links {
	overflow: visible;
}

.sidebar .nav-links::-webkit-scrollbar {
	display: none;
}

.sidebar .nav-links li {
	position: relative;
	list-style: none;
	transition: all 0.4s ease;
}

.sidebar .nav-links li:hover {
	background: #FF8C00;
}

.sidebar .nav-links li .iocn-link {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.sidebar.close .nav-links li .iocn-link {
	display: block
}

.sidebar .nav-links li i {
	height: 50px;
	min-width: 90px;
	text-align: center;
	line-height: 70px;
	color: #fff;
	font-size: 23px;
	cursor: pointer;
	transition: all 0.3s ease;
}

.sidebar .nav-links li.showMenu i.arrow {
	transform: rotate(-180deg);
}

.sidebar.close .nav-links i.arrow {
	display: none;
}

.sidebar .nav-links li a {
	display: flex;
	align-items: center;
	text-decoration: none;
}

.sidebar .nav-links li a .link_name {
	font-size: 23px;
	font-weight: 700;
	color: #fff;
	transition: all 0.4s ease;
	padding: 15px;
}

.sidebar.close .nav-links li a .link_name {
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links li .sub-menu {
	padding: 6px 6px 14px 80px;
	margin-top: -10px;
	background: #696969;
	display: none;
}

.sidebar .nav-links li.showMenu .sub-menu {
	display: block;
}

.sidebar .nav-links li .sub-menu a {
	color: #fff;
	font-size: 20px;
	padding: 5px 0;
	white-space: nowrap;
	opacity: 0.8;
	transition: all 0.3s ease;
	font-weight: 500px;
}

.sidebar .nav-links li .sub-menu a:hover {
	opacity: 1;
}

.sidebar.close .nav-links li .sub-menu {
	position: absolute;
	left: 100%;
	top: -10px;
	margin-top: 0;
	padding: 10px 20px;
	border-radius: 0 6px 6px 0;
	opacity: 0;
	display: block;
	pointer-events: none;
	transition: 0s;
}

.sidebar.close .nav-links li:hover .sub-menu {
	top: 0;
	opacity: 1;
	pointer-events: auto;
	transition: all 0.4s ease;
}

.sidebar .nav-links li .sub-menu .link_name {
	display: none;
}

.sidebar.close .nav-links li .sub-menu .link_name {
	font-size: 18px;
	opacity: 1;
	display: block;
}

.sidebar .nav-links li .sub-menu.blank {
	opacity: 1;
	pointer-events: auto;
	padding: 3px 20px 6px 16px;
	opacity: 0;
	pointer-events: none;
}

.sidebar .nav-links li:hover .sub-menu.blank {
	top: 50%;
	transform: translateY(-50%);
}

.sidebar .profile-details {
	position: fixed;
	bottom: 0;
	width: 260px;
	display: flex;
	align-items: center;
	justify-content: space-between;
	background: #1d1b31;
	padding: 12px 0;
	transition: all 0.5s ease;
}

.sidebar.close .profile-details {
	background: none;
}

.sidebar.close .profile-details {
	width: 90x;
}

.sidebar .profile-details .profile-content {
	display: flex;
	align-items: center;
}

.sidebar .profile-details img {
	height: 52px;
	width: 52px;
	object-fit: cover;
	border-radius: 16px;
	margin: 0 14px 0 12px;
	background: #1d1b31;
	transition: all 0.5s ease;
}

.sidebar.close .profile-details img {
	padding: 40px;
}

.sidebar .profile-details .profile_name, .sidebar .profile-details .job
	{
	color: #fff;
	font-size: 18px;
	font-weight: 500;
	white-space: nowrap;
}

.sidebar.close .profile-details i, .sidebar.close .profile-details .profile_name,
	.sidebar.close .profile-details .job {
	display: none;
}

.sidebar .profile-details .job {
	font-size: 12px;
}

.home-section {
	position: relative;
	background-image: url('./IMG/999.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	height: 100vh;
	left: 300px;
	width: calc(100% - 260px);
	transition: all 0.5s ease;
}

.sidebar.close ~ .home-section {
	left: 78px;
	width: calc(100% - 78px);
}

.home-content {
	display: flex;
	align-items: center;
	flex-wrap: wrap;
}

.home-section .home-content .bx-menu, .home-section .home-content .text
	{
	color: white;
	font-size: 35px;
}

.home-section .home-content .bx-menu {
	cursor: pointer;
	margin-right: 20px;
}

.home-section .home-content .text {
	font-size: 26px;
	font-weight: 600;
}

@media screen and (max-width: 400px) {
	.sidebar {
		width: 240px;
	}
	.sidebar.close {
		width: 78px;
	}
	.sidebar .profile-details {
		width: 240px;
	}
	.sidebar.close .profile-details {
		background: none;
	}
	.sidebar.close .profile-details {
		width: 78px;
	}
	.home-section {
		left: 240px;
		width: calc(100% - 240px);
	}
	.sidebar.close ~ .home-section {
		left: 78px;
		width: calc(100% - 78px);
	}
}

.side-user {
	margin: 1.8rem 0rem;
}

.side-img {
	height: 150px;
	width: 150px;
	background-size: cover;
	background-repeat: no-repeat;
	margin: auto;
	border: 1px solid gray;
	border-radius: 50%;
	background-image: url("IMG/123.jpg");
	margin-top: 90px;
	margin-left: 90px;
	align-items: center;
}

.user {
	text-align: center;
	color: #fff;
	margin-top: .5rem;
	margin-left: 80px;
	font-size: 20px;
}

.user small {
	display: inline-block;
	color: #fff;
	font-size: 23px;
	padding: 10px;
}

.user small p {
	color: white;
	margin-right: 100px;
}
/* Add these styles at the end of your CSS */
.sidebar.close .side-user {
	margin-top: 0.8rem;
}

.sidebar.close .side-img {
	height: 30px;
	width: 30px;
	margin-top: 30px;
	margin-left: 10px;
}

.sidebar.close .user {
	display: none;
}
</style>
</head>
<body>
<body>
	<div class="container">
		<div class="row flex-nowrap">
			<div class="sidebar close">
				<div class="logo-details">
					<div class="side-user minimize">
						<div class="side-img minimize"
							style="background-image: url(IMG/123.jpg)"></div>
						<div class="user minimize">
							<small>Organizer</small>
							<p><%
                                String organizerName = (String) session.getAttribute("organizerName");
                                if (organizerName != null) {
                                    out.print(organizerName);
                                } else {
                                    out.print("Unknown Organizer");
                                }
                            %></p>
						</div>
					</div>
				</div>
				<ul class="nav-links">
					<li><a href="organizerProfile.jsp"> <i class='bx bx-user'></i> <span
							class="link_name">View Profile</span>
					</a></li>
					<li>
						<div class="iocn-link">
							<a href="#"> <i class='bx bx-building'></i> <span
								class="link_name">Department</span>
							</a> <i class='bx bxs-chevron-down arrow'></i>
						</div>
						<ul class="sub-menu">
							<li><a class="link_name" href="#">Department</a></li>
							<li><a href="AddDepartment.jsp">Add Department</a></li>
							<li><a href="viewdepartment.jsp">View Department</a></li>
						</ul>
					</li>
					<li>
						<div class="iocn-link">
							<a href="#"> <i class='bx bx-calendar'></i> <span
								class="link_name">Event</span>
							</a> <i class='bx bxs-chevron-down arrow'></i>
						</div>
						<ul class="sub-menu">
							<li><a href="AddEvent.jsp">Add Event</a></li>
							<li><a href="viewevent.jsp">View Event</a></li>
						</ul>
					</li>
					<li><a href="#"> <i class='bx bx-cog'></i> <span
							class="link_name">Settings</span>
					</a>
						<ul class="sub-menu blank">
							<li><a class="link_name" href="#">Setting</a></li>
						</ul></li>
					<li>
					<li>
                        <div class="iocn-link">
                            <a href="EventOrganize.jsp"> <i class='bx bx-cog'></i>
                                <span class="link_name">Event Organize</span>
                            </a> <i class='bx bxs-chevron-down arrow'></i>
                        </div>
                        <ul class="sub-menu">
                            <li><a class="link_name" href="EventOrganize.jsp">Event Organize</a></li>
                            <li><a href="viewOrganizedEvent.jsp">View Organized Event</a></li>
                        </ul>
                    </li>
					<li>
						<div class="iocn-link">
							<a href="#"> <i class='bx bx-user'></i> <span
								class="link_name">Alumni</span>
							</a> <i class='bx bxs-chevron-down arrow'></i>
						</div>
						<ul class="sub-menu">
							<li><a class="link_name" href="#">Alumni</a></li>
							<li><a href="AlumniRegisOnOrganizerDashBoard.jsp">Add
									Alumni</a></li>
							<li><a href="viewAlumni.jsp">View All Alumni</a></li>
						</ul>
					<li><a href="LogoutServlet"> <i class='bx bx-log-out'></i>
							<span class="link_name">Log Out</span>
					</a></li>

					</li>
					<li>
			</div>
			<section class="home-section">
				<div class="home-content">
					<i class='bx bx-menu'></i> <span class="text"></span>
			</section>
		</div>
		<script>
		let arrow = document.querySelectorAll(".arrow");
        for (var i = 0; i < arrow.length; i++) {
            arrow[i].addEventListener("click", (e) => {
                let arrowParent = e.target.parentElement.parentElement; //selecting main parent of arrow
                arrowParent.classList.toggle("showMenu");
            });
        }

        let sidebar = document.querySelector(".sidebar");
        let sidebarBtn = document.querySelector(".bx-menu");
        console.log(sidebarBtn);
        sidebarBtn.addEventListener("click", () => {
            sidebar.classList.toggle("close");
        });

  </script>
</body>
</html>