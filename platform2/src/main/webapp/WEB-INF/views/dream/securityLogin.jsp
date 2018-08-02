<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="/login" var="loginUrl" />
     <form:form action="${loginUrl }" method="post" id="loginFrm" name="f" onsubmit="return checkLogin();">
          <input type="text" name="user_id" id="user_id" class="inpt" required="required" placeholder="Your ID" value="${user.id}">
          <label for="email">Your ID</label>
          <input type="password" name="user_pw" id="user_pw" class="inpt" required="required" placeholder="Your password" value="${user.pw }">
						    <label for="password">Your password</label>
          <input type="checkbox" id="remember" class="checkbox" checked>
          <label for="remember">Remember me</label><br>
          <label for="remember" style="width: 270px; color: red; visibility: hidden;" id="loginFalseText">아이디 또는 비밀번호가 틀립니다.</label>
          <div class="submit-wrap">
               <input type="submit" value="Sign in" class="submit">
               <a href="#" class="more">Forgot your password?</a>
          </div>
     </form:form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
var frm = $("#loginFrm")[0];
console.log(frm);
alert('1');
frm.submit();
</script>
</body>
</html>