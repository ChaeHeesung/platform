<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
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
	padding: 95px 50px;
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

.wt-atriclemain {
	background-color: #070719;
	vertical-align: middle;
	font-size: 12px !important;
	color: #fff;
	padding: 22px 30px;
	letter-spacing: 4px;
	border-radius: 0;
	line-height: 1.42857143 !important;
	text-align: center;
}

.wt-atricletable {
	background-color: #070B19;
	vertical-align: middle;
	color: #fff;
	padding: 10px 20px;
}

.wt_boardbuttons {
	padding: 15px 0px 0px 0px;
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
	<div class="main-container">
		<div class="wt-atriclemain">
			<h2 style="color: #fff; font-family: fantasy;">FREE BOARD</h2>
			<p style="color: #fff; font-family: fantasy;">- 당신은 쓸 수 있다 문의사항과 후기를 -</p>
			<br /> <br />
			<div class="wt-atricletable">
				<table class="table table-striped">
					<thead>
						<tr>
							<td>번호</td>
							<td>제목</td>
							<td>작성자</td>
							<td>조회수</td>
						</tr>
					</thead>

					<tbody>
						<c:if test="${articlePage.hasNoArticles()}">
							<tr>
								<td colspan="4">게시글이 없습니다.</td>
							</tr>
						</c:if>

						<c:forEach var="article" items="${articlePage.content}">
							<tr>
								<td>${article.number}</td>
								<td><a
									href="read.do?no=${article.number}&pageNo=${articlePage.currentPage}">
										<c:out value="${article.title}" />
								</a></td>
								<td>${article.writer.name}</td>
								<td>${article.readCount}</td>
							</tr>
						</c:forEach>
						<c:if test="${articlePage.hasArticles()}">
							<tr>
								<td align="center" colspan="4"><c:if
										test="${articlePage.startPage > 5}">
										<a href="list.do?pageNo=${articlePage.startPage - 5}">[이전]</a>
									</c:if> <c:forEach var="pNo" begin="${articlePage.startPage}"
										end="${articlePage.endPage}">
										<a href="list.do?pageNo=${pNo}">[${pNo}]</a>
									</c:forEach> <c:if test="${articlePage.endPage < articlePage.totalPages}">
										<a href="list.do?pageNo=${articlePage.startPage + 5}">[다음]</a>
									</c:if></td>
							</tr>
							<tr>
								<td align="right" colspan="4">
									<button type="button" class="btn btn-primary"
										onclick="location.href='write.do'">게시글쓰기</button>
									<button type="button" class="btn btn-primary"
										onclick="location.href='wt_main'">메인 화면</button>
								</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
			<div class="wt_boardbuttons" align="right" colspan="4">
				<button type="button" class="btn btn-primary"
					onclick="location.href='write.do'">게시글쓰기</button>
				<button type="button" class="btn btn-primary"
					onclick="location.href='wt_main'">메인 화면</button>
			</div>
		</div>
	</div>
</body>
</html>