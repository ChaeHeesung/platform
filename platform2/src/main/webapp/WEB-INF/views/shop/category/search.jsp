<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/shop/css/new.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/shop/css/search.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		console.log($("keyword"));
	});
</script>
<div id="contents">
	<div class="category_name">SEARCH</div>
		<div id="searchWrapper"
			style="text-align: center; font: 12px Nanum Gothic;  width: 500px; height: 300px; margin: auto; padding-top: 30px;">
			<div class="item" style="">
				<strong style="">상품분류</strong> <select id="category_no"
					name="category_no">
					<option value="" selected="selected">상품분류 선택</option>
					<option value="1">BY:BONZI</option>
					<option value="2">NEW</option>
					<option value="3">BEST</option>
					<option value="4">NEW5%신상 5%할인</option>
					<option value="29">TOP상의</option>
					<option value="34">OUTER겉옷</option>
					<option value="30">PANTS하의</option>
					<option value="47">SKIRT&DRESS치마&원피스</option>
					<option value="32">JEWELRY악세사리</option>
					<option value="48">BAG가방</option>
					<option value="31">SHOES신발</option>
					<option value="51">ETC기타</option>
					<option value="33">SALE세일</option>
				</select>
			</div>
			<div class="item" style="">
				<strong>검색조건</strong> <select id="search_type" name="search_type">
					<option value="product_name">상품명</option>
					<option value="product_code">상품코드</option>
				</select> <input id="keyword" name="keyword" class="inputTypeText"
					placeholder="" size="15" value="" type="text" />
			</div>
			<div class="popular" id="except_keyword_wrap_id">
				<strong>제외검색어</strong> <input id="exceptkeyword"
					name="exceptkeyword" class="inputTypeText" placeholder="" size="15"
					value="" type="text" />
			</div>

			<div class="item">
				<strong>판매가격대</strong> <input id="product_price1"
					name="product_price1" class="input01" placeholder="" size="15"
					value="" type="text" /> ~ <input id="product_price2"
					name="product_price2" fw-filter="isNumber" class="input01"
					placeholder="" size="15" value="" type="text" />
			</div>
			<div class="item">
				<strong>검색정렬기준</strong> <select id="order_by" name="order_by">
					<option value="" selected="selected">::: 기준선택 :::</option>
					<option value="recent">신상품 순</option>
					<option value="name">상품명순</option>
					<option value="priceasc">낮은가격 순</option>
					<option value="price">높은가격 순</option>
					<option value="manu_name">제조사 순</option>
					<option value="review">사용후기 순</option>
				</select>
			</div>
			<p class="button">
				<input type="image" src="${pageContext.request.contextPath}/resources/shop/img/search_btn.JPG" alt="검색"
					style="padding-right: 10px; float: right; width: 100px; padding-top: 20px;" />
			</p>
		</div>

<!--  search result -->
<div class="searchResult">
        <p class="record">총 <strong>28</strong> 개 의 상품이 검색되었습니다.</p>
        <ul class="xans-element- xans-search xans-search-orderby listType"><li rel="recent" style="" class="btn_order xans-record-">신상품</li>
<li rel="name" style="" class="btn_order xans-record-">상품명</li>
<li rel="priceasc" style="" class="btn_order xans-record-">낮은가격</li>
<li rel="price" style="" class="btn_order xans-record-">높은가격</li>
<li rel="manu_name" style="" class="btn_order xans-record-">제조사</li>
<li rel="review" style="" class="btn_order xans-record-">사용후기</li>
</ul>
</div>




	<div class="items_wrapper" >
		 <ul class="items_table">
 
<li class="table_div">
 <div class="item_photo" ><a href="#"><img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png"></a></div>
 <div class="item_info" > 
<span class="item_name">리퍼트 트임 데님 숏팬츠 - pt</span>
 <div class="color_banner">
	<div class="colorbox">
		<div class="color" style="background-color: #453712"></div>
		<div class="color" style="background-color: #253712"></div>
		<div class="color" style="background-color: #751368"></div>
		<div class="color" style="background-color: white"></div>
	</div>
</div>
<span class="item_price">13,000</span>
 <span class="item_detail">주문폭주</span>
 </div>
 </li>
 <li class="table_div">
 <div class="item_photo" ><a href="#"><img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png"></a></div>
 <div class="item_info" > 
