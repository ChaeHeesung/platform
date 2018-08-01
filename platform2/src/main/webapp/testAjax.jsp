<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="_csrf_header" content="${_csrf.headerName}" />
<meta name="_csrf" content="${_csrf.token}" />
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	
    var header = $("meta[name='_csrf_header']").attr("content");
    var token = $("meta[name='_csrf']").attr("content");
	$.ajax({
		

        
		url : "/dream/testajax"
		, type : "post"
		, dataType : 'json'
		, data : {
			testdata : 1
		}
		, async : false
		, beforeSend: function(xhr){
			xhr.setRequestHeader(header, token);
		}
		, success : function(data){
			alert('성공');
			console.log(data);
		}
	})
	
	
	
})




</script>
</head>

<body>

</body>
</html>