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

.wt-logo {
	width: 50px;
	height: 50px;
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

.main-container {
	text-align: center;
	padding: 95px 50px;
	overflow: auto;
}

.map-main {
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
	overflow: auto;
}

.regions_div {
	text-align: center;
	vertical-align: middle;
}

.bg-1 {
	background-color: #070719;
	color: #ffffff;
	padding: 25px 20px;
}

.notice-text {
	border: 0;
	font-size: 12px !important;
	color: #fff;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	padding: 25px 25px;
	text-align: left;
	overflow: auto;
	background-color: #070B19;
}

@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
}
</style>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load('current', {
		'packages' : [ 'geochart' ],
		// Note: you will need to get a mapsApiKey for your project.
		// See: https://developers.google.com/chart/interactive/docs/basic_load_libs#load-settings
		'mapsApiKey' : 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
	});
	google.charts.setOnLoadCallback(drawRegionsMap);

	function drawRegionsMap() {
		/* Api에서 따온 데이터 삽입. */
		var data = google.visualization.arrayToDataTable([
				[ 'Country', 'DangerMeter' ],
				/* North Africa */
				[ 'DZ', 100 ], [ 'EG', 100 ], [ 'EH', 100 ], [ 'LY', 100 ],
				[ 'MA', 100 ], [ 'SD', 100 ], [ 'SS', 100 ], [ 'TN', 100 ],
				/* Western Africa */
				[ 'BF', 400 ], [ 'BJ', 400 ], [ 'CI', 400 ], [ 'CV', 400 ],
				[ 'GH', 400 ], [ 'GM', 400 ], [ 'GN', 400 ], [ 'GW', 400 ],
				[ 'LR', 400 ], [ 'ML', 400 ], [ 'MR', 400 ], [ 'NE', 400 ],
				[ 'NG', 400 ], [ 'SH', 400 ], [ 'SL', 400 ], [ 'SN', 400 ],
				[ 'TG', 400 ],
				/* Middle Africa */
				[ 'AO', 700 ], [ 'CD', 700 ], [ 'ZR', 700 ], [ 'CF', 700 ],
				[ 'CG', 700 ], [ 'CM', 700 ], [ 'GA', 700 ], [ 'GQ', 700 ],
				[ 'ST', 700 ], [ 'TD', 700 ],
				/* Estern Africa */
				/* Southern Africa */
				[ 'Germany', 200 ], [ 'US', 300 ], [ 'BZ', 400 ],
				[ 'CA', 500 ], [ 'CZ', 700 ], [ 'FR', 600 ], [ 'RU', 700 ],
				[ 'KR', 200 ] ]);

		var options = {
			colorAxis : {
				colors : [ 'green', 'gold', 'red' ]
			},
			backgroundColor : {
				'fill' : '#070B19',
				'opacity' : 0.1
			},
			datalessRegionColor : '#A4A4A4',
			defaultColor : {
				'fill' : '#070B19',
				'opacity' : 0.1
			},
		};

		var chart = new google.visualization.GeoChart(document
				.getElementById('regions_div'));

		chart.draw(data, options);
	}
</script>
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
	<div class="main-container">
		<div class="map-main row-fluid center-block">
			<h2 style="color: #fff; font-family: fantasy;">WATCH TRIP</h2>
			<p style="color: #fff; font-family: fantasy;">- 우리는 제공한다 안전한 여행을
				-</p>
			<br />
			<div class="regions_div col-sm-8" id="regions_div"
				style="width: 825px; height: 525px;"></div>
			<div class="notice col-sm-4">
				<h3 style="color: #fff; font-family: fantasy;">GUIDE</h3>
				<br />
				<p>
					마우스 커서를 지도의 지역에 드래그 할 경우 <br />해당 지역의 DangerMeter를 알 수 있습니다.
				</p>
				<br/><br/>
				<div class="notice-text">
					<p style="color: red;">붉은색 지역</p>
					<p>범죄/사고 빈도가 매우 많은 지역입니다.</p>
					<p style="color: orange;">주황색 지역
					<p>범죄/사고 빈도가 잦은 지역입니다.</p>
					<p style="color: yellow;">노란색 지역</p>
					<p>범죄/사고 이력이 다수 존재하는 지역입니다.</p>
					<p style="color: green;">녹색 지역</p>
					<p>범죄/사고 이력이 적은 안전한 지역입니다.</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>