<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<style>
.container input[type="button"] {
    outline: none;
    color: #fff;
    padding: 0.6em 2em;
    font-size: 1em;
    margin: 1em 0 0 0;
    -webkit-appearance: none;
    background: #f44336; 
    border: 2px solid #f44336;
    -webkit-transition: 0.5s all; 
    -moz-transition: 0.5s all;
	transition: 0.5s all;
}
.container input[type="button"]:hover {
    background: none;
    color: #f44336;
}
.container input[type="text"], .contact input[type="email"] {
    width: 32.3%;
    color: #999;
    float: left;
    background: none;
    outline: none;
    font-size: 1em;
    padding: .7em 1em;
    margin-bottom: 1.5em;
    border: solid 1px #ccc;
    -webkit-appearance: none;
    display: inline-block;
}
</style>
<script type="text/javascript">
function goPopup(){
	var pop = window.open("/dream/jusopopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}

function jusoCallBack(addr,addrDetail, zipNo, sggNm, emdNm){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.form.addr.value = addr;
	document.form.addrDetail.value = addrDetail;
	document.form.zipNo.value = zipNo;
	console.log(sggNm);
	$(function(){
	  	$.ajax({
	        type : "POST",
	        url : "/selectDongCD",
	        data : {
	        	sigungu_nm : sggNm,
	        	dong_nm : emdNm
	        }, 
	        success : function(data){
	        	console.log(data);
	        	document.form.dong_cd.value = data.dong_cd;
	        }
		})
		
	 
		// 좌표 값 구하기
	    // var header = $("meta[name='_csrf_header']").attr("content");
	    // var token = $("meta[name='_csrf']").attr("content");
		$.ajax({
			url : "/dream/getcoordinates"
			, type : "post"
			, dataType : 'json'
			, data : {
				address : addr
			}
			, async : false
			// , beforeSend: function(xhr){
			//	xhr.setRequestHeader(header, token);	// 헤드의 csrf meta태그를 읽어 CSRF 토큰 함께 전송
			//}
			, success : function(data){
				document.form.coordinateX.value = data.result.items[0].point.x;
				document.form.coordinateY.value = data.result.items[0].point.y;
				console.log(data);
				console.log(data.result.items[0].point.x);
			}
		})
		
		
		
		
	})

}



</script>
			<div class="w3layouts-banner-info">
				<div class="container">
					<div class="w3layouts-banner-slider">
						<div class="w3layouts-banner-top-slider">
							<div class="slider">
								<div class="callbacks_container">
									<ul class="rslides callbacks callbacks1" id="slider4">
										<li>
											<div class="w3ls-text">
												<div class="w3ls-text-info">
													<h2>Creative agency</h2>
												</div>
											</div>
										</li>
										<li>
											<div class="w3ls-text">
												<div class="w3ls-text-info">
													<h2>Customized Solutions</h2>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div class="clearfix"> </div>
								<script src="${pageContext.request.contextPath}/resources/dream/js/responsiveslides.min.js"></script>
								<script>
									// You can also use "$(window).load(function() {"
									$(function () {
									  // Slideshow 4
									  $("#slider4").responsiveSlides({
										auto: true,
										pager:true,
										nav:true,
										speed: 500,
										namespace: "callbacks",
										before: function () {
										  $('.news').append("<li>before event fired.</li>");
										},
										after: function () {
										  $('.news').append("<li>after event fired.</li>");
										}
									  });
								
									});
								 </script>
								<!--banner Slider starts Here-->
							</div>
						</div>
					</div>
				</div>
			</div> 
		</div>
	</div>
	<!-- //banner -->
	<!-- contact -->
	<div id="contact" class="contact agileits">
		<div class="container">  
			<div class="agileits-title">
				<h3>공간전공생 글쓰기</h3>
				<p>Aliquam maximus cras cursus, nunc sit amet </p>
			</div>
			
			<div class="contact-agileinfo contact-form wthree"> 
				<form action="#" method="post" name="form" id="form">
					<input type="text" name="Name" placeholder="제목" style="width: 100%">
					<div style="width: 100%; float: left; ">
					<div style="float: left; width: 25%;">
						<input type="text" name="Name" placeholder="희망금액" style="width: 80%;">&nbsp;&nbsp;&nbsp;&nbsp;
					</div>
					<div style="float: left; width: 25%;">
						<select style="height: 40px; width: 80%"><option>--공간대여분야--</option><option>카페</option><option>음식점</option><option>주점</option><option>카페</option></select>
					</div>
					<div style="float: left; width: 24%;">
						<input type="date" id="startDate" style="width: 80%">
					</div>
					<div style="float: left; width: 2%; display: table;">
						<strong style=" display:table-cell; text-align:center; vertical-align:middle;">~</strong>
					</div>
					<div style="float: left; width: 24%;">
						<input type="date" id="endDate" style="width: 80%; float: right">
					</div>
					
					</div>
					<div style="width: 100%; float: left;">
						<input type="file"><br>
						<table style="width: 100%;" border="1">
							<thead>
								<tr>
									<td style="width: 15%">선택</td>
									<td>파일명</td>
									<td>용량</td>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox"></td>
									<td>파일명</td>
									<td>17mb</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div style="width: 100%; float: left;"><input type="text" id="zipNo" name="zipNo" placeholder="우편번호" style="width: 15%;" >&nbsp;&nbsp;&nbsp;&nbsp;<button onclick="goPopup()" value="팝업_domainChk" type="button">우편번호 찾기</button></div>
					<input type="text" id="addr" name="addr" placeholder="주소" style="width: 40%">
					<input type="text" id="addrDetail" name="addrDetail" placeholder="상세주소" style="width: 60%">
					<input type="hidden" id="sigungu_nm" name="sigungu_nm">
					<input type="hidden" id="dong_cd" name="dong_cd">
					
					<input type="hidden" id="coordinateX" name="coordinateX">
					<input type="hidden" id="coordinateY" name="coordinateY">
					
					<textarea placeholder="내용" name="Message"></textarea>
					<input type="submit" value="SUBMIT">
				</form>
			</div>
		</div>
	</div>
	<!-- //contact -->  
	
<script>
	document.getElementById('startDate').valueAsDate = new Date();
	document.getElementById('endDate').valueAsDate = new Date();
</script>