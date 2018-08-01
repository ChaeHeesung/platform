<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>로그인 페이지</title>
</head>

<body onload="document.f.id.focus();">

<h3>아이디와 비밀번호를 입력해주세요.</h3>

<c:url value="/login" var="loginUrl" />
<form:form name="f" action="${loginUrl}" method="POST">
    <c:if test="${param.error != null}">
        <p>아이디와 비밀번호가 잘못되었습니다.</p>
    </c:if>
    <c:if test="${param.logout != null}">
        <p>로그아웃 하였습니다.</p>
    </c:if>
    <p>
        <label for="username">아이디</label>
        <input type="text" id="user_id" name="user_id" />
    </p>
    <p>
        <label for="password">비밀번호</label>
        <input type="password" id="user_pw" name="user_pw"/>
        <input type="hidden" id="user_sq" name="user_sq" value="2">
    </p>
    <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
    <button type="submit" class="btn">로그인</button>
</form:form>

					                <form:form action="${loginUrl}" method="post">
						                    <label for="username">Your ID</label>
						                    <input type="text" name="user_sq" id="user_sq" class="inpt" required="required" placeholder="Your ID">
                						    <label for="password">Your password</label>
						                    <input type="password" name="user_pw" id="user_pw" class="inpt" required="required" placeholder="Your password">
						                    <input type="checkbox" id="remember" class="checkbox" checked>
						                    <label for="remember">Remember me</label><br>
						                    <label for="remember" style="width: 270px; color: red; visibility: hidden;" id="loginFalseText">아이디 또는 비밀번호가 틀립니다.</label>
						                    <div class="submit-wrap">
						                    <%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>
							                        <input type="submit" value="Sign in" class="btn">
							                        <button type="submit" class="btn">로그인</button>
							                        <a href="#" class="more">Forgot your password?</a>
						                    </div>
        					        </form:form>


</body>
</html>
