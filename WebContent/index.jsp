<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>

	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>FRID</title>


	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<script src="js/common.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	
	<![endif]-->

	</head>
	<body>
	
	
	<div id="fh5co-page">
	<header id="fh5co-header" role="banner">
		<div class="container">
			<div class="header-inner">
				<h1><i class="sl-icon-energy"></i><a href="index.jsp">Lesser</a></h1>
				<nav role="navigation">
					<ul>
						<li><a  class="active" href="index.jsp">Home</a></li>
						<c:if test="${ loggedUser eq null }">
						<li><a href="login.jsp">Log-In</a></li>
						<li><a href="register.jsp">Register</a></li>
						</c:if>
						<li><a href="blog.jsp">About</a></li>
						<c:if test="${ loggedUser ne null }">
						<li><a href="#">View FRID History</a></li>
						<li><a href="registerFrid.jsp">Register FRID</a></li>
						<li><a href="logout.jsp">LogOut</a></li>
						</c:if>
						<li><a href="logout.jsp">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<div id="fh5co-intro-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<h2>Lesser is a creative agency that love to create functional website</h2>
				</div>
			</div>
		</div>
	</div>
	<div id="fh5co-featured-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<a href="#" class="featured-grid" style="background-image: url(images/image_6.jpg);">
						<div class="desc">
							<h3>Work with love</h3>
							<span>Web Design</span>
						</div>
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_2.jpg);">
						<div class="desc">
							<h3>Music Lover</h3>
							<span>Application</span>
						</div>
					</a>
					<div class="row">
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_3.jpg);">
								<div class="desc">
									<h3>Travel</h3>
									<span>Illustration</span>
								</div>
							</a>
						</div>
						<div class="col-md-6">
							<a href="#" class="featured-grid featured-grid-2" style="background-image: url(images/image_8.jpg);">
								<div class="desc">
									<h3>Captured</h3>
									<span>Photo</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-md-12" style="top:231px; margin-top: 8px;">
			<a href=""  onclick="window.history.go(-1); return false;">
			<i class="fa fa-arrow-left" style="font-size: 60px"><!--  --></i>
		</a>
		</div>
	<jsp:include page="footer.jsp"/>
	</div>
	
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- MAIN JS -->
	<script src="js/main.js"></script>

	</body>
</html>