<span class="item_name">리퍼트 트임 데님 숏팬츠 - pt</span>
 <div class="color_banner">
	<div class="colorbox">
		<div class="color" style="background-color: #453712"></div>
		<div class="color" style="background-color: #253712"></div>
		<div class="color" style="background-color: #751368"></div>
		<div class="color" style="background-color: white"></div>
	</div>
</div>
<span class="item_price">13,000</span>
 <span class="item_detail">주문폭주</span>
 </div>
 </li>
 <li class="table_div">
 <div class="item_photo" ><a href="#"><img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png"></a></div>
 <div class="item_info" > 
<span class="item_name">리퍼트 트임 데님 숏팬츠 - pt</span>
 <div class="color_banner">
	<div class="colorbox">
		<div class="color" style="background-color: #453712"></div>
		<div class="color" style="background-color: #253712"></div>
		<div class="color" style="background-color: #751368"></div>
		<div class="color" style="background-color: white"></div>
	</div>
</div>
<span class="item_price">13,000</span>
 <span class="item_detail">주문폭주</span>
 </div>
 </li>
 <li class="table_div">
 <div class="item_photo" ><a href="#"><img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png"></a></div>
 <div class="item_info" > 
<span class="item_name">리퍼트 트임 데님 숏팬츠 - pt</span>
 <div class="color_banner">
	<div class="colorbox">
		<div class="color" style="background-color: #453712"></div>
		<div class="color" style="background-color: #253712"></div>
		<div class="color" style="background-color: #751368"></div>
		<div class="color" style="background-color: white"></div>
	</div>
</div>
<span class="item_price">13,000</span>
 <span class="item_detail">주문폭주</span>
 </div>
 </li>
 
 <li class="table_div">
 <div class="item_photo" ><a href="#"><img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png"></a></div>
 <div class="item_info" > 
<span class="item_name">리퍼트 트임 데님 숏팬츠 - pt</span>
 <div class="color_banner">
	<div class="colorbox">
		<div class="color" style="background-color: #453712"></div>
		<div class="color" style="background-color: #253712"></div>
		<div class="color" style="background-color: #751368"></div>
		<div class="color" style="background-color: white"></div>
	</div>
</div>
<span class="item_price">13,000</span>
 <span class="item_detail">주문폭주</span>
 </div>
 </li>
 <li class="table_div">
 <div class="item_photo" ><a href="#"><img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png"></a></div>
 <div class="item_info" > 
<span class="item_name">리퍼트 트임 데님 숏팬츠 - pt</span>
 <div class="color_banner">
	<div class="colorbox">
		<div class="color" style="background-color: #453712"></div>
		<div class="color" style="background-color: #253712"></div>
		<div class="color" style="background-color: #751368"></div>
		<div class="color" style="background-color: white"></div>
	</div>
</div>
<span class="item_price">13,000</span>
 <span class="item_detail">주문폭주</span>
 </div>
 </li>
 <li class="table_div">
 <div class="item_photo" ><a href="#"><img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png"></a></div>
 <div class="item_info" > 
<span class="item_name">리퍼트 트임 데님 숏팬츠 - pt</span>
 <div class="color_banner">
	<div class="colorbox">
		<div class="color" style="background-color: #453712"></div>
		<div class="color" style="background-color: #253712"></div>
		<div class="color" style="background-color: #751368"></div>
		<div class="color" style="background-color: white"></div>
	</div>
</div>
<span class="item_price">13,000</span>
 <span class="item_detail">주문폭주</span>
 </div>
 </li>
 <li class="table_div">
 <div class="item_photo" ><a href="#"><img class="thumb_photo" src="${pageContext.request.contextPath}/resources/shop/img/slider/best1.png"></a></div>
 <div class="item_info" > 
<span class="item_name">리퍼트 트임 데님 숏팬츠 - pt</span>
 <div class="color_banner">
	<div class="colorbox">
		<div class="color" style="background-color: #453712"></div>
		<div class="color" style="background-color: #253712"></div>
		<div class="color" style="background-color: #751368"></div>
		<div class="color" style="background-color: white"></div>
	</div>
</div>
<span class="item_price">13,000</span>
 <span class="item_detail">주문폭주</span>
 </div>
 </li>
  
 
 </ul>
	</div>
	
	<div class="page_wrapper">
		<div class="page_inner">
			<a href="">< </a> <a href="">PREV</a>
			<ul>
				<li><a href="?page=1" class="this">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
			</ul>
			<a href="">NEXT</a> <a href=""> ></a>
		</div>
	</div>
