<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Alumni Management System</title>
<link rel="shortcut icon" href="../IMG/8.jpg" type="image/svg+xml">
<link rel="stylesheet" href="CSS/index.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&family=Source+Sans+Pro:wght@600;700&display=swap"
	rel="stylesheet">
</head>

<body id="top">
	<!-- 
    - #HEADER
 -->
	<header class="header" data-header>
		<div class="container">
			<div class="overlay" data-overlay></div>
			<a href="#">
				<h1 class="logo">Alumni Management System</h1>
			</a>
			<nav class="navbar" data-navbar>
				<div class="navbar-top">
					<a href="#" class="logo">Alumni</a>
					<button class="nav-close-btn" aria-label="Close Menu"
						data-nav-close-btn>
						<ion-icon name="close-outline"></ion-icon>
					</button>
				</div>
				<ul class="navbar-list">
					<li class="navbar-item"><a href="#home" class="navbar-link"
						data-navbar-link>Home</a></li>

					<li class="navbar-item"><a href="#about" class="navbar-link"
						data-navbar-link>About</a></li>

					<li class="navbar-item"><a href="#services"
						class="navbar-link" data-navbar-link>Events</a></li>

					<li class="navbar-item"><a href="#contact us" class="navbar-link"
						data-navbar-link>Contact Us</a></li>
				</ul>
          </nav>
			<button class="nav-open-btn" aria-label="Open Menu" data-nav-open-btn>
				<ion-icon name="menu-outline"></ion-icon>
			</button>
		</div>
	</header>
	<main>
		<article>
			<!-- 
        - #HERO
      -->
			<section class="hero" id="home">
				<div class="button-container">
					<a href="AlumniRegis.jsp" class="btn"> <ion-icon
							name="person-circle-outline"></ion-icon> Alumni Login
					</a> <a href="OrganizerRegis.jsp" class="btn"> <ion-icon
							name="person-outline"></ion-icon> Organizer Login
					</a>
				</div>			
				</div>
				</div>
			</section>
			<!-- 
        - #ABOUT
      -->
			<section class="section about" id="about">
				<div class="container">
					<figure class="about-banner">
						<img src="./IMG/alumni.jpg" width="700" height="532" loading="lazy"
							alt="about banner" class="w-100 banner-animation">
					</figure>
					<div class="about-content">
						<h2 class="h2 section-title">UpComming Alumni Meet</h2>
						<p class="about-text">In dictum aliquam turpis lacinia
							iaculis. Fusce vel malesuada magna. Nulla vel maximus risus.
							Donec volutpat metus lacinia risus accumsan, ac bibendum libero
							efficitur. </p>

						<p class="about-text">Praesent rhoncus commodo tortor, id
							pulvinar nisl blandit at. Nulla facilisi. Quisque turpis ante,
							vehicula condimentum arcu.</p>

						<ul class="stats-list">
							<li class="stats-card">
								<p class="h3 stats-title">2023</p>
								<p class="stats-text">Computer Department</p>
							</li>
							<li class="stats-card">
								<p class="h3 stats-title">2019</p>
								<p class="stats-text">Civil Department</p>
							</li>
						<li class="stats-card">
								<p class="h3 stats-title">2018</p>

								<p class="stats-text">Meachical Branch</p>
							</li>
						</ul>
					</div>
				</div>
			</section>
			<!-- 
        - #SERVICE
      -->
			<section class="section service" id="services">
				<div class="container">
					<h2 class="h2 section-title underline">Alumni Events</h2>
					<ul class="service-list">
						<li>
							<div class="service-card">
								<div class="card-icon"></div>
								<h3 class="h3 title">How alumni can help current students
									in their career success</h3>
								<p class="text">Active involvement with the alumni provides guidance to 
								the current students in their professional lives. </p>
								<button class="card-btn" aria-label="Show More">
									<ion-icon name="chevron-forward-outline"></ion-icon>
								</button>
							</div>
						</li>
						<li>
							<div class="service-card">
								<div class="card-icon"></div>
								<h3 class="h3 title">Play Treasure Hunt</h3>
								<p class="text">One of the most popular and evergreen ideas
									to make any event, meeting, or party interesting, entertaining,
									and forever memorable is to play treasure hunt.</p>
								<button class="card-btn" aria-label="Show More">
									<ion-icon name="chevron-forward-outline"></ion-icon>
								</button>
							</div>
						</li>
						<li>
							<div class="service-card">
							<div class="card-icon"></div>
								<h3 class="h3 title">The Ultimate Guide to Conduct Virtual
									Alumni Events</h3>
								<p class="text">By hosting virtual events for alumni, you
									can bring students and alumni together from different corners
									of the world. </p>
								<button class="card-btn" aria-label="Show More">
									<ion-icon name="chevron-forward-outline"></ion-icon>
								</button>
							</div>
						</li>
					</ul>
				</div>
			</section>
			<!-- 
        - #FEATURES
      -->

			<!-- 
        - #BLOG
      -->
			<section class="section blog" id="blog">
				<div class="container">
					<h2 class="h2 section-title underline">Our Blog & News</h2>
					<ul class="blog-list">
						<li>
							<div class="blog-card">
								<figure class="banner">
									<a href="#"> <img src="./IMG/img1.jpg" width="750"
										height="350" loading="lazy"
										alt="Vestibulum massa arcu, consectetu pellentesque scelerisque."
										class="img-cover">
									</a>
								</figure>
								<div class="content">
									<h3 class="h3 title">
										<a href="#"> Vestibulum massa arcu, consectetu
											pellentesque scelerisque. </a>
									</h3>
									<p class="text">Sed quis sagittis velit. Aliquam velit
										eros, bibendum ut massa et, consequat laoreet erat nam ac
										imperdiet.</p>
									<div class="meta">
										<div class="publish-date">
											<ion-icon name="time-outline"></ion-icon>
											<time datetime="2023-03-07">7 March, 2023</time>
										</div>
										<button class="comment" aria-label="Comment">
											<ion-icon name="chatbubble-outline"></ion-icon>
											<data value="15">15</data>
										</button>
										<button class="share" aria-label="Share">
											<ion-icon name="share-social-outline"></ion-icon>
										</button>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="blog-card">

								<figure class="banner">
									<a href="#"> <img src="./IMG/img2.jpg"
										width="750" height="350" loading="lazy"
										alt="Quisque egestas iaculis felis eget placerat ut pulvinar mi."
										class="img-cover">
									</a>
								</figure>
								<div class="content">
									<h3 class="h3 title">
										<a href="#"> Quisque egestas iaculis felis eget placerat
											ut pulvinar mi. </a>
									</h3>
									<p class="text">Sed quis sagittis velit. Aliquam velit
										eros, bibendum ut massa et, consequat laoreet erat nam ac
										imperdiet.</p>
									<div class="meta">
										<div class="publish-date">
											<ion-icon name="time-outline"></ion-icon>
											<time datetime="2023-03-07">7 March, 2023</time>
										</div>
										<button class="comment" aria-label="Comment">
											<ion-icon name="chatbubble-outline"></ion-icon>
											<data value="15">15</data>
										</button>
										<button class="share" aria-label="Share">
											<ion-icon name="share-social-outline"></ion-icon>
										</button>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="blog-card">
								<figure class="banner">
									<a href="#"> <img src="./IMG/44.jpg"
										width="750" height="350" loading="lazy"
										alt="Fusce sem ligula, imperdiet sed nisi sit amet, euismod posuere."
										class="img-cover">
									</a>
								</figure>
								<div class="content">
									<h3 class="h3 title">
										<a href="#"> Fusce sem ligula, imperdiet sed nisi sit
											amet, euismod posuere. </a>
									</h3>
									<p class="text">Sed quis sagittis velit. Aliquam velit
										eros, bibendum ut massa et, consequat laoreet erat nam ac
										imperdiet.</p>
									<div class="meta">
										<div class="publish-date">
											<ion-icon name="time-outline"></ion-icon>
											<time datetime="2023-03-07">7 March, 2023</time>
										</div>
										<button class="comment" aria-label="Comment">
											<ion-icon name="chatbubble-outline"></ion-icon>
										<data value="15">15</data>
										</button>
										<button class="share" aria-label="Share">
											<ion-icon name="share-social-outline"></ion-icon>
										</button>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="blog-card">
								<figure class="banner">
									<a href="#"> <img src="./IMG/44.jpg"
										width="750" height="350" loading="lazy"
										alt="Donec feugiat mollis nisi in dignissim. Morbi sollicitudin quis."
										class="img-cover">
									</a>
								</figure>
								<div class="content">
								<h3 class="h3 title">
										<a href="#"> Donec feugiat mollis nisi in dignissim. Morbi
											sollicitudin quis. </a>
									</h3>
									<p class="text">Sed quis sagittis velit. Aliquam velit
										eros, bibendum ut massa et, consequat laoreet erat nam ac
										imperdiet.</p>
									<div class="meta">
										<div class="publish-date">
											<ion-icon name="time-outline"></ion-icon>
											<time datetime="2023-03-07">7 March, 2023</time>
										</div>
										<button class="comment" aria-label="Comment">
											<ion-icon name="chatbubble-outline"></ion-icon>
											<data value="15">15</data>
										</button>
										<button class="share" aria-label="Share">
											<ion-icon name="share-social-outline"></ion-icon>
										</button>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</section>
		</article>
	</main>
	<!-- 
    - #FOOTER
  -->
	<footer class="footer">
		<div class="footer-top section">
			<div class="container">
				<div class="footer-brand">
					<a href="#" class="logo">Alumni Management System</a>
					<p class="text">The key is not to worry about being successful,
						but to instead work toward being significant-and the success will
					naturally follow</p>
					<ul class="social-list">
						<li><a href="#" class="social-link"> <ion-icon
									name="logo-facebook"></ion-icon>
						</a></li>
						<li><a href="#" class="social-link"> <ion-icon
									name="logo-instagram"></ion-icon>
						</a></li>
						<li><a href="#" class="social-link"> <ion-icon
									name="logo-twitter"></ion-icon>
						</a></li>
					</ul>
				</div>
				<ul class="footer-list">
					<li>
						<p class="footer-list-title">Our links</p>
					</li>
					<li><a href="#" class="footer-link">Home</a></li>
					<li><a href="#" class="footer-link">About</a></li>
					<li><a href="#" class="footer-link">Services</a></li>
					<li><a href="#" class="footer-link">Gallary</a></li>
					<li><a href="#" class="footer-link">Contact</a></li>
				</ul>
				<ul class="footer-list">
					<li>
						<p class="footer-list-title">Alumni</p>
					</li>
					<li><a href="#" class="footer-link">Event</a></li>
					<li><a href="#" class="footer-link">Event Organizer</a></li>
					<li><a href="#" class="footer-link">Feedback</a></li>
					<li><a href="#" class="footer-link">Alumni Meets</a></li>
					<li><a href="#" class="footer-link">Admin Login</a></li>
				</ul>
				<ul class="footer-list">
					<li>
						<p class="footer-list-title">Other links</p>
					</li>
					<li><a href="#" class="footer-link">FAQ</a></li>
					<li><a href="#" class="footer-link">Alumni Meet</a></li>
					<li><a href="#" class="footer-link">Privacy Policy</a></li>
					<li><a href="#" class="footer-link">Terms & Conditions</a></li>
					<li><a href="#" class="footer-link">Support</a></li>
				</ul>
				<ul class="footer-list">
					<li>
						<p class="footer-list-title">Contact Us</p>
					</li>
					<li class="footer-item">
						<div class="footer-item-icon">
							<ion-icon name="call"></ion-icon>
						</div>
						<div>
							<a href="tel:+2484214313" class="footer-item-link">+248-421-4313</a>
							<a href="tel:+2486871365" class="footer-item-link">+248-687-1365</a>
						</div>
					</li>
					<li class="footer-item">
						<div class="footer-item-icon">
							<ion-icon name="mail"></ion-icon>
						</div>
						<div>
							<a href="mailto:info@RDesign.com" class="footer-item-link">example@email.com</a>
							<a href="mailto:help@RDesign.com" class="footer-item-link">help@rdesign.com</a>
						</div>
					</li>
					<li class="footer-item">
						<div class="footer-item-icon">
							<ion-icon name="location"></ion-icon>
						</div>
						<address class="footer-item-link">Pontiac, Michigan,
							United States of America</address>
					</li>
				</ul>
			</div>
		</div>
		<div class="footer-bottom">
			<p class="copyright">
				&copy; 2023 <a href="#" class="copyright-link">Rayhan Rana</a>. All
				Right Reserved
			</p>
		</div>
	</footer>
	<!-- 
    - #GO TO TOP
  -->
	<a href="#top" class="go-top  active" aria-label="Go To Top"
		data-go-top> <ion-icon name="arrow-up-outline"></ion-icon>
	</a>
	<script src="JS/index.js"></script>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>