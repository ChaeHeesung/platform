<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Watchtrip - "우리는 제공한다 안전한 여행을"</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
	background: url('resources/safety/images/wt_bg000.gif') no-repeat center
		center fixed;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-color: #070719;
	overflow: hidden;
}

.wt-logo {
	width: 50px;
	height: 50px;
}

.main-container {
	padding: 350px 50px;
}

.navbar {
	margin-bottom: 0;
	background-color: #070719;
	z-index: 9999;
	border: 0;
	font-size: 12px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #070719 !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

@media only screen and (max-width: 767px) {
	/* Specific to this particular image */
	body {
		left: 50%;
		margin-left: -512px; /* 50% */
	}
}
</style>
</head>
<body>
	<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<img class="wt-logo" src="resources/safety/images/wt_logo.png"
				alt="wt_logo">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="wt_main">WATCHTRIP</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="wt_about">ABOUT</a></li>
				<li><a href="wt_map">MAP</a></li>
				<li><a href="wt_listArticle">BOARD</a></li>
				<li><a href="http://www.mofa.go.kr/www/index.do">MOFA</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="main-container text-center">
		<h1 style="color: #fff; font-family: fantasy;">WATCH TRIP</h1>
		<p style="color: #fff; font-family: fantasy;">우리는 제공한다 안전한 여행을</p>
		<form class="form-inline">
			<div class="input-group">
				<input type="text" class="form-control" size="50"
					placeholder="키워드를 입력하세요" required>
				<div class="input-group-btn">
					<button type="button" class="btn btn-danger">Search</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>