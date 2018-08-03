<%@page import="java.util.Objects"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library Main</title>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
<script type="text/javascript" language="javascript"
	src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" language="javascript"
	src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#rec').DataTable();
	});
</script>
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
	<table table id="rec" class="table table-hover table-striped table-bordered" style="width: 100%;">
		<tr>
			<th class="border-top border-bottom border-left border-right">번호</th>
			<th class="border-top border-bottom border-right">도서명</th>
			<th class="border-top border-bottom border-right">저자</th>
			<th class="border-top border-bottom border-right">발행년도</th>
			<th class="border-top border-bottom border-right">총페이지</th>
			<th class="border-top border-bottom border-right">크기</th>
			<th class="border-top border-bottom border-right">분류기호</th>
			<th class="border-top border-bottom border-right">편/권차</th>
			<th class="border-top border-bottom border-right">편제</th>
			<th class="border-top border-bottom border-right">ISBN</th>
			<th class="border-top border-bottom border-right">출판사</th>
		</tr>
		<c:forEach items="${list}" var="l">
			<tr>
				<td class="border-bottom border-left border-right">${l.boid}</td>
				<td class="border-bottom border-right">${l.boname}</td>
				<td class="border-bottom border-right">${l.wname}</td>
				<td class="border-bottom border-right">${l.boyear}</td>
				<td class="border-bottom border-right">${l.bopage}</td>
				<td class="border-bottom border-right">${l.bosize}</td>
				<td class="border-bottom border-right">${l.boclass}</td>
				<td class="border-bottom border-right">${l.boseries}</td>
				<td class="border-bottom border-right">${l.boorgani}</td>
				<td class="border-bottom border-right">${l.boisbn}</td>
				<td class="border-bottom border-right">${l.pname}</td>
			</tr>
		</c:forEach>
	</table>
	<div class="text-center">
	<ul class="pagination">
		<c:if test="${PagingUtil.prev}">
			<li><a href="book${PagingUtil.makeQuery(PagingUtil.startPage-1)}">&laquo;</a></li>
		</c:if>
		
		<c:forEach begin="${PagingUtil.startPage}" end="${PagingUtil.endPage}" var = "idx">
			<li>
				<a href="book${PagingUtil.makeQuery(idx)}">${idx}</a>
			</li>
		</c:forEach>
		
		<c:if test="${PagingUtil.next && PagingUtil.endPage > 0 }">
			<li><a href="book${PagingUtil.makeQuery(PagingUtil.endPage +1)}">&raquo;</a></li>
		</c:if>
	</ul>
	</div>
</body>
</html>