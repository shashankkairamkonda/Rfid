<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
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
						<li><a href="index.jsp">Home</a></li>
						<c:if test="${ loggedUser eq null }">
						<li><a href="login.jsp">Log-In</a></li>
						<li><a href="register.jsp">Register</a></li>
						</c:if>
						<li><a href="blog.jsp">About</a></li>
						<c:if test="${ loggedUser ne null }">
						<li><a href="#">View FRID History</a></li>
						<li><a  class="active" href="#">Register FRID</a></li> 
						<li><a href="logout.jsp">LogOut</a></li>
						</c:if>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<div id="fh5co-blog-section">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center fh5co-heading">
					<h2>Our Blog</h2>
					<p><span>Created with <i class="sl-icon-heart"></i> by the fine folks at <a href="http://freehtml5.co">FreeHTML5.co</a></span></p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-4 text-center">
					<div class="blog-inner">
						<a href="#"><img class="img-responsive" src="images/image_4.jpg" alt="Blog"></a>
						<div class="desc">
							<h3><a href="#">New iPhone 6 Released</a></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="blog-inner">
								<a href="#"><img class="img-responsive" src="images/image_7.jpg" alt="Blog"></a>
								<div class="desc">
									<h3><a href="#">New iPhone 6 Released</a></h3>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
									<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center">
					<div class="blog-inner">
						<a href="#"><img class="img-responsive" src="images/image_5.jpg" alt="Blog"></a>
						<div class="desc">
							<h3><a href="#">Beans</a></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="blog-inner">
								<a href="#"><img class="img-responsive" src="images/image_9.jpg" alt="Blog"></a>
								<div class="desc">
									<h3><a href="#">New iPhone 6 Released</a></h3>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
									<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-4 text-center">
					<div class="blog-inner">
						<a href="#"><img class="img-responsive" src="images/image_6.jpg" alt="Blog"></a>
						<div class="desc">
							<h3><a href="#">Bookmarksgrove right</a></h3>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
							<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="blog-inner">
								<a href="#"><img class="img-responsive" src="images/image_10.jpg" alt="Blog"></a>
								<div class="desc">
									<h3><a href="#">New iPhone 6 Released</a></h3>
									<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.</p>
									<p><a href="#" class="btn btn-primary btn-outline with-arrow">Read More<i class="icon-arrow-right"></i></a></p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div class="col-md-12" style="top:231px; margin-top: 8px;">
	<a href="" onclick="window.history.go(-1); return false;">
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