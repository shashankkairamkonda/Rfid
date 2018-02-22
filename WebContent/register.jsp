<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>

	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>FRID</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

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
						<li><a  class="active" href="register.jsp">Register</a></li>
						</c:if>
						<li><a href="blog.jsp">About</a></li>
						<c:if test="${ loggedUser ne null }">
						<li><a href="#">View FRID History</a></li>
						<li><a href="registerFrid.jsp">Register FRID</a></li>
						<li><a href="logout.jsp">LogOut</a></li>
						</c:if>
						<li><a href="contact.jsp">Contact</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</header>
	<div id="fh5co-intro-section">
		<div class="container"">
			<div class="row">
				<div class="col-md-12 text-center">
					<h2>Register</h2>
					<div class="color:red">
					<h3>${message}</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container" style="margin: -100px; margin-left: -194px;">
    <div class="row">
        <div class="col-md-6 col-md-offset-6">
            <div class="panel panel-default">
                <div class="panel-heading text-center"> <strong class="">Register</strong>

                </div>
                <div class="panel-body">
                   <form action="HomeController" method="post" >
                   <input type="hidden" name="action" value="user_registration">
                        <div class="form-group">
                            <label for="inputUsername" class="col-md-4 control-label">User Name</label>
                            <div class="col-md-8">
                                <input type="text" class="form-control" id="inputUsername" name="username" placeholder="Aditya Raj Kumar" required="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputMobile" class="col-md-4 control-label">Mobile</label>
                            <div class="col-md-8">
                                <input type="number" class="form-control" id="inputMobile" name="mobile" placeholder="+1-4759883896" required="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputEmail" class="col-md-4 control-label">Email</label>
                            <div class="col-md-8">
                                <input type="email" class="form-control" id="inputEmail" name="email" placeholder="adityaramjumar@gmail.com" required="required">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputConfirmPassword" class="col-md-4 control-label">Confirm Password</label>
                            <div class="col-md-8">
                                <input type="password" class="form-control" id="inputConfirmPassword" name="confirmPassword" placeholder="Confirm Password" required="required">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="inputPassword" class="col-md-4 control-label">Password</label>
                            <div class="col-md-8">
                                <input type="password" class="form-control" id="inputPassword" name="password" placeholder="Password" required="required">
                            </div>
                        </div>
                        
                        <div class="form-group last">
                            <div class="col-md-offset-3 col-md-9">
                                <button type="submit" class="btn btn-success btn-sm">Sign in</button>
                                <button type="reset" class="btn btn-default btn-sm">Reset</button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="panel-footer">Already Registered..?   <strong><a href="login.jsp" class="">Login here</a></strong>
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

