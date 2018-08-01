<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/shop/css/home.css"> 
<script type="text/javascript">
	$(function() {
		getInstagram();
		var x = 1250;
		var slider = $("#slider");
		var slideArray = $("#slider li");
		var slideMax = slideArray.length - 1;
		var curSlideNo = 0;

		for (i = 0; i <= slideMax; i++) {
			if (i == curSlideNo)
				slideArray[i].style.left = 0;
			else
				slideArray[i].style.left = -x + "px";
		}
		$("#slider").click(function() {
			changeSlide();
		}, false);
		var aniStart = false;
		var next = 1;
		var changeSlide = function() {
			if (aniStart === true)
				return;
			next = curSlideNo + 1;
			if (next > slideMax)
				next = 0;
			aniStart = true;
			sliding();
		}

		function sliding() {
			var curX = parseInt(slideArray[curSlideNo].style.left, 10);
			var nextX = parseInt(slideArray[next].style.left, 10);
			var newCurX = curX + 10;
			var newNextX = nextX + 10;
			if (newCurX >= x) {
				slideArray[curSlideNo].style.left = -x + "px";
				slideArray[next].style.left = 0;
				curSlideNo = curSlideNo + 1;
				if (curSlideNo > slideMax)
					curSlideNo = 0;
				aniStart = false;
				return;
			}
			slideArray[curSlideNo].style.left = newCurX + "px";
			slideArray[next].style.left = newNextX + "px";
			setTimeout(function() {
				sliding();
			}, 20);
		}
		setInterval(changeSlide, 2000);
	});
	function getInstagram() {
		var access_tocken = '5979545878.3919193.a01b97beca604df3ac709f3f26b66215';
		$.ajax({
					url : 'https://api.instagram.com/v1/users/self/media/recent/?access_token='
							+ access_tocken,
					type : "get",
					dataType : "json",
					success : function(data, status) { // 성공함수
						console.log('success');
						var photo = data.data;
						for (var i = 0; i < photo.length; i++) {
							var photo_link = photo[i].images.thumbnail.url;
							var link = photo[i].link;
							//console.log(photo_link);
							$('#insta_wrapper')
									.append(
											"<a href='"+ photo[i].link+"' target='_blank' ><div class='insta_photo'> "
													+ "<img src='"+photo_link+"'></div></a>");
						}
					},
					error : function(data, status) {
						console.log(data);
					}
				});
	}
</script>
		<div id="slidebox">
			<ul id="slider">
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/shop/img/slider/slider1.jpg"></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/shop/img/slider/slider2.jpg"></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/shop/img/slider/slider1.jpg"></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath}/resources/shop/img/slider/slider2.jpg"></a></li>
			</ul>
		</div>
		<div id="mainbanner">
			<div>
				<a href="#"><img src="${pageContext.request.contextPath}/resources/shop/img/slider/ban1.JPG"></a>
			</div>
			<div>
				<a href="#"><img src="${pageContext.request.contextPath}/resources/shop/img/slider/ban2.JPG"></a>
			</div>
			<div>
				 <a href="#"><img src="${pageContext.request.contextPath}/resources/shop/img/slider/ban1	.JPG"></a> 
			</div>
		</div>
		<div class="best_text">
			<div class="home_title">WEEKLY BEST</div>
		</div>
		<div id="weeklywrapper">
			<a href="#"><div class="weeklybest">
					<img class="thumb_photo"
						src="//www.bonzishop.com/web/product/medium/201806/16092_shop1_15289699521634.gif">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a>
			<!-- -4n  -->
			<a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a>
		</div>
		<div class="best_text">
			<div class="home_title">NEW ITEM</div>
		</div>
		<div id="newitem">
			<a href="#"><div class="weeklybest">
					<img class="thumb_photo"
						src="//www.bonzishop.com/web/product/medium/201806/16092_shop1_15289699521634.gif">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a> <a href="#"><div class="weeklybest">
					<img class="thumb_photo"
						src="//www.bonzishop.com/web/product/medium/201806/16092_shop1_15289699521634.gif">
					<div class="slimple_detail">
						<div class="detail_wrapper">
							<ul style="color: white;">
								<li>체크프릴 나시</li>
								<li>13,000</li>
							</ul>
						</div>
						<div class="color_banner">
							<div class="colorbox">
								<div class="color" style="background-color: #453712"></div>
								<div class="color" style="background-color: #253712"></div>
								<div class="color" style="background-color: #751368"></div>
								<div class="color" style="background-color: #155242"></div>
							</div>
						</div>
					</div>
				</div></a>
		</div>
		<div class="best_text">
			<div id="instatext">
				<div class="home_title">INSTAGRAM</div>
			</div>
			<div id="instaid">@call_lim 콜림</div>
		</div>
		<div id="insta_wrapper" ></div>
 
