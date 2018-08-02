<%@page import="java.util.Objects"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library Main</title>
<style type="text/css">
#main {
	background-image:
		url("http://www.nl.go.kr/nl/newdesign/_res/new_img/main/banner/main_img03.jpg");
	background-repeat: no-repeat;
}
</style>
<link rel="stylesheet" type="text/css"
	href="http://www.nl.go.kr/nl/newdesign/_css/main.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body id="main">
	<nav class="navbar navbar-inverse">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar-collapse-3">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="http://localhost:8080/">홈으로</a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse-3">
			<ul class="nav navbar-nav navbar-right">
				<%
					Object login = session.getAttribute("login");

					if (!Objects.isNull(login) && login.equals("ok")) {
					//  로그인 한 경우
					out.append("<li>");
					out.append(session.getAttribute("lname").toString());
					out.append("님 로그인중");
					out.append("<a href='logout.jsp'>로그아웃</a>");
					out.append("</li>");
					} else {
					// 로그인 안한 경우
				%>
					<li><a href="#">로그인</a></li>
				<%
					}
				%>
				<li><a href="http://localhost:8080/library/">검색</a></li>
				<li><a href="http://localhost:8080/library/map">지도</a></li>
				<li><a href="http://localhost:8080/library/recommend">추천도서</a></li>
				<li><a href="http://localhost:8080/library/record">조회기록</a></li>
				<li><a href="http://localhost:8080/library/best">베스트셀러</a></li>
				<li><a href="http://localhost:8080/library/book">도서관리</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div id="mainSearchSection">
		<div class="mainSearchBox">
			<h2 class="hide">검색영역</h2>
			<form id="summon_search"
				action="http://nl.summon.serialssolutions.com/search" method="get"
				name="summon_search">
				<input id="summonq" type="hidden" name="s.q">
			</form>
			<form name="main_search" id="main_search" class="main_search"
				method="get" action="http://www.nl.go.kr/nl/search/search.jsp"
				onsubmit="return false;">
				<input type="hidden" name="all" value="on">
				<fieldset>
					<div class="srchBox">
						<div class="srch" id="sojang"
							style="background-color: #fff; height: 46px;">
							<select class="select" name="topF1" title="검색구분">
								<option value="title">제목</option>
								<option value="author">저자</option>
							</select><span id="guideMsg"
								style="position: absolute; left: 186px; top: 15px; font-size: 12px; font-weight: normal; z-index: 0; color: rgb(119, 119, 119);"></span> <input type="text" class="input_txt" name="kwd"
								id="akcKwd" title="검색어입력" value="" placeholder="검색어를 입력해주세요"
								onkeypress="javascript:if(event.keyCode==13) goMainSearch();"
								autocomplete="off">
							<button type="button" class="input_img"
								onclick="javascript:goMainSearch();">소장자료 검색</button>
						</div>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>