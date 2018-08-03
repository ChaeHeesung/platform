<%@page import="java.util.Objects"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library Main</title>
<link rel="stylesheet" type="text/css"
	href="http://www.nl.go.kr/nl/newdesign/_css/main.css">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
	<style>
    .data-table {
        border-collapse: collapse;
    }
    .border-bottom {
        border-bottom: 1px solid #000;
    }
    .border-right {
        border-right: 1px solid #000;
    }
</style>
<style type="text/css">
	#dd ul li {
		display: none;
	}
	
	#dd:hover ul li {
		display: block;
	}
	
</style>
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
				<li id="dd"><a href="http://localhost:8080/library/book">관리자메뉴</a>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="http://localhost:8080/library/book">도서관리</a>
						<li><a href="http://localhost:8080/library/book">도서관리</a>
						<li><a href="http://localhost:8080/library/book">도서관리</a>
					</ul>
				</li>
				<li><a href="http://localhost:8080/library/">검색</a></li>
				<li><a href="http://localhost:8080/library/map">지도</a></li>
				<li><a href="http://localhost:8080/library/recommend">추천도서</a></li>
				<li><a href="http://localhost:8080/library/record">조회기록</a></li>
				<li><a href="http://localhost:8080/library/best">베스트셀러</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<table class="data-table" style="margin-left: auto; margin-right: auto;">
    <tr>
        <th class="border-bottom border-right">도서명</th>
        <th class="border-bottom border-right">저자</th>
        <th class="border-bottom border-right">출판사</th>
        <th class="border-bottom">조회일</th>
    </tr>
    <tr>
        <td class="border-right">당신에게 고양이</td>
        <td class="border-right">이용한</td>
        <td class="border-right">꿈의지도</td>
        <td>2018.07.16</td>
    </tr>
    <tr>
        <td class="border-right"></td>
        <td class="border-right"></td>
        <td class="border-right"></td>
        <td></td>
    </tr>
    <tr>
        <td class="border-right"></td>
        <td class="border-right"></td>
        <td class="border-right"></td>
        <td></td>
    </tr>
    <tr>
        <td class="border-right"></td>
        <td class="border-right"></td>
        <td class="border-right"></td>
        <td></td>
    </tr>
</table>
</body>
</html>