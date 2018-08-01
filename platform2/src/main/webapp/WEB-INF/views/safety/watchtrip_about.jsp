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
	overflow: auto;
}

.wt-logo {
	width: 50px;
	height: 50px;
}

.main-container {
	padding: 75px 50px;
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

.about {
	background-color: #070719;
	border: 0;
	font-size: 12px !important;
	color: #fff;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	padding: 25px 25px;
	line-height: 1.42857143 !important;
	text-align: center;
	vertical-align: middle;
}

.wt_guide {
	background-color: #070B19;
	border: 0;
	padding: 20px 20px;
	color: #fff;
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
	<br />
	<div class="main-container">
		<div class="about center-block">
			<h2 style="color: #fff; font-family: fantasy;">WATCH TRIP</h2>
			<p style="color: #fff; font-family: fantasy;">- 우리는 제공한다 안전한 여행을
				-</p>
			<br /> <br />
			<div class="wt_guide">
				<h5 style="color: #fff;">위험한 곳에는 어지간하면 가지 않는게 상책.</h5>
				<h5 style="color: #fff;">해당 구역에는 추후 외교부 안전규정이 crawling되어 삽입됩니다.</h5>
			</div>
			<br /> <br />
			<div class="contact center-block">
				<h2 class="text-center">CONTACT US</h2>
				<br />
				<div class="row">
					<div class="col-sm-5">
						<p>문의 사항을 남겨주시면 24시간 내로 답변 드립니다.</p>
						<p>Contact us and we'll get back to you within 24 hours.</p>
						<br /> <br /> <br />
						<p>
							<span class="glyphicon glyphicon-map-marker"></span> Seoul, KR
						</p>
						<p>
							<span class="glyphicon glyphicon-phone"></span> +82 010-6665-5250
						</p>
						<p>
							<span class="glyphicon glyphicon-envelope"></span>
							shkim901101@gmail.com
						</p>
					</div>
					<div class="col-sm-7">
						<div class="row">
							<div class="col-sm-6 form-group">
								<input class="form-control" id="name" name="name"
									placeholder="Name" type="text" required>
							</div>
							<div class="col-sm-6 form-group">
								<input class="form-control" id="email" name="email"
									placeholder="Email" type="email" required>
							</div>
						</div>
						<textarea class="form-control" id="comments" name="comments"
							placeholder="Comment" rows="5"></textarea>
						<br>
						<div class="row">
							<div class="col-sm-12 form-group">
								<button class="btn btn-default pull-right" type="submit">Send</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>