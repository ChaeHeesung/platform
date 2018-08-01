<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Library Main</title>
<link rel="stylesheet" type="text/css"
	href="http://www.nl.go.kr/_common/cms.css">

<link rel="shortcut icon"
	href="http://www.nl.go.kr/_sys/_common/_icons/nl_icon.ico">

<!-- 2014.11.25. 추가 JS -->
<script type="text/javascript"
	src="http://www.nl.go.kr/nl/common/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript"
	src="http://www.nl.go.kr/nl/common/js/jquery.migrate.1.2.1.js"></script>
<script type="text/javascript"
	src="http://www.nl.go.kr/nl/common/js/jquery-ui-1.10.3.custom.min.js"></script>
<script type="text/javascript"
	src="http://www.nl.go.kr/nl/common/js/jquery-cookie.js"></script>
<script type="text/javascript"
	src="http://www.nl.go.kr/nl/common/js/jquery.slides.js"></script>
<!--	<script type="text/javascript" src="/nl/common/js/common.js"></script>	
 -->
<script type="text/javascript"
	src="http://www.nl.go.kr/app/nl/search/js/history.js"></script>
<!--ajax history 사용-->
<!-- //2014.11.25. 추가 JS -->


<script type="text/javascript" src="http://www.nl.go.kr/_common/cms.js"></script>



<script type="text/javascript"
	src="http://www.nl.go.kr/nl/common/js/search.js"></script>
<!--IE8 이하의 경우 메인 배너/검색창 sortable 사용하지 않기 위해 column 클래스 제거-->
<!--[if lte IE 8]>
	<script>
	$(document).ready(function(){
		$("div#column1").removeClass("column").addClass('column_top');
	});
	</script>
	<![endif]-->
<script type="text/javascript"
	src="http://www.nl.go.kr/nl/common/js/main.js"></script>
<!--	<script type="text/javascript" src="/app/nl/search/js/search_common.js"></script>
 -->
<script type="text/javascript"
	src="http://www.nl.go.kr/app/nl/search/js/akc.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://www.nl.go.kr/app/nl/search/css/akc.css">
<link rel="stylesheet" type="text/css"
	href="http://www.nl.go.kr/nl/_css/reset.css">
<!--	<link rel="stylesheet" type="text/css" href="/nl/_css/common.css">
 -->
<!--	<link rel="stylesheet" type="text/css" href="/nl/_css/main.css?ver=1"> -->

<!-- ## 리뉴얼을 위한 변경된 파일들 위 내용들은 기존과 동일함 GNB.js를 분리해냄########### -->
<script type="text/javascript"
	src="http://www.nl.go.kr/nl/newdesign/_js/gnb.js"></script>
<script type="text/javascript"
	src="http://www.nl.go.kr/nl/newdesign/_js/main.js"></script>
<link rel="stylesheet" type="text/css"
	href="http://www.nl.go.kr/nl/newdesign/_css/common.css">
<!-- 기존 common.css에 GNB 부분이 변경됨 -->
<link rel="stylesheet" type="text/css"
	href="http://www.nl.go.kr/nl/newdesign/_css/main.css">
<!-- 기존 main css  -->
<!-- ## 리뉴얼을 위한 변경된 파일들 위 파일들은 기존과 동일함 GNB.js를 분리해냄##########-->

<link rel="stylesheet" type="text/css"
	href="http://www.nl.go.kr/common/js/ui.datepicker/css/smoothness/jquery-ui-1.7.2.custom.css">

</head>
<body>
	<div>
		<img src="resources/imgs/iob.png">
	</div>
	<div id="mainSearchSection">
		<!-- moveBox -->
		<div class="mainSearchBox">
			<h2 class="hide">검색영역</h2>
			<!-- 학술지 검색 form -->
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
					<legend>검색</legend>
					<ul class="srchSet">
						<li class="first"><a class="selected" href="#none">소장자료</a></li>
						<li style="display: none"><a href="#none">소장원문</a></li>
						<li style="display: none"><a href="#none">정부간행물</a></li>
						<li class="last"><a href="#none">학술지</a></li>
					</ul>
					<div class="extra_btns">
						<button type="button" class="btn_mbrowseAuthor"
							id="btn_mbrowseAuthor">저자별 검색</button>
						<button type="button" class="btn_browse" id="btn_browse">주제별
							검색</button>
						<button type="button" class="img_detail_search">상세 검색</button>
					</div>
					<div class="srchBox">
						<div class="srch" id="sojang"
							style="background-color: #fff; height: 46px;">
							<select class="select" name="topF1" title="검색구분">
								<option value="total">전체</option>
								<option value="title_author" selected="selected">제목 or
									저자</option>
								<option value="title">제목(부분일치)</option>
								<option value="titleRight">제목(전방일치)</option>
								<option value="titleFull">제목(완전일치)</option>
								<option value="author">저자</option>
								<option value="publisher">발행자</option>
								<option value="cheonggu">청구기호</option>
								<option value="toc">목차/초록(부분일치)</option>
								<option value="tocFull">목차/초록(완전일치)</option>
							</select><span id="guideMsg"
								style="position: absolute; left: 186px; top: 15px; font-size: 12px; font-weight: normal; z-index: 0; color: rgb(119, 119, 119);"><b>제목
									또는 저자명</b>에서 검색합니다.</span> <input type="text" class="input_txt" name="kwd"
								id="akcKwd" title="검색어입력" value=""
								onkeypress="javascript:if(event.keyCode==13) goMainSearch();"
								autocomplete="off"> <a class="btn_autoword"
								href="#akcList" title="자동완성 켜기" id="akcArrow"><img
								src="http://www.nl.go.kr/nl/newdesign/_res/new_img/main/btn_autoword.png"
								alt="자동완성 펼치기"></a>
							<!-- 자동완성 -->
							<div id="akcBox" class="akcBox akcHide"
								style="left: 186px; top: 49px; width: 600px;">
								<div id="akcBody" class="akcBody"></div>
								<div class="akcFoot">
									<button class="off" id="akc_chk">자동완성 켜기</button>
									<cite>&nbsp;</cite>
								</div>
							</div>
							<!-- 자동완성 -->
							<script type="text/javascript">
								//자동 완성 사용  예제 - 구축 페이지에 맞게 변경하여 사용하세요
								var urlPage = "http://www.nl.go.kr/app/nl/search/common/module/akc.jsp";
								var domainNo = 0;
								var inputID = "akcKwd";
								var arrowID = "akcArrow";
								var canvasID = "akcBox";
								var akc = null; //전역으로 사용할 경우가 아니면 ready 함수 내부에 정의해도 됨

								//검색함수
								var search = function(keyword, rank, tag, num) {
									goMainSearch(keyword);
								};

								var hover = function(keyword, rank, tag, num) {
									var node = document.getElementById("test");
									var html = "";
									if (keyword) {
										html += "keyword = " + keyword
												+ "<br/>";
									}
									if (rank) {
										html += "rank = " + rank + "<br/>";
									}
									if (tag) {
										html += "tag = " + tag + "<br/>";
									}
									if (num) {
										html += "num = " + num + "<br/>";
									}
									//node.innerHTML = html;
								};

								$(document).ready(
										function() {
											akc = new KonanAKC();
											akc.setAKCComponentID(inputID,
													arrowID, canvasID);
											akc.setAKCCanvasPosition({
												left : 0,
												top : 49,
												width : 600
											});
											akc.setAKCExtraView(true, true,
													true);
											akc.setAKCConnectionInfo(urlPage,
													domainNo);
											akc.init(search, hover, true);
										});
							</script>
							<button type="button" class="input_img"
								onclick="javascript:goMainSearch();">소장자료 검색</button>
							<!--
						<button type="button" class="img_detail_search">상세검색</button>
						-->
						</div>
						<div class="srch" id="summon"
							style="display: none; background-color: #fff; height: 46px;">
							<input type="text" class="input_txt02" id="summon-search-field"
								title="검색어입력" value="국내외 학술지 등 연속간행물을 검색 할 수 있습니다."
								onkeypress="javascript:if(event.keyCode==13) SearchOn();">
							<button class="input_img"
								onclick="javascript:SearchOn();return false;">학술지검색</button>
						</div>
						<div class="etcSrch" id="sojangEtc02"
							style="display: none; margin-top: 13px;">
							<ul>
								<li><a class="btnType02"
									href="http://www.nl.go.kr/nl/_res/doc/Summon3.0.pdf"
									target="_blank" title="새창열림">학술지 통합검색 도움말</a></li>
							</ul>
						</div>
					</div>
				</fieldset>
			</form>
			<!-- 도움말/ 다국어입력 버튼 -->
			<div class="etcSrchBtns" id="sojangEtc">
				<a class="btnType01"
					href="http://www.nl.go.kr/app/nl/main/searchGuidePop.jsp"
					target="_blank"
					onclick="window.open('http://www.nl.go.kr/app/nl/main/searchGuidePop.jsp','pop_searchGuide','width=980,height=700,toolbal=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no');return false;"
					title="새창으로 이동">검색도움말</a> <a id="worldwordBox" class="btnType02"
					href="#worldwordBoxLayer">다국어입력기</a>
			</div>
			<!-- END 도움말/ 다국어입력 버튼 -->
		</div>
	</div>
	<div id="browseAuthor" style="display: none;">
		<div class="layerHeader">
			<h2 class="tlt">저자별검색 브라우징 - 국립중앙도서관 소장자료를 저자별로 검색할 수 있습니다.</h2>
			<button type="button" class="brLayer_close">
				<span>닫기</span>
			</button>
		</div>
		<div class="brContents">
			<ul class="browsingTab type02">
				<li><a href="#browsingAuthorTab01" class="selected">개인명으로
						찾기</a></li>
				<li><a href="#browsingAuthorTab02">단체명으로 찾기</a></li>
			</ul>
			<!-- start 개인명으로 찾기 -->
			<!-- #browsingAuthorTab01 탭-->
			<div id="browsingAuthorTab01" class="browsingTab_container">
				<h3 class="hide">개인명으로 찾기</h3>
				<div class="step1">
					<!-- 검색 -->

					<div class="stepHead">
						<p class="stepMsg">1. 저자명을 입력하세요</p>
					</div>
					<div class="stepContents">
						<div class="brSearchBox">
							<div class="f_ip">
								<input type="text" name="acname" class="brInputText"
									title="검색어를 입력하세요"
									onkeypress="javascript:if(event.keyCode==13)goMainAcStep1('browsingAuthorTab01');">
							</div>
							<button type="button" class="btnBrwSearch"
								onclick="goMainAcStep1('browsingAuthorTab01'); return false;">찾기</button>
						</div>
						<div class="searchGuide">
							<p class="tit">
								<strong>검색안내</strong>
							</p>
							<p class="ds">전거데이터 기반 검색으로 다양한 형식으로 표현되는 저자의 자료를 검색할 수 있습니다.</p>
							<p class="tit">
								<strong>예시</strong>
							</p>
							<p class="ds">
								소설가 '박경리'의 자료 검색 시, '박금이'<em>(박경리의 본명),</em><br> 'Bak,
								Gyeongri'<em>(박경리의 로마자표기)</em>등으로 검색해도,<br> 소설가 '박경리'의
								소장자료를 확인할 수 있습니다.
							</p>
						</div>
					</div>
				</div>
				<!-- end step1 -->
				<!-- step 2 -->
				<div class="step2">
					<div class="stepHead">
						<p class="stepMsg">2. 저자를 선택하세요</p>
						<span class="step2TitleCnt">(검색결과: 총 0건)</span>
					</div>
					<div class="stepContents"></div>
				</div>
				<!-- end step2 -->
				<div class="step3">
					<div class="stepHead">
						<p class="stepMsg">3. 저자 정보를 확인하세요</p>
						<a href="#" title="MARC 다운로드-새창에서열림" class="markBtn"><span>MARC
								보기</span></a>
					</div>
					<div class="stepContents"></div>
				</div>
				<!--// .step3 -->
			</div>
			<!-- // #browsingAuthorTab01 -->
			<!-- #browsingAuthorTab02 탭-->
			<div id="browsingAuthorTab02" class="browsingTab_container">
				<h3 class="hide">단체명으로 찾기</h3>
				<div class="step1">
					<!-- 검색 -->

					<div class="stepHead">
						<p class="stepMsg">1. 단체명을 입력하세요</p>
					</div>
					<div class="stepContents">
						<div class="brSearchBox">
							<div class="f_ip">
								<input type="text" name="acname" class="brInputText"
									title="검색어를 입력하세요"
									onkeypress="javascript:if(event.keyCode==13)goMainAcStep1('browsingAuthorTab02');">
							</div>
							<button type="button" class="btnBrwSearch"
								onclick="goMainAcStep1('browsingAuthorTab02'); return false;">찾기</button>
						</div>
						<div class="searchGuide">
							<p class="tit">
								<strong>검색안내</strong>
							</p>
							<p class="ds">전거데이터 기반 검색으로 다양한 형식으로 표현되는 저자의 자료를 검색할 수 있습니다.</p>
							<p class="tit">
								<strong>예시</strong>
							</p>
							<p class="ds">[문화체육관광부]의 자료 검색 시, [문화부], [문화체육부] 등으로 검색해도,
								[문화체육관광부]의 국립중앙도서관 소장자료를 확인할 수 있습니다.</p>
						</div>
					</div>
				</div>
				<!-- end step1 -->
				<!-- step 2 -->
				<div class="step2">
					<div class="stepHead">
						<p class="stepMsg">2. 단체명을 선택하세요</p>
						<span class="step2TitleCnt">(검색결과: 총 0건)</span>
					</div>
					<div class="stepContents"></div>
				</div>
				<!-- end step2 -->
				<div class="step3">
					<div class="stepHead">
						<p class="stepMsg">3. 단체 정보를 확인하세요</p>
						<a href="#" title="MARC 다운로드-새창에서열림" class="markBtn"><span>MARC
								보기</span></a>
					</div>
					<div class="stepContents"></div>
				</div>
				<!--// .step3 -->
			</div>
			<!-- // #browsingAuthorTab02 -->

		</div>
		<!-- // .brContents  -->
	</div>
	<div id="browse" class="on" style="display: none;">
		<div class="layerHeader">
			<h2 class="tlt">주제별검색 브라우징</h2>
			<button type="button" class="brLayer_close">
				<span>닫기</span>
			</button>
		</div>
		<div class="brContents">
			<!--<a href="#" class="btn_browse open"><img src="http://www.nl.go.kr/app/nl/newdesign/_res/new_img/main/btn_browser.png" alt="주제별검색 브라우징" /></a> -->
			<ul class="browsingTab type03">
				<li><a href="#browsingTab01" class="selected">KDC(한국십진분류)로
						찾기</a></li>
				<li><a href="#browsingTab02">DDC(듀이십진분류)로 찾기</a></li>
				<li><a href="#browsingTab03">주제어로 찾기</a></li>
				<li><a href="#browsingTab04">멀티미디어 및 온라인 자료</a></li>
				<li><a href="#browsingTab07">원문 DB별</a></li>
			</ul>
			<!-- KDC(동양서) 주제 -->
			<div id="browsingTab01" class="browsingTab_container"
				style="display: block;">
				<h3 class="hide">KDC(한국십진분류)로 찾기</h3>
				<div class="defaultBrowsingTab">
					<ul class="box_l">
						<li><a
							href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=0^'+encodeURI('총류')+'&amp;sort=iregdate&amp;desc=desc'"
							class="selected_open">총류</a>
							<ul class="box_c" style="display: block;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=00^'+encodeURI('총류')+'&amp;sort=iregdate&amp;desc=desc'"
									class="selected">총류</a>
									<ul class="box_r" style="display: block;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=000^'+encodeURI('총류')+'&amp;sort=iregdate&amp;desc=desc'">총류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=001^'+encodeURI('지식,학문일반')+'&amp;sort=iregdate&amp;desc=desc'">지식,학문일반</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=003^'+encodeURI('시스템')+'&amp;sort=iregdate&amp;desc=desc'">시스템</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=004^'+encodeURI('컴퓨터 과학')+'&amp;sort=iregdate&amp;desc=desc'">컴퓨터
												과학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=005^'+encodeURI('프로그래밍, 프로그램, 데이터')+'&amp;sort=iregdate&amp;desc=desc'">프로그래밍,
												프로그램, 데이터</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=007^'+encodeURI('연구일반 및 방법론')+'&amp;sort=iregdate&amp;desc=desc'">연구일반
												및 방법론</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=01^'+encodeURI('도서학,서지학')+'&amp;sort=iregdate&amp;desc=desc'">도서학,서지학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=010^'+encodeURI('도서학,서지학')+'&amp;sort=iregdate&amp;desc=desc'">도서학,서지학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=011^'+encodeURI('저작')+'&amp;sort=iregdate&amp;desc=desc'">저작</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=012^'+encodeURI('사본,판본,제본')+'&amp;sort=iregdate&amp;desc=desc'">사본,판본,제본</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=013^'+encodeURI('출판 및  판매')+'&amp;sort=iregdate&amp;desc=desc'">출판
												및 판매</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=014^'+encodeURI('개인서지 및 목록')+'&amp;sort=iregdate&amp;desc=desc'">개인서지
												및 목록</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=015^'+encodeURI('국가별 서지 및 목록')+'&amp;sort=iregdate&amp;desc=desc'">국가별
												서지 및 목록</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=016^'+encodeURI('주제별 서지 및 목록')+'&amp;sort=iregdate&amp;desc=desc'">주제별
												서지 및 목록</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=017^'+encodeURI('특수서지 및 목록')+'&amp;sort=iregdate&amp;desc=desc'">특수서지
												및 목록</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=018^'+encodeURI('일반서지 및 목록')+'&amp;sort=iregdate&amp;desc=desc'">일반서지
												및 목록</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=019^'+encodeURI('장서목록')+'&amp;sort=iregdate&amp;desc=desc'">장서목록</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=02^'+encodeURI('문헌정보학')+'&amp;sort=iregdate&amp;desc=desc'"
									class="">문헌정보학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=020^'+encodeURI('문헌정보학')+'&amp;sort=iregdate&amp;desc=desc'">문헌정보학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=021^'+encodeURI('도서관 행정 및 재정')+'&amp;sort=iregdate&amp;desc=desc'">도서관
												행정 및 재정</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=022^'+encodeURI('도서관건축 및 설비')+'&amp;sort=iregdate&amp;desc=desc'">도서관건축
												및 설비</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=023^'+encodeURI('도서관 경영, 관리')+'&amp;sort=iregdate&amp;desc=desc'">도서관
												경영, 관리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=024^'+encodeURI('수서, 정리 및 보관')+'&amp;sort=iregdate&amp;desc=desc'">수서,
												정리 및 보관</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=025^'+encodeURI('도서관 봉사 및 활동')+'&amp;sort=iregdate&amp;desc=desc'">도서관
												봉사 및 활동</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=026^'+encodeURI('일반도서관')+'&amp;sort=iregdate&amp;desc=desc'">일반도서관</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=027^'+encodeURI('학교 및 대학도서관')+'&amp;sort=iregdate&amp;desc=desc'">학교
												및 대학도서관</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=028^'+encodeURI('정보과학')+'&amp;sort=iregdate&amp;desc=desc'">정보과학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=029^'+encodeURI('독서 및 정보매체의 이용')+'&amp;sort=iregdate&amp;desc=desc'">독서
												및 정보매체의 이용</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=03^'+encodeURI('백과사전')+'&amp;sort=iregdate&amp;desc=desc'">백과사전</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=030^'+encodeURI('백과사전')+'&amp;sort=iregdate&amp;desc=desc'">백과사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=031^'+encodeURI('한국어')+'&amp;sort=iregdate&amp;desc=desc'">한국어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=032^'+encodeURI('중국어')+'&amp;sort=iregdate&amp;desc=desc'">중국어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=033^'+encodeURI('일본어')+'&amp;sort=iregdate&amp;desc=desc'">일본어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=034^'+encodeURI('영어')+'&amp;sort=iregdate&amp;desc=desc'">영어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=035^'+encodeURI('독일어')+'&amp;sort=iregdate&amp;desc=desc'">독일어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=036^'+encodeURI('프랑스어')+'&amp;sort=iregdate&amp;desc=desc'">프랑스어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=037^'+encodeURI('스페인어')+'&amp;sort=iregdate&amp;desc=desc'">스페인어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=038^'+encodeURI('이탈리아어')+'&amp;sort=iregdate&amp;desc=desc'">이탈리아어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=039^'+encodeURI('기타 제언어')+'&amp;sort=iregdate&amp;desc=desc'">기타
												제언어</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=04^'+encodeURI('강연집, 수필집, 연설문집')+'&amp;sort=iregdate&amp;desc=desc'">강연집,
										수필집, 연설문집</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=040^'+encodeURI('강연집,수필집,연설문집')+'&amp;sort=iregdate&amp;desc=desc'">강연집,수필집,연설문집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=041^'+encodeURI('한국어')+'&amp;sort=iregdate&amp;desc=desc'">한국어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=042^'+encodeURI('중국어')+'&amp;sort=iregdate&amp;desc=desc'">중국어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=043^'+encodeURI('일본어')+'&amp;sort=iregdate&amp;desc=desc'">일본어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=044^'+encodeURI('영어')+'&amp;sort=iregdate&amp;desc=desc'">영어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=045^'+encodeURI('독일어')+'&amp;sort=iregdate&amp;desc=desc'">독일어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=046^'+encodeURI('프랑스어')+'&amp;sort=iregdate&amp;desc=desc'">프랑스어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=047^'+encodeURI('스페인어')+'&amp;sort=iregdate&amp;desc=desc'">스페인어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=048^'+encodeURI('이탈이아어')+'&amp;sort=iregdate&amp;desc=desc'">이탈이아어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=049^'+encodeURI('기타 제언어')+'&amp;sort=iregdate&amp;desc=desc'">기타
												제언어</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=05^'+encodeURI('일반 연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">일반
										연속간행물</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=050^'+encodeURI('일반연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">일반연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=051^'+encodeURI('한국어')+'&amp;sort=iregdate&amp;desc=desc'">한국어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=052^'+encodeURI('중국어')+'&amp;sort=iregdate&amp;desc=desc'">중국어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=053^'+encodeURI('일본어')+'&amp;sort=iregdate&amp;desc=desc'">일본어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=054^'+encodeURI('영어')+'&amp;sort=iregdate&amp;desc=desc'">영어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=055^'+encodeURI('독일어')+'&amp;sort=iregdate&amp;desc=desc'">독일어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=056^'+encodeURI('프랑스어')+'&amp;sort=iregdate&amp;desc=desc'">프랑스어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=057^'+encodeURI('스페인어')+'&amp;sort=iregdate&amp;desc=desc'">스페인어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=058^'+encodeURI('기타 제언어')+'&amp;sort=iregdate&amp;desc=desc'">기타
												제언어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=059^'+encodeURI('연감')+'&amp;sort=iregdate&amp;desc=desc'">연감</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=06^'+encodeURI('일반학회,단체,협회,기관,연구기관')+'&amp;sort=iregdate&amp;desc=desc'">일반학회,단체,협회,기관,연구기관</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=060^'+encodeURI('일반학회,단체,협회,기관,연구기관')+'&amp;sort=iregdate&amp;desc=desc'">일반학회,단체,협회,기관,연구기관</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=061^'+encodeURI('아시아')+'&amp;sort=iregdate&amp;desc=desc'">아시아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=062^'+encodeURI('유럽')+'&amp;sort=iregdate&amp;desc=desc'">유럽</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=063^'+encodeURI('아프리카')+'&amp;sort=iregdate&amp;desc=desc'">아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=064^'+encodeURI('북아메리카')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=065^'+encodeURI('남아메리카')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=066^'+encodeURI('오세아니아')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=067^'+encodeURI('양극')+'&amp;sort=iregdate&amp;desc=desc'">양극</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=069^'+encodeURI('박물관학')+'&amp;sort=iregdate&amp;desc=desc'">박물관학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=07^'+encodeURI('신문,저널리즘')+'&amp;sort=iregdate&amp;desc=desc'">신문,저널리즘</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=070^'+encodeURI('신문,저널리즘')+'&amp;sort=iregdate&amp;desc=desc'">신문,저널리즘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=071^'+encodeURI('아시아의 신문')+'&amp;sort=iregdate&amp;desc=desc'">아시아의
												신문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=072^'+encodeURI('유럽의 신문')+'&amp;sort=iregdate&amp;desc=desc'">유럽의
												신문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=073^'+encodeURI('아프리카의 신문')+'&amp;sort=iregdate&amp;desc=desc'">아프리카의
												신문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=074^'+encodeURI('북아메리카의 신문')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카의
												신문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=075^'+encodeURI('남아메리카의 신문')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카의
												신문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=076^'+encodeURI('오세아니아의 신문')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아의
												신문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=077^'+encodeURI('양극지방의 신문')+'&amp;sort=iregdate&amp;desc=desc'">양극지방의
												신문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=078^'+encodeURI('특정주제의 신문')+'&amp;sort=iregdate&amp;desc=desc'">특정주제의
												신문</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=08^'+encodeURI('일반전집, 총서')+'&amp;sort=iregdate&amp;desc=desc'"
									class="">일반전집, 총서</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=080^'+encodeURI('일반전집,총서')+'&amp;sort=iregdate&amp;desc=desc'">일반전집,총서</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=081^'+encodeURI('개인의 일반전집')+'&amp;sort=iregdate&amp;desc=desc'">개인의
												일반전집</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=082&amp;sort=iregdate&amp;desc=desc">2인
												이상의 일반전집, 총서</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=09^'+encodeURI('향토자료')+'&amp;sort=iregdate&amp;desc=desc'">향토자료</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=090^'+encodeURI('향토자료')+'&amp;sort=iregdate&amp;desc=desc'">향토자료</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=1&amp;sort=iregdate&amp;desc=desc"
							class="">철학</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=10^'+encodeURI('철학')+'&amp;sort=iregdate&amp;desc=desc'">철학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=100^'+encodeURI('철학')+'&amp;sort=iregdate&amp;desc=desc'">철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=101^'+encodeURI('철학 및 이론의 효용')+'&amp;sort=iregdate&amp;desc=desc'">철학
												및 이론의 효용</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=102^'+encodeURI('잡저')+'&amp;sort=iregdate&amp;desc=desc'">잡저</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=103^'+encodeURI('사전, 용어사전')+'&amp;sort=iregdate&amp;desc=desc'">사전,
												용어사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=104^'+encodeURI('강연집, 수필집')+'&amp;sort=iregdate&amp;desc=desc'">강연집,
												수필집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=105^'+encodeURI('연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=106^'+encodeURI('단체, 협회, 기관, 의회')+'&amp;sort=iregdate&amp;desc=desc'">단체,
												협회, 기관, 의회</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=107^'+encodeURI('지도법, 연구법 및 교육, 교육자료')+'&amp;sort=iregdate&amp;desc=desc'">지도법,
												연구법 및 교육, 교육자료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=108^'+encodeURI('총서,전집,선집')+'&amp;sort=iregdate&amp;desc=desc'">총서,전집,선집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=109^'+encodeURI('철학사')+'&amp;sort=iregdate&amp;desc=desc'">철학사</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=11^'+encodeURI('형이상학')+'&amp;sort=iregdate&amp;desc=desc'">형이상학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=110^'+encodeURI('형이상학')+'&amp;sort=iregdate&amp;desc=desc'">형이상학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=111^'+encodeURI('방법론')+'&amp;sort=iregdate&amp;desc=desc'">방법론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=112^'+encodeURI('존재론')+'&amp;sort=iregdate&amp;desc=desc'">존재론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=113^'+encodeURI('우주론 및 자연철학')+'&amp;sort=iregdate&amp;desc=desc'">우주론
												및 자연철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=114^'+encodeURI('공간')+'&amp;sort=iregdate&amp;desc=desc'">공간</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=115^'+encodeURI('인식론')+'&amp;sort=iregdate&amp;desc=desc'">인식론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=116^'+encodeURI('운동과 변화')+'&amp;sort=iregdate&amp;desc=desc'">운동과
												변화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=117^'+encodeURI('구조')+'&amp;sort=iregdate&amp;desc=desc'">구조</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=118^'+encodeURI('힘과 에너지')+'&amp;sort=iregdate&amp;desc=desc'">힘과
												에너지</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=119^인과론(인과성)&amp;sort=iregdate&amp;desc=desc">인과론(인과성)</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=13^'+encodeURI('철학의 체계')+'&amp;sort=iregdate&amp;desc=desc'">철학의
										체계</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=130^'+encodeURI('철학의 체계')+'&amp;sort=iregdate&amp;desc=desc'">철학의
												체계</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=131^'+encodeURI('관념론및연관철학')+'&amp;sort=iregdate&amp;desc=desc'">관념론및연관철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=132^'+encodeURI('비판철학')+'&amp;sort=iregdate&amp;desc=desc'">비판철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=133^'+encodeURI('합리론')+'&amp;sort=iregdate&amp;desc=desc'">합리론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=134^'+encodeURI('인문주의')+'&amp;sort=iregdate&amp;desc=desc'">인문주의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=135^'+encodeURI('경험론')+'&amp;sort=iregdate&amp;desc=desc'">경험론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=136^'+encodeURI('자연주의')+'&amp;sort=iregdate&amp;desc=desc'">자연주의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=137^'+encodeURI('유물론')+'&amp;sort=iregdate&amp;desc=desc'">유물론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=138^'+encodeURI('과학주의철학')+'&amp;sort=iregdate&amp;desc=desc'">과학주의철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=139^'+encodeURI('기타')+'&amp;sort=iregdate&amp;desc=desc'">기타</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=14^'+encodeURI('경학')+'&amp;sort=iregdate&amp;desc=desc'">경학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=140^'+encodeURI('경학')+'&amp;sort=iregdate&amp;desc=desc'">경학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=141^'+encodeURI('역류')+'&amp;sort=iregdate&amp;desc=desc'">역류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=142^'+encodeURI('서류')+'&amp;sort=iregdate&amp;desc=desc'">서류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=143^'+encodeURI('시류')+'&amp;sort=iregdate&amp;desc=desc'">시류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=144^'+encodeURI('예류')+'&amp;sort=iregdate&amp;desc=desc'">예류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=145^'+encodeURI('악류')+'&amp;sort=iregdate&amp;desc=desc'">악류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=146^'+encodeURI('춘추류')+'&amp;sort=iregdate&amp;desc=desc'">춘추류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=147^'+encodeURI('효경')+'&amp;sort=iregdate&amp;desc=desc'">효경</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=148^'+encodeURI('사서')+'&amp;sort=iregdate&amp;desc=desc'">사서</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=15^'+encodeURI('동양,철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">동양,철학,사상</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=150^'+encodeURI('동양,철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">동양,철학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=151^'+encodeURI('한국철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">한국철학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=152^'+encodeURI('중국철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">중국철학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=153^'+encodeURI('일본철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">일본철학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=154^'+encodeURI('동남아시아제국철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">동남아시아제국철학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=155^'+encodeURI('인도철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">인도철학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=156^'+encodeURI('중앙아시아제국학,사상')+'&amp;sort=iregdate&amp;desc=desc'">중앙아시아제국학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=157^'+encodeURI('시베리아철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">시베리아철학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=158^'+encodeURI('서남아시아제국철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">서남아시아제국철학,사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=159^'+encodeURI('아랍제국철학,사상')+'&amp;sort=iregdate&amp;desc=desc'">아랍제국철학,사상</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=16^'+encodeURI('서양철학')+'&amp;sort=iregdate&amp;desc=desc'">서양철학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=160^'+encodeURI('서양철학')+'&amp;sort=iregdate&amp;desc=desc'">서양철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=162^'+encodeURI('미국철학')+'&amp;sort=iregdate&amp;desc=desc'">미국철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=163^'+encodeURI('북구철학')+'&amp;sort=iregdate&amp;desc=desc'">북구철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=164^'+encodeURI('영국철학')+'&amp;sort=iregdate&amp;desc=desc'">영국철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=165^'+encodeURI('독일,오스트리아철학')+'&amp;sort=iregdate&amp;desc=desc'">독일,오스트리아철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=166^'+encodeURI('프랑스,네덜란드철학')+'&amp;sort=iregdate&amp;desc=desc'">프랑스,네덜란드철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=167^'+encodeURI('스페인철학')+'&amp;sort=iregdate&amp;desc=desc'">스페인철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=168^'+encodeURI('이탈리아철학')+'&amp;sort=iregdate&amp;desc=desc'">이탈리아철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=169^'+encodeURI('러시아철학')+'&amp;sort=iregdate&amp;desc=desc'">러시아철학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=17^'+encodeURI('논리학')+'&amp;sort=iregdate&amp;desc=desc'">논리학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=170^'+encodeURI('논리학')+'&amp;sort=iregdate&amp;desc=desc'">논리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=171^'+encodeURI('연역법')+'&amp;sort=iregdate&amp;desc=desc'">연역법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=172^'+encodeURI('귀납법')+'&amp;sort=iregdate&amp;desc=desc'">귀납법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=173^'+encodeURI('변증법적논리학')+'&amp;sort=iregdate&amp;desc=desc'">변증법적논리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=174^'+encodeURI('기호,수리논리학')+'&amp;sort=iregdate&amp;desc=desc'">기호,수리논리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=175^'+encodeURI('오류')+'&amp;sort=iregdate&amp;desc=desc'">오류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=176^'+encodeURI('삼단논법')+'&amp;sort=iregdate&amp;desc=desc'">삼단논법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=177^'+encodeURI('가설,가정')+'&amp;sort=iregdate&amp;desc=desc'">가설,가정</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=178^'+encodeURI('유추')+'&amp;sort=iregdate&amp;desc=desc'">유추</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=179^'+encodeURI('논증,설득')+'&amp;sort=iregdate&amp;desc=desc'">논증,설득</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=18^'+encodeURI('심리학')+'&amp;sort=iregdate&amp;desc=desc'">심리학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=180^'+encodeURI('심리학')+'&amp;sort=iregdate&amp;desc=desc'">심리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=181^'+encodeURI('각론')+'&amp;sort=iregdate&amp;desc=desc'">각론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=182^'+encodeURI('차이심리학')+'&amp;sort=iregdate&amp;desc=desc'">차이심리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=183^'+encodeURI('발달심리학')+'&amp;sort=iregdate&amp;desc=desc'">발달심리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=184^'+encodeURI('이상심리학')+'&amp;sort=iregdate&amp;desc=desc'">이상심리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=185^'+encodeURI('생리심리학')+'&amp;sort=iregdate&amp;desc=desc'">생리심리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=186^'+encodeURI('임상심리학')+'&amp;sort=iregdate&amp;desc=desc'">임상심리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=187^'+encodeURI('심령연구및비학,초심리학')+'&amp;sort=iregdate&amp;desc=desc'">심령연구및비학,초심리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=188^'+encodeURI('상법,운명판단')+'&amp;sort=iregdate&amp;desc=desc'">상법,운명판단</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=189^'+encodeURI('응용심리학이론')+'&amp;sort=iregdate&amp;desc=desc'">응용심리학이론</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=19^'+encodeURI('윤리학,도덕철학')+'&amp;sort=iregdate&amp;desc=desc'">윤리학,도덕철학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=190^'+encodeURI('윤리학,도덕철학')+'&amp;sort=iregdate&amp;desc=desc'">윤리학,도덕철학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=191^'+encodeURI('이론윤리학각론')+'&amp;sort=iregdate&amp;desc=desc'">이론윤리학각론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=192^'+encodeURI('가정윤리')+'&amp;sort=iregdate&amp;desc=desc'">가정윤리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=193^'+encodeURI('국가및정치윤리')+'&amp;sort=iregdate&amp;desc=desc'">국가및정치윤리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=194^'+encodeURI('사회윤리')+'&amp;sort=iregdate&amp;desc=desc'">사회윤리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=195^'+encodeURI('직업윤리이론')+'&amp;sort=iregdate&amp;desc=desc'">직업윤리이론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=196^'+encodeURI('오락및경기윤리')+'&amp;sort=iregdate&amp;desc=desc'">오락및경기윤리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=197^'+encodeURI('성윤리')+'&amp;sort=iregdate&amp;desc=desc'">성윤리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=198^'+encodeURI('소비윤리')+'&amp;sort=iregdate&amp;desc=desc'">소비윤리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=199^'+encodeURI('도덕훈,교훈')+'&amp;sort=iregdate&amp;desc=desc'">도덕훈,교훈</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=2&amp;sort=iregdate&amp;desc=desc"
							class="">종교</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=20^'+encodeURI('종교')+'&amp;sort=iregdate&amp;desc=desc'">종교</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=200^'+encodeURI('종교')+'&amp;sort=iregdate&amp;desc=desc'">종교</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=201^'+encodeURI('종교철학및종교사상')+'&amp;sort=iregdate&amp;desc=desc'">종교철학및종교사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=202^'+encodeURI('잡저')+'&amp;sort=iregdate&amp;desc=desc'">잡저</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=203^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=204^'+encodeURI('자연종교,자연신학')+'&amp;sort=iregdate&amp;desc=desc'">자연종교,자연신학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=205^'+encodeURI('연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=206^'+encodeURI('단체,협회,기관,회의')+'&amp;sort=iregdate&amp;desc=desc'">단체,협회,기관,회의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=207^'+encodeURI('지도법,연구법및교육,교육자료')+'&amp;sort=iregdate&amp;desc=desc'">지도법,연구법및교육,교육자료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=208^'+encodeURI('총서,전집,선집')+'&amp;sort=iregdate&amp;desc=desc'">총서,전집,선집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=209^'+encodeURI('종교사')+'&amp;sort=iregdate&amp;desc=desc'">종교사</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=21^'+encodeURI('비교종교')+'&amp;sort=iregdate&amp;desc=desc'">비교종교</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=210^'+encodeURI('비교종교')+'&amp;sort=iregdate&amp;desc=desc'">비교종교</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=211^'+encodeURI('교리')+'&amp;sort=iregdate&amp;desc=desc'">교리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=212^'+encodeURI('종조,창교자')+'&amp;sort=iregdate&amp;desc=desc'">종조,창교자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=213^'+encodeURI('경전,성전')+'&amp;sort=iregdate&amp;desc=desc'">경전,성전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=214^'+encodeURI('종교신앙,신앙록,신앙(수도)생활')+'&amp;sort=iregdate&amp;desc=desc'">종교신앙,신앙록,신앙(수도)생활</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=215^'+encodeURI('선교,포교,전도,교육활동')+'&amp;sort=iregdate&amp;desc=desc'">선교,포교,전도,교육활동</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=216^종단,교단(교당론)&amp;sort=iregdate&amp;desc=desc">종단,교단(교당론)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=217^'+encodeURI('예배형식,의식,의례')+'&amp;sort=iregdate&amp;desc=desc'">예배형식,의식,의례</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=218^'+encodeURI('종파,교파')+'&amp;sort=iregdate&amp;desc=desc'">종파,교파</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=219^'+encodeURI('신화,신화학')+'&amp;sort=iregdate&amp;desc=desc'">신화,신화학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=22^'+encodeURI('불교')+'&amp;sort=iregdate&amp;desc=desc'">불교</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=220^'+encodeURI('불교')+'&amp;sort=iregdate&amp;desc=desc'">불교</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=221^'+encodeURI('불교교리')+'&amp;sort=iregdate&amp;desc=desc'">불교교리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=222^'+encodeURI('제불,보살,불제자')+'&amp;sort=iregdate&amp;desc=desc'">제불,보살,불제자</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=223^경전(불전,대장경)&amp;sort=iregdate&amp;desc=desc">경전(불전,대장경)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=224^'+encodeURI('법어,신앙록,신앙생활')+'&amp;sort=iregdate&amp;desc=desc'">법어,신앙록,신앙생활</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=225^'+encodeURI('포교,교육,교화활동')+'&amp;sort=iregdate&amp;desc=desc'">포교,교육,교화활동</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=226^'+encodeURI('사원론')+'&amp;sort=iregdate&amp;desc=desc'">사원론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=227^'+encodeURI('법회,의식,행사')+'&amp;sort=iregdate&amp;desc=desc'">법회,의식,행사</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=228^'+encodeURI('종파')+'&amp;sort=iregdate&amp;desc=desc'">종파</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=229^'+encodeURI('라마교')+'&amp;sort=iregdate&amp;desc=desc'">라마교</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=23^'+encodeURI('기독교')+'&amp;sort=iregdate&amp;desc=desc'">기독교</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=230^'+encodeURI('기독교')+'&amp;sort=iregdate&amp;desc=desc'">기독교</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=231^기독교신학,교의학(조직신학)&amp;sort=iregdate&amp;desc=desc">기독교신학,교의학(조직신학)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=232^'+encodeURI('예수그리스도')+'&amp;sort=iregdate&amp;desc=desc'">예수그리스도</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=233^성서(성경)&amp;sort=iregdate&amp;desc=desc">성서(성경)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=234^'+encodeURI('신앙록,명상록,신앙생활')+'&amp;sort=iregdate&amp;desc=desc'">신앙록,명상록,신앙생활</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=235^'+encodeURI('전도,교육,교화활동,목회학')+'&amp;sort=iregdate&amp;desc=desc'">전도,교육,교화활동,목회학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=236^'+encodeURI('교회론')+'&amp;sort=iregdate&amp;desc=desc'">교회론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=237^'+encodeURI('예배,의식,성례')+'&amp;sort=iregdate&amp;desc=desc'">예배,의식,성례</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=238^'+encodeURI('교파')+'&amp;sort=iregdate&amp;desc=desc'">교파</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=239^'+encodeURI('유태교')+'&amp;sort=iregdate&amp;desc=desc'">유태교</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=24^'+encodeURI('도교')+'&amp;sort=iregdate&amp;desc=desc'">도교</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=240^'+encodeURI('도교')+'&amp;sort=iregdate&amp;desc=desc'">도교</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=241^'+encodeURI('교의,신선사상')+'&amp;sort=iregdate&amp;desc=desc'">교의,신선사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=242^'+encodeURI('교조,개조')+'&amp;sort=iregdate&amp;desc=desc'">교조,개조</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=243^'+encodeURI('도장')+'&amp;sort=iregdate&amp;desc=desc'">도장</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=244^'+encodeURI('신앙록,신앙생활')+'&amp;sort=iregdate&amp;desc=desc'">신앙록,신앙생활</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=245^'+encodeURI('포교,전도,교육,교화활동')+'&amp;sort=iregdate&amp;desc=desc'">포교,전도,교육,교화활동</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=246^사원론(도관)&amp;sort=iregdate&amp;desc=desc">사원론(도관)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=247^'+encodeURI('행사,법술')+'&amp;sort=iregdate&amp;desc=desc'">행사,법술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=248^'+encodeURI('교파')+'&amp;sort=iregdate&amp;desc=desc'">교파</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=25^'+encodeURI('천도교')+'&amp;sort=iregdate&amp;desc=desc'">천도교</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=250^'+encodeURI('천도교')+'&amp;sort=iregdate&amp;desc=desc'">천도교</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=259^'+encodeURI('동학교분파')+'&amp;sort=iregdate&amp;desc=desc'">동학교분파</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=259^'+encodeURI('단군교대종교')+'&amp;sort=iregdate&amp;desc=desc'">단군교대종교</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=26^'+encodeURI('신도')+'&amp;sort=iregdate&amp;desc=desc'">신도</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=260^'+encodeURI('신도')+'&amp;sort=iregdate&amp;desc=desc'">신도</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=27^'+encodeURI('힌두교,브라만교')+'&amp;sort=iregdate&amp;desc=desc'">힌두교,브라만교</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=270^'+encodeURI('힌두교,브리만교')+'&amp;sort=iregdate&amp;desc=desc'">힌두교,브리만교</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=279^'+encodeURI('자이나교')+'&amp;sort=iregdate&amp;desc=desc'">자이나교</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=28^이슬람교(회교)&amp;sort=iregdate&amp;desc=desc">이슬람교(회교)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=280^이슬람교(회교)&amp;sort=iregdate&amp;desc=desc">이슬람교(회교)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=289^조로아스타교(요교,배화교)&amp;sort=iregdate&amp;desc=desc">조로아스타교(요교,배화교)</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=29;^'+encodeURI('기타제종교')+'&amp;sort=iregdate&amp;desc=desc'">기타제종교</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=290^'+encodeURI('기타제종교')+'&amp;sort=iregdate&amp;desc=desc'">기타제종교</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=291^'+encodeURI('아시아')+'&amp;sort=iregdate&amp;desc=desc'">아시아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=292^'+encodeURI('유럽')+'&amp;sort=iregdate&amp;desc=desc'">유럽</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=293^'+encodeURI('아프리카')+'&amp;sort=iregdate&amp;desc=desc'">아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=294^'+encodeURI('북아메리카')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=295^'+encodeURI('남아메리카')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=296^'+encodeURI('오세아니아')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=297^'+encodeURI('양극지방')+'&amp;sort=iregdate&amp;desc=desc'">양극지방</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=299^'+encodeURI('기타 다른 기원의 종교')+'&amp;sort=iregdate&amp;desc=desc'">기타
												다른 기원의 종교</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=3&amp;sort=iregdate&amp;desc=desc">사회과학</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=30^'+encodeURI('사회과학')+'&amp;sort=iregdate&amp;desc=desc'">사회과학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=300^'+encodeURI('사회과학')+'&amp;sort=iregdate&amp;desc=desc'">사회과학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=300.1^'+encodeURI('철학및 이론')+'&amp;sort=iregdate&amp;desc=desc'">철학및
														이론</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=300.9^'+encodeURI('사회과학사')+'&amp;sort=iregdate&amp;desc=desc'">사회과학사</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=301^'+encodeURI('사회사상')+'&amp;sort=iregdate&amp;desc=desc'">사회사상</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=302^'+encodeURI('잡저')+'&amp;sort=iregdate&amp;desc=desc'">잡저</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=303^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=304^'+encodeURI('강연집,수필집,연설문집')+'&amp;sort=iregdate&amp;desc=desc'">강연집,수필집,연설문집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=305^'+encodeURI('연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=306^'+encodeURI('학회,단체,협회,기관,회의')+'&amp;sort=iregdate&amp;desc=desc'">학회,단체,협회,기관,회의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=307^'+encodeURI('연구법,연구방법및교육,교육자료')+'&amp;sort=iregdate&amp;desc=desc'">연구법,연구방법및교육,교육자료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=308^'+encodeURI('총서,전집,선집')+'&amp;sort=iregdate&amp;desc=desc'">총서,전집,선집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=309^'+encodeURI('정치,경제,사회,문화사정및역사')+'&amp;sort=iregdate&amp;desc=desc'">정치,경제,사회,문화사정및역사</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=309.1^'+encodeURI('사회문화사정사')+'&amp;sort=iregdate&amp;desc=desc'">사회문화사정사</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=31^'+encodeURI('통계학')+'&amp;sort=iregdate&amp;desc=desc'">통계학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=310^'+encodeURI('통계학')+'&amp;sort=iregdate&amp;desc=desc'">통계학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=311^'+encodeURI('아시아')+'&amp;sort=iregdate&amp;desc=desc'">아시아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=312^'+encodeURI('유럽')+'&amp;sort=iregdate&amp;desc=desc'">유럽</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=313^'+encodeURI('아프리카')+'&amp;sort=iregdate&amp;desc=desc'">아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=314^'+encodeURI('북아메리카')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=315^'+encodeURI('남아메리카')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=316^'+encodeURI('오세아니아')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=317^'+encodeURI('양극지방')+'&amp;sort=iregdate&amp;desc=desc'">양극지방</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=319^'+encodeURI('인구통계')+'&amp;sort=iregdate&amp;desc=desc'">인구통계</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=32^'+encodeURI('경제학')+'&amp;sort=iregdate&amp;desc=desc'">경제학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=320^'+encodeURI('경제학')+'&amp;sort=iregdate&amp;desc=desc'">경제학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=320.1^'+encodeURI('경제학설')+'&amp;sort=iregdate&amp;desc=desc'">경제학설</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=320.9^'+encodeURI('경제사')+'&amp;sort=iregdate&amp;desc=desc'">경제사</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=321^'+encodeURI('경제각론')+'&amp;sort=iregdate&amp;desc=desc'">경제각론</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=321.3^'+encodeURI('자원론, 자원보호')+'&amp;sort=iregdate&amp;desc=desc'">자원론,
														자원보호</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=321.5^'+encodeURI('노동경제')+'&amp;sort=iregdate&amp;desc=desc'">노동경제</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=322^'+encodeURI('경제정책')+'&amp;sort=iregdate&amp;desc=desc'">경제정책</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=323^'+encodeURI('산업경제')+'&amp;sort=iregdate&amp;desc=desc'">산업경제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=324^'+encodeURI('기업경제')+'&amp;sort=iregdate&amp;desc=desc'">기업경제</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=324.3^'+encodeURI('중소기업')+'&amp;sort=iregdate&amp;desc=desc'">중소기업</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325^'+encodeURI('경영')+'&amp;sort=iregdate&amp;desc=desc'">경영</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325.1^'+encodeURI('경영정책')+'&amp;sort=iregdate&amp;desc=desc'">경영정책</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325.2^'+encodeURI('조직관리')+'&amp;sort=iregdate&amp;desc=desc'">조직관리</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325.3^'+encodeURI('인사관리')+'&amp;sort=iregdate&amp;desc=desc'">인사관리</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325.5^'+encodeURI('마케팅관리')+'&amp;sort=iregdate&amp;desc=desc'">마케팅관리</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325.6^'+encodeURI('생산관리')+'&amp;sort=iregdate&amp;desc=desc'">생산관리</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325.7^'+encodeURI('광고')+'&amp;sort=iregdate&amp;desc=desc'">광고</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325.8^'+encodeURI('재무관리')+'&amp;sort=iregdate&amp;desc=desc'">재무관리</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=325.9^'+encodeURI('회계학')+'&amp;sort=iregdate&amp;desc=desc'">회계학</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=326^'+encodeURI('상업,교통,통신')+'&amp;sort=iregdate&amp;desc=desc'">상업,교통,통신</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=326.1^상업(무역)&amp;sort=iregdate&amp;desc=desc">상업(무역)</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=326.2^'+encodeURI('국제무역')+'&amp;sort=iregdate&amp;desc=desc'">국제무역</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=326.3^'+encodeURI('교통')+'&amp;sort=iregdate&amp;desc=desc'">교통</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=326.7^'+encodeURI('방송')+'&amp;sort=iregdate&amp;desc=desc'">방송</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=327^'+encodeURI('금융')+'&amp;sort=iregdate&amp;desc=desc'">금융</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=327.8^'+encodeURI('투자금융')+'&amp;sort=iregdate&amp;desc=desc'">투자금융</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=327.9^'+encodeURI('국제금융')+'&amp;sort=iregdate&amp;desc=desc'">국제금융</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=328^'+encodeURI('보험')+'&amp;sort=iregdate&amp;desc=desc'">보험</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=329^'+encodeURI('재정')+'&amp;sort=iregdate&amp;desc=desc'">재정</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=329.4^'+encodeURI('조세')+'&amp;sort=iregdate&amp;desc=desc'">조세</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=329.9^'+encodeURI('지방재정')+'&amp;sort=iregdate&amp;desc=desc'">지방재정</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=33^'+encodeURI('사회학,사회문제')+'&amp;sort=iregdate&amp;desc=desc'">사회학,사회문제</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=330^'+encodeURI('사회학,사회문제')+'&amp;sort=iregdate&amp;desc=desc'">사회학,사회문제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=331^'+encodeURI('사회학')+'&amp;sort=iregdate&amp;desc=desc'">사회학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=331.5^'+encodeURI('문화, 문화과정')+'&amp;sort=iregdate&amp;desc=desc'">문화,
														문화과정</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=332^'+encodeURI('사회조직및제도')+'&amp;sort=iregdate&amp;desc=desc'">사회조직및제도</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=334^'+encodeURI('사회문제')+'&amp;sort=iregdate&amp;desc=desc'">사회문제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=335^'+encodeURI('생활문제')+'&amp;sort=iregdate&amp;desc=desc'">생활문제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=337^'+encodeURI('여성문제')+'&amp;sort=iregdate&amp;desc=desc'">여성문제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=338^'+encodeURI('사회복지')+'&amp;sort=iregdate&amp;desc=desc'">사회복지</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=338.1^'+encodeURI('사회사업')+'&amp;sort=iregdate&amp;desc=desc'">사회사업</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=338.3^'+encodeURI('장애인복지')+'&amp;sort=iregdate&amp;desc=desc'">장애인복지</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=338.5^'+encodeURI('아동·청소년 복지')+'&amp;sort=iregdate&amp;desc=desc'">아동·청소년
														복지</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=338.6^'+encodeURI('노인복지사업')+'&amp;sort=iregdate&amp;desc=desc'">노인복지사업</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=339^'+encodeURI('사회단체')+'&amp;sort=iregdate&amp;desc=desc'">사회단체</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=34^'+encodeURI('정치학')+'&amp;sort=iregdate&amp;desc=desc'">정치학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=340^'+encodeURI('정치학')+'&amp;sort=iregdate&amp;desc=desc'">정치학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=340.9^'+encodeURI('정치사 및 정치사정')+'&amp;sort=iregdate&amp;desc=desc'">정치사
														및 정치사정</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=341^'+encodeURI('국가형태')+'&amp;sort=iregdate&amp;desc=desc'">국가형태</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=342^'+encodeURI('국가와개인및집단')+'&amp;sort=iregdate&amp;desc=desc'">국가와개인및집단</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=344^'+encodeURI('선거')+'&amp;sort=iregdate&amp;desc=desc'">선거</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=345^'+encodeURI('입법')+'&amp;sort=iregdate&amp;desc=desc'">입법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=346^'+encodeURI('정당')+'&amp;sort=iregdate&amp;desc=desc'">정당</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=349^'+encodeURI('외교,국제관계')+'&amp;sort=iregdate&amp;desc=desc'">외교,국제관계</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=349.1^'+encodeURI('각국 외교')+'&amp;sort=iregdate&amp;desc=desc'">각국
														외교</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=35^'+encodeURI('행정학')+'&amp;sort=iregdate&amp;desc=desc'">행정학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=350^'+encodeURI('행정학')+'&amp;sort=iregdate&amp;desc=desc'">행정학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=350.1^'+encodeURI('행정관리')+'&amp;sort=iregdate&amp;desc=desc'">행정관리</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=350.3^'+encodeURI('인사행정')+'&amp;sort=iregdate&amp;desc=desc'">인사행정</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=350.7^경찰행정(치안행정)&amp;sort=iregdate&amp;desc=desc">경찰행정(치안행정)</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=350.8^'+encodeURI('소방방재행정')+'&amp;sort=iregdate&amp;desc=desc'">소방방재행정</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=351^'+encodeURI('아시아 중앙행정 및 행정부')+'&amp;sort=iregdate&amp;desc=desc'">아시아
												중앙행정 및 행정부</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=352^'+encodeURI('유럽 중앙행정 및 행정부')+'&amp;sort=iregdate&amp;desc=desc'">유럽
												중앙행정 및 행정부</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=353^'+encodeURI('아프리카 중앙행정 및 행정부')+'&amp;sort=iregdate&amp;desc=desc'">아프리카
												중앙행정 및 행정부</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=354^'+encodeURI('북아메리카 중앙행정 및 행정부')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카
												중앙행정 및 행정부</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=355^'+encodeURI('남아메리카 중앙행정 및 행정부')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카
												중앙행정 및 행정부</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=356^'+encodeURI('오세아니아 중앙행정 및 행정부')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아
												중앙행정 및 행정부</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=357^'+encodeURI('양극지방 중앙행정 및 행정부')+'&amp;sort=iregdate&amp;desc=desc'">양극지방
												중앙행정 및 행정부</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=359^'+encodeURI('지방자치및행정')+'&amp;sort=iregdate&amp;desc=desc'">지방자치및행정</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=359.1^'+encodeURI('한국 지방자치 및 행정 일반')+'&amp;sort=iregdate&amp;desc=desc'">한국
														지방자치 및 행정 일반</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=36^'+encodeURI('법학')+'&amp;sort=iregdate&amp;desc=desc'">법학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=360^'+encodeURI('법학')+'&amp;sort=iregdate&amp;desc=desc'">법학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=361^'+encodeURI('국제법')+'&amp;sort=iregdate&amp;desc=desc'">국제법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=362^'+encodeURI('헌법')+'&amp;sort=iregdate&amp;desc=desc'">헌법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=363^'+encodeURI('행정법')+'&amp;sort=iregdate&amp;desc=desc'">행정법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=364^'+encodeURI('형법')+'&amp;sort=iregdate&amp;desc=desc'">형법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=365^'+encodeURI('민법')+'&amp;sort=iregdate&amp;desc=desc'">민법</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=365.9^'+encodeURI('무형재산권')+'&amp;sort=iregdate&amp;desc=desc'">무형재산권</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=366^'+encodeURI('상법')+'&amp;sort=iregdate&amp;desc=desc'">상법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=367^'+encodeURI('사법제도및소송법')+'&amp;sort=iregdate&amp;desc=desc'">사법제도및소송법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=368^'+encodeURI('기타제법')+'&amp;sort=iregdate&amp;desc=desc'">기타제법</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=368.1^'+encodeURI('사회법')+'&amp;sort=iregdate&amp;desc=desc'">사회법</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=369^'+encodeURI('각국법및예규')+'&amp;sort=iregdate&amp;desc=desc'">각국법및예규</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=37^'+encodeURI('교육학')+'&amp;sort=iregdate&amp;desc=desc'">교육학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=370^'+encodeURI('교육학')+'&amp;sort=iregdate&amp;desc=desc'">교육학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=370.1^'+encodeURI('교육철학 및 이론')+'&amp;sort=iregdate&amp;desc=desc'">교육철학
														및 이론</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=371^'+encodeURI('교육정책및행정')+'&amp;sort=iregdate&amp;desc=desc'">교육정책및행정</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=371.3^'+encodeURI('일반 교육행정')+'&amp;sort=iregdate&amp;desc=desc'">일반
														교육행정</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=372^'+encodeURI('학교행정및경영,보건및교육지도')+'&amp;sort=iregdate&amp;desc=desc'">학교행정및경영,보건및교육지도</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=373^'+encodeURI('학습지도,교육방법')+'&amp;sort=iregdate&amp;desc=desc'">학습지도,교육방법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=374^'+encodeURI('교육과정')+'&amp;sort=iregdate&amp;desc=desc'">교육과정</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=375^'+encodeURI('유아및초등교육')+'&amp;sort=iregdate&amp;desc=desc'">유아및초등교육</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=375.1^'+encodeURI('유아교육, 취학 전 교육')+'&amp;sort=iregdate&amp;desc=desc'">유아교육,
														취학 전 교육</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=375.2^'+encodeURI('초등교육')+'&amp;sort=iregdate&amp;desc=desc'">초등교육</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=375.4^'+encodeURI('초등교육과정')+'&amp;sort=iregdate&amp;desc=desc'">초등교육과정</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=376^'+encodeURI('중등교육')+'&amp;sort=iregdate&amp;desc=desc'">중등교육</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=376.4^'+encodeURI('중등교육과정')+'&amp;sort=iregdate&amp;desc=desc'">중등교육과정</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=376.5^'+encodeURI('중학교교육')+'&amp;sort=iregdate&amp;desc=desc'">중학교교육</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=376.6^'+encodeURI('고등학교교육')+'&amp;sort=iregdate&amp;desc=desc'">고등학교교육</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=377^'+encodeURI('대학,전문,고등교육')+'&amp;sort=iregdate&amp;desc=desc'">대학,전문,고등교육</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=378^'+encodeURI('사회교육')+'&amp;sort=iregdate&amp;desc=desc'">사회교육</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=379^'+encodeURI('특수교육')+'&amp;sort=iregdate&amp;desc=desc'">특수교육</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=376.4^'+encodeURI('중등교육과정')+'&amp;sort=iregdate&amp;desc=desc'">중등교육과정</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=376.5^'+encodeURI('중학교교육')+'&amp;sort=iregdate&amp;desc=desc'">중학교교육</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=379.1^'+encodeURI('장애인교육')+'&amp;sort=iregdate&amp;desc=desc'">장애인교육</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=38^'+encodeURI('풍속,민속학')+'&amp;sort=iregdate&amp;desc=desc'">풍속,민속학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=380^'+encodeURI('풍속,민속학')+'&amp;sort=iregdate&amp;desc=desc'">풍속,민속학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=381^'+encodeURI('의식주의풍습')+'&amp;sort=iregdate&amp;desc=desc'">의식주의풍습</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=382^'+encodeURI('가정생활의풍습')+'&amp;sort=iregdate&amp;desc=desc'">가정생활의풍습</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=383^'+encodeURI('사회생활의풍습')+'&amp;sort=iregdate&amp;desc=desc'">사회생활의풍습</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=384^'+encodeURI('관혼상제')+'&amp;sort=iregdate&amp;desc=desc'">관혼상제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=385^'+encodeURI('예절')+'&amp;sort=iregdate&amp;desc=desc'">예절</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=386^'+encodeURI('축제,세시풍속')+'&amp;sort=iregdate&amp;desc=desc'">축제,세시풍속</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=387^'+encodeURI('전쟁풍습')+'&amp;sort=iregdate&amp;desc=desc'">전쟁풍습</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=388^'+encodeURI('민속학')+'&amp;sort=iregdate&amp;desc=desc'">민속학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=389^'+encodeURI('문화인류학')+'&amp;sort=iregdate&amp;desc=desc'">문화인류학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=39^'+encodeURI('국방,군사학')+'&amp;sort=iregdate&amp;desc=desc'">국방,군사학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=390^'+encodeURI('국방,군사학')+'&amp;sort=iregdate&amp;desc=desc'">국방,군사학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=391^'+encodeURI('군사행정')+'&amp;sort=iregdate&amp;desc=desc'">군사행정</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=392^'+encodeURI('전략,전술')+'&amp;sort=iregdate&amp;desc=desc'">전략,전술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=393^'+encodeURI('군사교육 및 훈련')+'&amp;sort=iregdate&amp;desc=desc'">군사교육
												및 훈련</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=394^'+encodeURI('군사시설 및 장비')+'&amp;sort=iregdate&amp;desc=desc'">군사시설
												및 장비</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=395^'+encodeURI('군특수기술근무')+'&amp;sort=iregdate&amp;desc=desc'">군특수기술근무</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=396^'+encodeURI('육군')+'&amp;sort=iregdate&amp;desc=desc'">육군</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=397^'+encodeURI('해군')+'&amp;sort=iregdate&amp;desc=desc'">해군</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=398^'+encodeURI('공군')+'&amp;sort=iregdate&amp;desc=desc'">공군</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=399^'+encodeURI('고대병법')+'&amp;sort=iregdate&amp;desc=desc'">고대병법</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=4&amp;sort=iregdate&amp;desc=desc">자연과학</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=40^'+encodeURI('자연과학')+'&amp;sort=iregdate&amp;desc=desc'">자연과학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=400^'+encodeURI('자연과학')+'&amp;sort=iregdate&amp;desc=desc'">자연과학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=401^'+encodeURI('과학이론,과학철학')+'&amp;sort=iregdate&amp;desc=desc'">과학이론,과학철학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=402^잡저(편람,제표,서지,인명록)&amp;sort=iregdate&amp;desc=desc">잡저(편람,제표,서지,인명록)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=403^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=404^'+encodeURI('강연집,수필집,연설문집')+'&amp;sort=iregdate&amp;desc=desc'">강연집,수필집,연설문집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=405^'+encodeURI('연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=406^'+encodeURI('학회,단체,기관,회의')+'&amp;sort=iregdate&amp;desc=desc'">학회,단체,기관,회의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=407^'+encodeURI('지도법,연구법및교육,교육자료')+'&amp;sort=iregdate&amp;desc=desc'">지도법,연구법및교육,교육자료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=408^'+encodeURI('전집,총서')+'&amp;sort=iregdate&amp;desc=desc'">전집,총서</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=409^'+encodeURI('과학사및지역구분')+'&amp;sort=iregdate&amp;desc=desc'">과학사및지역구분</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=41^'+encodeURI('수학')+'&amp;sort=iregdate&amp;desc=desc'">수학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=410^'+encodeURI('수학')+'&amp;sort=iregdate&amp;desc=desc'">수학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=411^'+encodeURI('산수')+'&amp;sort=iregdate&amp;desc=desc'">산수</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=412^'+encodeURI('대수학')+'&amp;sort=iregdate&amp;desc=desc'">대수학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=413^'+encodeURI('확률론,통계수학')+'&amp;sort=iregdate&amp;desc=desc'">확률론,통계수학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=414^'+encodeURI('해석학')+'&amp;sort=iregdate&amp;desc=desc'">해석학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=415^'+encodeURI('기하학')+'&amp;sort=iregdate&amp;desc=desc'">기하학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=416^'+encodeURI('위상수학')+'&amp;sort=iregdate&amp;desc=desc'">위상수학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=417^'+encodeURI('삼각법')+'&amp;sort=iregdate&amp;desc=desc'">삼각법</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=42^'+encodeURI('물리학')+'&amp;sort=iregdate&amp;desc=desc'">물리학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=420^'+encodeURI('물리학')+'&amp;sort=iregdate&amp;desc=desc'">물리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=421^'+encodeURI('고체역학')+'&amp;sort=iregdate&amp;desc=desc'">고체역학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=422^'+encodeURI('유체역학')+'&amp;sort=iregdate&amp;desc=desc'">유체역학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=423^'+encodeURI('기체역학')+'&amp;sort=iregdate&amp;desc=desc'">기체역학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=424^'+encodeURI('음향학,진동학')+'&amp;sort=iregdate&amp;desc=desc'">음향학,진동학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=425^'+encodeURI('광학')+'&amp;sort=iregdate&amp;desc=desc'">광학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=426^'+encodeURI('열학')+'&amp;sort=iregdate&amp;desc=desc'">열학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=427^'+encodeURI('전기학및전자학')+'&amp;sort=iregdate&amp;desc=desc'">전기학및전자학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=428^'+encodeURI('자기')+'&amp;sort=iregdate&amp;desc=desc'">자기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=429^'+encodeURI('현대물리학')+'&amp;sort=iregdate&amp;desc=desc'">현대물리학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=43^'+encodeURI('화학')+'&amp;sort=iregdate&amp;desc=desc'">화학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=430^'+encodeURI('화학')+'&amp;sort=iregdate&amp;desc=desc'">화학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=431^'+encodeURI('이론화학과물리화학')+'&amp;sort=iregdate&amp;desc=desc'">이론화학과물리화학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=432^'+encodeURI('화학실험실,기기,시설')+'&amp;sort=iregdate&amp;desc=desc'">화학실험실,기기,시설</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=433^'+encodeURI('분석화학')+'&amp;sort=iregdate&amp;desc=desc'">분석화학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=434^'+encodeURI('합성화학이론')+'&amp;sort=iregdate&amp;desc=desc'">합성화학이론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=435^'+encodeURI('무기화학')+'&amp;sort=iregdate&amp;desc=desc'">무기화학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=436^'+encodeURI('금속원소와그화합물')+'&amp;sort=iregdate&amp;desc=desc'">금속원소와그화합물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=437^'+encodeURI('유기화학')+'&amp;sort=iregdate&amp;desc=desc'">유기화학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=438^'+encodeURI('환상화합물')+'&amp;sort=iregdate&amp;desc=desc'">환상화합물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=439^'+encodeURI('고분자화합물과기타유기물')+'&amp;sort=iregdate&amp;desc=desc'">고분자화합물과기타유기물</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=44^'+encodeURI('천문학')+'&amp;sort=iregdate&amp;desc=desc'">천문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=440^'+encodeURI('천문학')+'&amp;sort=iregdate&amp;desc=desc'">천문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=441^'+encodeURI('이론천문학')+'&amp;sort=iregdate&amp;desc=desc'">이론천문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=442^'+encodeURI('실지천문학')+'&amp;sort=iregdate&amp;desc=desc'">실지천문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=443^'+encodeURI('기술천문학')+'&amp;sort=iregdate&amp;desc=desc'">기술천문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=445^'+encodeURI('지구')+'&amp;sort=iregdate&amp;desc=desc'">지구</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=446^'+encodeURI('측지학')+'&amp;sort=iregdate&amp;desc=desc'">측지학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=447^'+encodeURI('항해천문학')+'&amp;sort=iregdate&amp;desc=desc'">항해천문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=448^'+encodeURI('역법,측시법')+'&amp;sort=iregdate&amp;desc=desc'">역법,측시법</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=45^'+encodeURI('지학')+'&amp;sort=iregdate&amp;desc=desc'">지학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=450^'+encodeURI('지학')+'&amp;sort=iregdate&amp;desc=desc'">지학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=451^'+encodeURI('지구물리학')+'&amp;sort=iregdate&amp;desc=desc'">지구물리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=452^'+encodeURI('지형학')+'&amp;sort=iregdate&amp;desc=desc'">지형학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=453^'+encodeURI('기상학,기후학')+'&amp;sort=iregdate&amp;desc=desc'">기상학,기후학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=454^'+encodeURI('해양학')+'&amp;sort=iregdate&amp;desc=desc'">해양학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=455^'+encodeURI('구조지질학')+'&amp;sort=iregdate&amp;desc=desc'">구조지질학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=456^'+encodeURI('지사학')+'&amp;sort=iregdate&amp;desc=desc'">지사학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=457^고생물학(화석학)&amp;sort=iregdate&amp;desc=desc">고생물학(화석학)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=458^'+encodeURI('응용지질학일반및광상학')+'&amp;sort=iregdate&amp;desc=desc'">응용지질학일반및광상학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=459^'+encodeURI('암석학')+'&amp;sort=iregdate&amp;desc=desc'">암석학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=46^'+encodeURI('광물학')+'&amp;sort=iregdate&amp;desc=desc'">광물학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=460^'+encodeURI('광물학')+'&amp;sort=iregdate&amp;desc=desc'">광물학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=461^'+encodeURI('원소광물')+'&amp;sort=iregdate&amp;desc=desc'">원소광물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=462^'+encodeURI('황화광물')+'&amp;sort=iregdate&amp;desc=desc'">황화광물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=463^'+encodeURI('할로겐화광물')+'&amp;sort=iregdate&amp;desc=desc'">할로겐화광물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=464^'+encodeURI('산화광물')+'&amp;sort=iregdate&amp;desc=desc'">산화광물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=465^'+encodeURI('규산및규산염광물')+'&amp;sort=iregdate&amp;desc=desc'">규산및규산염광물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=466^'+encodeURI('기타산화물을포함한광물')+'&amp;sort=iregdate&amp;desc=desc'">기타산화물을포함한광물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=467^'+encodeURI('유기광물')+'&amp;sort=iregdate&amp;desc=desc'">유기광물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=469^'+encodeURI('결정학')+'&amp;sort=iregdate&amp;desc=desc'">결정학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=47^'+encodeURI('생명과학')+'&amp;sort=iregdate&amp;desc=desc'">생명과학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=470^'+encodeURI('생명과학')+'&amp;sort=iregdate&amp;desc=desc'">생명과학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=471^인류학(자연인류학)&amp;sort=iregdate&amp;desc=desc">인류학(자연인류학)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=472^'+encodeURI('생물학')+'&amp;sort=iregdate&amp;desc=desc'">생물학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=473^'+encodeURI('생명론,생물철학')+'&amp;sort=iregdate&amp;desc=desc'">생명론,생물철학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=474^세포학(세포생물학)&amp;sort=iregdate&amp;desc=desc">세포학(세포생물학)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=475^'+encodeURI('미생물학')+'&amp;sort=iregdate&amp;desc=desc'">미생물학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=476^'+encodeURI('생물진화')+'&amp;sort=iregdate&amp;desc=desc'">생물진화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=477^'+encodeURI('생물지리학')+'&amp;sort=iregdate&amp;desc=desc'">생물지리학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=478^'+encodeURI('현미경및현미경검사법일반')+'&amp;sort=iregdate&amp;desc=desc'">현미경및현미경검사법일반</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=479^'+encodeURI('생물수집및보존')+'&amp;sort=iregdate&amp;desc=desc'">생물수집및보존</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=48^'+encodeURI('식물학')+'&amp;sort=iregdate&amp;desc=desc'">식물학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=480^'+encodeURI('식물학')+'&amp;sort=iregdate&amp;desc=desc'">식물학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=481^'+encodeURI('일반식물학')+'&amp;sort=iregdate&amp;desc=desc'">일반식물학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=482^'+encodeURI('음화식물')+'&amp;sort=iregdate&amp;desc=desc'">음화식물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=483^'+encodeURI('엽상식물')+'&amp;sort=iregdate&amp;desc=desc'">엽상식물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=484^'+encodeURI('조균류')+'&amp;sort=iregdate&amp;desc=desc'">조균류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=485^'+encodeURI('현화식물,종자식물')+'&amp;sort=iregdate&amp;desc=desc'">현화식물,종자식물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=486^'+encodeURI('나자식물')+'&amp;sort=iregdate&amp;desc=desc'">나자식물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=487^'+encodeURI('피자식물')+'&amp;sort=iregdate&amp;desc=desc'">피자식물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=488^'+encodeURI('단자엽식물')+'&amp;sort=iregdate&amp;desc=desc'">단자엽식물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=489^'+encodeURI('쌍자식물')+'&amp;sort=iregdate&amp;desc=desc'">쌍자식물</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=49^'+encodeURI('동물학')+'&amp;sort=iregdate&amp;desc=desc'">동물학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=490^'+encodeURI('동물학')+'&amp;sort=iregdate&amp;desc=desc'">동물학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=491^'+encodeURI('일반동물학')+'&amp;sort=iregdate&amp;desc=desc'">일반동물학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=492^'+encodeURI('무척추동물')+'&amp;sort=iregdate&amp;desc=desc'">무척추동물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=493^'+encodeURI('원생동물,해면동물,강장동물,편형동물')+'&amp;sort=iregdate&amp;desc=desc'">원생동물,해면동물,강장동물,편형동물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=494^'+encodeURI('연체동물,의연체동물')+'&amp;sort=iregdate&amp;desc=desc'">연체동물,의연체동물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=495^'+encodeURI('절지동물,곤충류')+'&amp;sort=iregdate&amp;desc=desc'">절지동물,곤충류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=496^'+encodeURI('척색동물')+'&amp;sort=iregdate&amp;desc=desc'">척색동물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=497^'+encodeURI('어류,양서류,파충류')+'&amp;sort=iregdate&amp;desc=desc'">어류,양서류,파충류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=498^'+encodeURI('조류')+'&amp;sort=iregdate&amp;desc=desc'">조류</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=499^'+encodeURI('포유류')+'&amp;sort=iregdate&amp;desc=desc'">포유류</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=5&amp;sort=iregdate&amp;desc=desc">기술과학</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=50^'+encodeURI('기술과학')+'&amp;sort=iregdate&amp;desc=desc'">기술과학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=500^'+encodeURI('기술과학')+'&amp;sort=iregdate&amp;desc=desc'">기술과학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=501^'+encodeURI('기술철학 및 이론')+'&amp;sort=iregdate&amp;desc=desc'">기술철학
												및 이론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=502^'+encodeURI('잡저')+'&amp;sort=iregdate&amp;desc=desc'">잡저</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=503^'+encodeURI('사전,용어집')+'&amp;sort=iregdate&amp;desc=desc'">사전,용어집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=504^'+encodeURI('강연집,수필집,연설문집')+'&amp;sort=iregdate&amp;desc=desc'">강연집,수필집,연설문집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=505^'+encodeURI('연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=506^'+encodeURI('학회,단체,기관,회의')+'&amp;sort=iregdate&amp;desc=desc'">학회,단체,기관,회의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=507^'+encodeURI('연구법및교육지도법')+'&amp;sort=iregdate&amp;desc=desc'">연구법및교육지도법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=508^'+encodeURI('전집,총서')+'&amp;sort=iregdate&amp;desc=desc'">전집,총서</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=509^'+encodeURI('기술사')+'&amp;sort=iregdate&amp;desc=desc'">기술사</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=51^'+encodeURI('의학')+'&amp;sort=iregdate&amp;desc=desc'">의학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=510^'+encodeURI('의학')+'&amp;sort=iregdate&amp;desc=desc'">의학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=510.7^'+encodeURI('의학 지도법 및 연구법, 교육, 교육자료')+'&amp;sort=iregdate&amp;desc=desc'">의학
														지도법 및 연구법, 교육, 교육자료</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=511^'+encodeURI('기초의학')+'&amp;sort=iregdate&amp;desc=desc'">기초의학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=512^'+encodeURI('임상의학')+'&amp;sort=iregdate&amp;desc=desc'">임상의학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=512.4^'+encodeURI('물리요법 및 자연요법')+'&amp;sort=iregdate&amp;desc=desc'">물리요법
														및 자연요법</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=512.5^'+encodeURI('기타요법')+'&amp;sort=iregdate&amp;desc=desc'">기타요법</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=512.8^'+encodeURI('간호학')+'&amp;sort=iregdate&amp;desc=desc'">간호학</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=513^'+encodeURI('내과학')+'&amp;sort=iregdate&amp;desc=desc'">내과학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=513.8^'+encodeURI('신경계통의 기질성질환')+'&amp;sort=iregdate&amp;desc=desc'">신경계통의
														기질성질환</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=513.9^'+encodeURI('전신병')+'&amp;sort=iregdate&amp;desc=desc'">전신병</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=514^'+encodeURI('외과')+'&amp;sort=iregdate&amp;desc=desc'">외과</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=515^'+encodeURI('치과의학,이비인후과학,안과학')+'&amp;sort=iregdate&amp;desc=desc'">치과의학,이비인후과학,안과학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=515.1^'+encodeURI('치과의학')+'&amp;sort=iregdate&amp;desc=desc'">치과의학</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=516^'+encodeURI('산부인과,소아과학')+'&amp;sort=iregdate&amp;desc=desc'">산부인과,소아과학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=517^'+encodeURI('건강증진,공중보건 및 예방의학')+'&amp;sort=iregdate&amp;desc=desc'">건강증진,공중보건
												및 예방의학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=517.1^'+encodeURI('행정 및 정책')+'&amp;sort=iregdate&amp;desc=desc'">행정
														및 정책</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=517.3^'+encodeURI('개인위생')+'&amp;sort=iregdate&amp;desc=desc'">개인위생</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=518^'+encodeURI('약학')+'&amp;sort=iregdate&amp;desc=desc'">약학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=519^'+encodeURI('한의학')+'&amp;sort=iregdate&amp;desc=desc'">한의학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=52^'+encodeURI('농업.농학')+'&amp;sort=iregdate&amp;desc=desc'">농업.농학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=520^'+encodeURI('농업,농학')+'&amp;sort=iregdate&amp;desc=desc'">농업,농학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=521^'+encodeURI('농업기초학')+'&amp;sort=iregdate&amp;desc=desc'">농업기초학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=522^'+encodeURI('농업경제')+'&amp;sort=iregdate&amp;desc=desc'">농업경제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=523^'+encodeURI('재배및보호')+'&amp;sort=iregdate&amp;desc=desc'">재배및보호</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=524^'+encodeURI('작물학')+'&amp;sort=iregdate&amp;desc=desc'">작물학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=525^'+encodeURI('원예')+'&amp;sort=iregdate&amp;desc=desc'">원예</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=525.9^'+encodeURI('조경')+'&amp;sort=iregdate&amp;desc=desc'">조경</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=526^'+encodeURI('임학,임업')+'&amp;sort=iregdate&amp;desc=desc'">임학,임업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=527^'+encodeURI('축산학')+'&amp;sort=iregdate&amp;desc=desc'">축산학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=528^'+encodeURI('수의학')+'&amp;sort=iregdate&amp;desc=desc'">수의학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=529^'+encodeURI('수산업,생물자원의보호')+'&amp;sort=iregdate&amp;desc=desc'">수산업,생물자원의보호</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=53^'+encodeURI('공학,공업일반,토목공학,환경공학')+'&amp;sort=iregdate&amp;desc=desc'">공학,공업일반,토목공학,환경공학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=530^'+encodeURI('공학,공업일반,토목공학,환경공학')+'&amp;sort=iregdate&amp;desc=desc'">공학,공업일반,토목공학,환경공학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=530.4^'+encodeURI('공업재료')+'&amp;sort=iregdate&amp;desc=desc'">공업재료</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=530.9^'+encodeURI('공업경제')+'&amp;sort=iregdate&amp;desc=desc'">공업경제</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=531^'+encodeURI('토목공학')+'&amp;sort=iregdate&amp;desc=desc'">토목공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=532^'+encodeURI('토목역학,토목재료')+'&amp;sort=iregdate&amp;desc=desc'">토목역학,토목재료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=533^'+encodeURI('측량')+'&amp;sort=iregdate&amp;desc=desc'">측량</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=534^'+encodeURI('도로공학')+'&amp;sort=iregdate&amp;desc=desc'">도로공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=535^'+encodeURI('철도공학')+'&amp;sort=iregdate&amp;desc=desc'">철도공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=536^'+encodeURI('교량공학')+'&amp;sort=iregdate&amp;desc=desc'">교량공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=537^'+encodeURI('수리공학')+'&amp;sort=iregdate&amp;desc=desc'">수리공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=538^'+encodeURI('항만공학')+'&amp;sort=iregdate&amp;desc=desc'">항만공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=539^'+encodeURI('위생,도시,환경공학')+'&amp;sort=iregdate&amp;desc=desc'">위생,도시,환경공학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=539.1^'+encodeURI('상수도공학(수도공학) 일반')+'&amp;sort=iregdate&amp;desc=desc'">상수도공학(수도공학)
														일반</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=539.7^'+encodeURI('도시계획')+'&amp;sort=iregdate&amp;desc=desc'">도시계획</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=539.9^'+encodeURI('공해, 환경 공학')+'&amp;sort=iregdate&amp;desc=desc'">공해,
														환경 공학</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=54^'+encodeURI('건축공학')+'&amp;sort=iregdate&amp;desc=desc'">건축공학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=540^'+encodeURI('건축공학')+'&amp;sort=iregdate&amp;desc=desc'">건축공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=541^'+encodeURI('건축재료')+'&amp;sort=iregdate&amp;desc=desc'">건축재료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=542^'+encodeURI('건축실무')+'&amp;sort=iregdate&amp;desc=desc'">건축실무</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=543^'+encodeURI('건물구조의유형')+'&amp;sort=iregdate&amp;desc=desc'">건물구조의유형</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=544^'+encodeURI('친환경건축')+'&amp;sort=iregdate&amp;desc=desc'">친환경건축</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=545^'+encodeURI('건물세부구조')+'&amp;sort=iregdate&amp;desc=desc'">건물세부구조</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=546^'+encodeURI('건축설비,배관및파이프의부설')+'&amp;sort=iregdate&amp;desc=desc'">건축설비,배관및파이프의부설</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=547^'+encodeURI('난방,환기및공기조절공학')+'&amp;sort=iregdate&amp;desc=desc'">난방,환기및공기조절공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=548^'+encodeURI('건축마감')+'&amp;sort=iregdate&amp;desc=desc'">건축마감</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=549^'+encodeURI('각종건물')+'&amp;sort=iregdate&amp;desc=desc'">각종건물</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=55^'+encodeURI('기계공학')+'&amp;sort=iregdate&amp;desc=desc'">기계공학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=550^'+encodeURI('기계공학')+'&amp;sort=iregdate&amp;desc=desc'">기계공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=551^'+encodeURI('기계역학,요소 및 설계')+'&amp;sort=iregdate&amp;desc=desc'">기계역학,요소
												및 설계</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=551.1^'+encodeURI('기계재료역학')+'&amp;sort=iregdate&amp;desc=desc'">기계재료역학</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=552^'+encodeURI('공구와 가공장비')+'&amp;sort=iregdate&amp;desc=desc'">공구와
												가공장비</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=553^'+encodeURI('열공학과원동기')+'&amp;sort=iregdate&amp;desc=desc'">열공학과원동기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=554^'+encodeURI('유체역학,공기역학,진공학')+'&amp;sort=iregdate&amp;desc=desc'">유체역학,공기역학,진공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=555^'+encodeURI('정밀기계')+'&amp;sort=iregdate&amp;desc=desc'">정밀기계</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=556^'+encodeURI('자동차공학')+'&amp;sort=iregdate&amp;desc=desc'">자동차공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=557^'+encodeURI('철도차량,기관차')+'&amp;sort=iregdate&amp;desc=desc'">철도차량,기관차</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=558^'+encodeURI('항공우주공학,우주항법학')+'&amp;sort=iregdate&amp;desc=desc'">항공우주공학,우주항법학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=559^'+encodeURI('기타공학')+'&amp;sort=iregdate&amp;desc=desc'">기타공학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=559.4^'+encodeURI('항해공학과 선박조정술')+'&amp;sort=iregdate&amp;desc=desc'">항해공학과
														선박조정술</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=559.9^'+encodeURI('자동제어공학')+'&amp;sort=iregdate&amp;desc=desc'">자동제어공학</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=56^'+encodeURI('전기공학,전자공학')+'&amp;sort=iregdate&amp;desc=desc'">전기공학,전자공학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=560^'+encodeURI('전기공학,전자공학')+'&amp;sort=iregdate&amp;desc=desc'">전기공학,전자공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=561^'+encodeURI('전기회로,계측,재료')+'&amp;sort=iregdate&amp;desc=desc'">전기회로,계측,재료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=562^'+encodeURI('전기기계및기구')+'&amp;sort=iregdate&amp;desc=desc'">전기기계및기구</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=563^'+encodeURI('발전')+'&amp;sort=iregdate&amp;desc=desc'">발전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=564^'+encodeURI('송전,배전')+'&amp;sort=iregdate&amp;desc=desc'">송전,배전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=565^'+encodeURI('전등,조명,전열')+'&amp;sort=iregdate&amp;desc=desc'">전등,조명,전열</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=566^'+encodeURI('전산공학')+'&amp;sort=iregdate&amp;desc=desc'">전산공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=567^'+encodeURI('통신공학')+'&amp;sort=iregdate&amp;desc=desc'">통신공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=568^'+encodeURI('무선공학')+'&amp;sort=iregdate&amp;desc=desc'">무선공학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=569^'+encodeURI('전자공학')+'&amp;sort=iregdate&amp;desc=desc'">전자공학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=569.4^'+encodeURI('반도체')+'&amp;sort=iregdate&amp;desc=desc'">반도체</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=57^'+encodeURI('화학공학')+'&amp;sort=iregdate&amp;desc=desc'">화학공학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=570^'+encodeURI('화학공학')+'&amp;sort=iregdate&amp;desc=desc'">화학공학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=570.3^'+encodeURI('화학공학의 일반 주제')+'&amp;sort=iregdate&amp;desc=desc'">화학공학의
														일반 주제</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=570.6^'+encodeURI('생명공학')+'&amp;sort=iregdate&amp;desc=desc'">생명공학</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=571^'+encodeURI('공업화학약품')+'&amp;sort=iregdate&amp;desc=desc'">공업화학약품</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=572^'+encodeURI('폭발물,연료공업')+'&amp;sort=iregdate&amp;desc=desc'">폭발물,연료공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=573^'+encodeURI('음료기술')+'&amp;sort=iregdate&amp;desc=desc'">음료기술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574^'+encodeURI('식품공학')+'&amp;sort=iregdate&amp;desc=desc'">식품공학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.1^'+encodeURI('설탕, 시럽 및 부산물')+'&amp;sort=iregdate&amp;desc=desc'">설탕,
														시럽 및 부산물</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.2^'+encodeURI('전분 및 젤리 제품')+'&amp;sort=iregdate&amp;desc=desc'">전분
														및 젤리 제품</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.3^'+encodeURI('식용지방 및 유류')+'&amp;sort=iregdate&amp;desc=desc'">식용지방
														및 유류</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.4^'+encodeURI('식염식품')+'&amp;sort=iregdate&amp;desc=desc'">식염식품</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.5^'+encodeURI('조미료')+'&amp;sort=iregdate&amp;desc=desc'">조미료</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.6^'+encodeURI('특정용도를 위한 식품 및 제조')+'&amp;sort=iregdate&amp;desc=desc'">특정용도를
														위한 식품 및 제조</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.7^'+encodeURI('곡류가공, 기타 씨앗 및 그 부산물')+'&amp;sort=iregdate&amp;desc=desc'">곡류가공,
														기타 씨앗 및 그 부산물</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.8^'+encodeURI('과일과 야채')+'&amp;sort=iregdate&amp;desc=desc'">과일과
														야채</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=574.9^'+encodeURI('정육과 관련식품')+'&amp;sort=iregdate&amp;desc=desc'">정육과
														관련식품</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=575^'+encodeURI('초,유지,석유,가스공업')+'&amp;sort=iregdate&amp;desc=desc'">초,유지,석유,가스공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=576^'+encodeURI('요업및동계공업')+'&amp;sort=iregdate&amp;desc=desc'">요업및동계공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=577^'+encodeURI('세탁,염색및동계공업')+'&amp;sort=iregdate&amp;desc=desc'">세탁,염색및동계공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=578^'+encodeURI('고분자화학공업')+'&amp;sort=iregdate&amp;desc=desc'">고분자화학공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=579^'+encodeURI('기타유기화학공업')+'&amp;sort=iregdate&amp;desc=desc'">기타유기화학공업</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=58^'+encodeURI('제조업')+'&amp;sort=iregdate&amp;desc=desc'">제조업</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=580^'+encodeURI('제조업')+'&amp;sort=iregdate&amp;desc=desc'">제조업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=581^'+encodeURI('금속제조및가공업')+'&amp;sort=iregdate&amp;desc=desc'">금속제조및가공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=582^'+encodeURI('철및강철제품')+'&amp;sort=iregdate&amp;desc=desc'">철및강철제품</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=583^'+encodeURI('철기류및소규모철공')+'&amp;sort=iregdate&amp;desc=desc'">철기류및소규모철공</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=584^'+encodeURI('제재업,목공업,목제품')+'&amp;sort=iregdate&amp;desc=desc'">제재업,목공업,목제품</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=585^'+encodeURI('피혁및모피공업')+'&amp;sort=iregdate&amp;desc=desc'">피혁및모피공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=586^'+encodeURI('펄프,종이및동계공업')+'&amp;sort=iregdate&amp;desc=desc'">펄프,종이및동계공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=587^'+encodeURI('직물및섬유공업')+'&amp;sort=iregdate&amp;desc=desc'">직물및섬유공업</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=588^'+encodeURI('의류제조')+'&amp;sort=iregdate&amp;desc=desc'">의류제조</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=89^'+encodeURI('소형상품제조')+'&amp;sort=iregdate&amp;desc=desc'">소형상품제조</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=59^'+encodeURI('생활과학')+'&amp;sort=iregdate&amp;desc=desc'">생활과학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=590^'+encodeURI('생활과학')+'&amp;sort=iregdate&amp;desc=desc'">생활과학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=591^'+encodeURI('가정관리및가정생활')+'&amp;sort=iregdate&amp;desc=desc'">가정관리및가정생활</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592^'+encodeURI('의복')+'&amp;sort=iregdate&amp;desc=desc'">의복</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592.1^'+encodeURI('의복 재료와 도구')+'&amp;sort=iregdate&amp;desc=desc'">의복
														재료와 도구</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592.2^'+encodeURI('재봉법, 홈패션 제작')+'&amp;sort=iregdate&amp;desc=desc'">재봉법,
														홈패션 제작</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592.3^'+encodeURI('의복제작 및 장식품의 제조')+'&amp;sort=iregdate&amp;desc=desc'">의복제작
														및 장식품의 제조</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592.4^'+encodeURI('의류 선택 및 구입')+'&amp;sort=iregdate&amp;desc=desc'">의류
														선택 및 구입</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592.5^'+encodeURI('의복 세탁 및 염색')+'&amp;sort=iregdate&amp;desc=desc'">의복
														세탁 및 염색</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592.6^'+encodeURI('의복 정리 및 보관')+'&amp;sort=iregdate&amp;desc=desc'">의복
														정리 및 보관</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592.8^'+encodeURI('의복 착용법')+'&amp;sort=iregdate&amp;desc=desc'">의복
														착용법</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=592.9^'+encodeURI('한복 및 전통의상')+'&amp;sort=iregdate&amp;desc=desc'">한복
														및 전통의상</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=593^'+encodeURI('몸치장(몸단장),화장')+'&amp;sort=iregdate&amp;desc=desc'">몸치장(몸단장),화장</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=593.2^'+encodeURI('머리, 얼굴, 피부 손질')+'&amp;sort=iregdate&amp;desc=desc'">머리,
														얼굴, 피부 손질</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=594^'+encodeURI('식품과음료')+'&amp;sort=iregdate&amp;desc=desc'">식품과음료</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=594.5^요리(조리법)&amp;sort=iregdate&amp;desc=desc">요리(조리법)</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=594.8^'+encodeURI('단체급식, 급식경영, 외식경영')+'&amp;sort=iregdate&amp;desc=desc'">단체급식,
														급식경영, 외식경영</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=595^'+encodeURI('주택관리및가정설비')+'&amp;sort=iregdate&amp;desc=desc'">주택관리및가정설비</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=596^'+encodeURI('공동주거용주택시설관리')+'&amp;sort=iregdate&amp;desc=desc'">공동주거용주택시설관리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=597^'+encodeURI('가정위생')+'&amp;sort=iregdate&amp;desc=desc'">가정위생</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=598^'+encodeURI('육아')+'&amp;sort=iregdate&amp;desc=desc'">육아</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=598.1^'+encodeURI('육아 일반')+'&amp;sort=iregdate&amp;desc=desc'">육아
														일반</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=6&amp;sort=iregdate&amp;desc=desc">예술</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=60^'+encodeURI('예술')+'&amp;sort=iregdate&amp;desc=desc'">예술</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=600^'+encodeURI('예술')+'&amp;sort=iregdate&amp;desc=desc'">예술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=601^'+encodeURI('미술이론,미학')+'&amp;sort=iregdate&amp;desc=desc'">미술이론,미학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=602^'+encodeURI('미술의재료및기법')+'&amp;sort=iregdate&amp;desc=desc'">미술의재료및기법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=603^'+encodeURI('미술사전')+'&amp;sort=iregdate&amp;desc=desc'">미술사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=604^'+encodeURI('미술의주제')+'&amp;sort=iregdate&amp;desc=desc'">미술의주제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=605^'+encodeURI('미술연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">미술연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=606^'+encodeURI('미술분야의학회,단체,기관,회의')+'&amp;sort=iregdate&amp;desc=desc'">미술분야의학회,단체,기관,회의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=607^'+encodeURI('미술의지도법,연구법및교육,교육자료')+'&amp;sort=iregdate&amp;desc=desc'">미술의지도법,연구법및교육,교육자료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=608^'+encodeURI('미술전집,총서')+'&amp;sort=iregdate&amp;desc=desc'">미술전집,총서</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=609^'+encodeURI('미술사')+'&amp;sort=iregdate&amp;desc=desc'">미술사</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=61^'+encodeURI('건축술')+'&amp;sort=iregdate&amp;desc=desc'">건축술</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=610^'+encodeURI('건축술')+'&amp;sort=iregdate&amp;desc=desc'">건축술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=611^'+encodeURI('궁전,[묘사],성곽')+'&amp;sort=iregdate&amp;desc=desc'">궁전,[묘사],성곽</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=612^'+encodeURI('종교건물')+'&amp;sort=iregdate&amp;desc=desc'">종교건물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=613^'+encodeURI('공공건물')+'&amp;sort=iregdate&amp;desc=desc'">공공건물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=614^'+encodeURI('과학및연구용건물')+'&amp;sort=iregdate&amp;desc=desc'">과학및연구용건물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=615^'+encodeURI('공업용건물')+'&amp;sort=iregdate&amp;desc=desc'">공업용건물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=616^'+encodeURI('상업,교통,통신용건물')+'&amp;sort=iregdate&amp;desc=desc'">상업,교통,통신용건물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=617^'+encodeURI('주거용건물')+'&amp;sort=iregdate&amp;desc=desc'">주거용건물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=618^'+encodeURI('기타건물')+'&amp;sort=iregdate&amp;desc=desc'">기타건물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=619^'+encodeURI('장식및의장')+'&amp;sort=iregdate&amp;desc=desc'">장식및의장</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=62^'+encodeURI('조각 및 조형미술')+'&amp;sort=iregdate&amp;desc=desc'">조각
										및 조형미술</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=620^'+encodeURI('조각 및 조형미술')+'&amp;sort=iregdate&amp;desc=desc'">조각
												및 조형미술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=622^'+encodeURI('조소재료및기법')+'&amp;sort=iregdate&amp;desc=desc'">조소재료및기법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=623^'+encodeURI('목조')+'&amp;sort=iregdate&amp;desc=desc'">목조</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=624^'+encodeURI('석조')+'&amp;sort=iregdate&amp;desc=desc'">석조</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=625^'+encodeURI('금동조')+'&amp;sort=iregdate&amp;desc=desc'">금동조</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=626^'+encodeURI('점토조소,소조')+'&amp;sort=iregdate&amp;desc=desc'">점토조소,소조</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=627^'+encodeURI('기타재료')+'&amp;sort=iregdate&amp;desc=desc'">기타재료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=628^'+encodeURI('篆각,인장')+'&amp;sort=iregdate&amp;desc=desc'">篆각,인장</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=629^'+encodeURI('제상')+'&amp;sort=iregdate&amp;desc=desc'">제상</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=63^'+encodeURI('공예,장식미술')+'&amp;sort=iregdate&amp;desc=desc'">공예,장식미술</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=630^'+encodeURI('공예,장식미술')+'&amp;sort=iregdate&amp;desc=desc'">공예,장식미술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=631^'+encodeURI('유리공예')+'&amp;sort=iregdate&amp;desc=desc'">유리공예</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=632^'+encodeURI('금속공예')+'&amp;sort=iregdate&amp;desc=desc'">금속공예</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=633^'+encodeURI('보석,갑각,폐류공예')+'&amp;sort=iregdate&amp;desc=desc'">보석,갑각,폐류공예</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=634^'+encodeURI('목,죽,화훼,왕골공예')+'&amp;sort=iregdate&amp;desc=desc'">목,죽,화훼,왕골공예</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=635^'+encodeURI('칠공예')+'&amp;sort=iregdate&amp;desc=desc'">칠공예</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=636^'+encodeURI('염직물공예,섬유공예')+'&amp;sort=iregdate&amp;desc=desc'">염직물공예,섬유공예</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=637^'+encodeURI('고무,플라스틱공예')+'&amp;sort=iregdate&amp;desc=desc'">고무,플라스틱공예</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=638^'+encodeURI('미술가구')+'&amp;sort=iregdate&amp;desc=desc'">미술가구</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=639^'+encodeURI('장식예술')+'&amp;sort=iregdate&amp;desc=desc'">장식예술</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=64^'+encodeURI('서예')+'&amp;sort=iregdate&amp;desc=desc'">서예</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=640^'+encodeURI('서예')+'&amp;sort=iregdate&amp;desc=desc'">서예</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=641^'+encodeURI('한자의서체')+'&amp;sort=iregdate&amp;desc=desc'">한자의서체</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=642^'+encodeURI('한자서법')+'&amp;sort=iregdate&amp;desc=desc'">한자서법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=643^'+encodeURI('한글서법')+'&amp;sort=iregdate&amp;desc=desc'">한글서법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=644^'+encodeURI('기타서법')+'&amp;sort=iregdate&amp;desc=desc'">기타서법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=646^'+encodeURI('펜습자')+'&amp;sort=iregdate&amp;desc=desc'">펜습자</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=647^낙관,수결(서명)&amp;sort=iregdate&amp;desc=desc">낙관,수결(서명)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=648^'+encodeURI('서보')+'&amp;sort=iregdate&amp;desc=desc'">서보</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=649^'+encodeURI('문방구')+'&amp;sort=iregdate&amp;desc=desc'">문방구</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=65^'+encodeURI('회화,도화')+'&amp;sort=iregdate&amp;desc=desc'">회화,도화</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=650^'+encodeURI('회화,도화')+'&amp;sort=iregdate&amp;desc=desc'">회화,도화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=651^'+encodeURI('채색이론및실제')+'&amp;sort=iregdate&amp;desc=desc'">채색이론및실제</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=652^'+encodeURI('회화의재료및기법')+'&amp;sort=iregdate&amp;desc=desc'">회화의재료및기법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=653^'+encodeURI('시대별및국별회화')+'&amp;sort=iregdate&amp;desc=desc'">시대별및국별회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=654^'+encodeURI('주제별회화')+'&amp;sort=iregdate&amp;desc=desc'">주제별회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=656^'+encodeURI('소묘,도화')+'&amp;sort=iregdate&amp;desc=desc'">소묘,도화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=657^'+encodeURI('만화,삽화')+'&amp;sort=iregdate&amp;desc=desc'">만화,삽화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=658^'+encodeURI('그래픽디자인,도안,포스터')+'&amp;sort=iregdate&amp;desc=desc'">그래픽디자인,도안,포스터</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=659^'+encodeURI('판화')+'&amp;sort=iregdate&amp;desc=desc'">판화</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=66^'+encodeURI('사진술')+'&amp;sort=iregdate&amp;desc=desc'">사진술</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=660^'+encodeURI('사진술')+'&amp;sort=iregdate&amp;desc=desc'">사진술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=661^'+encodeURI('사진기계,재료')+'&amp;sort=iregdate&amp;desc=desc'">사진기계,재료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=662^'+encodeURI('촬영기술')+'&amp;sort=iregdate&amp;desc=desc'">촬영기술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=663^'+encodeURI('음화처리')+'&amp;sort=iregdate&amp;desc=desc'">음화처리</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664^양화처리(인화)&amp;sort=iregdate&amp;desc=desc">양화처리(인화)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=666^'+encodeURI('특수사진술')+'&amp;sort=iregdate&amp;desc=desc'">특수사진술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=667^'+encodeURI('사진응용')+'&amp;sort=iregdate&amp;desc=desc'">사진응용</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=668^'+encodeURI('사진집')+'&amp;sort=iregdate&amp;desc=desc'">사진집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=669^'+encodeURI('인쇄술')+'&amp;sort=iregdate&amp;desc=desc'">인쇄술</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=67^'+encodeURI('음악')+'&amp;sort=iregdate&amp;desc=desc'">음악</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=670^'+encodeURI('음악')+'&amp;sort=iregdate&amp;desc=desc'">음악</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=671^'+encodeURI('음악이론및기법')+'&amp;sort=iregdate&amp;desc=desc'">음악이론및기법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=672^'+encodeURI('종교음악')+'&amp;sort=iregdate&amp;desc=desc'">종교음악</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=673^'+encodeURI('성악')+'&amp;sort=iregdate&amp;desc=desc'">성악</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=674^'+encodeURI('극음악,오페라')+'&amp;sort=iregdate&amp;desc=desc'">극음악,오페라</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=675^'+encodeURI('기악합주')+'&amp;sort=iregdate&amp;desc=desc'">기악합주</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=676^'+encodeURI('건반악기및타악기')+'&amp;sort=iregdate&amp;desc=desc'">건반악기및타악기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=677^'+encodeURI('현악기')+'&amp;sort=iregdate&amp;desc=desc'">현악기</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=678^관악기(취주악기)&amp;sort=iregdate&amp;desc=desc">관악기(취주악기)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=679^'+encodeURI('한국음악 및 동양전통음악')+'&amp;sort=iregdate&amp;desc=desc'">한국음악
												및 동양전통음악</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=68^'+encodeURI('공연예술 및 매체예술')+'&amp;sort=iregdate&amp;desc=desc'">공연예술
										및 매체예술</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=680^'+encodeURI('공연예술 및 매체예술')+'&amp;sort=iregdate&amp;desc=desc'">공연예술
												및 매체예술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=681^'+encodeURI('극장,제작,연출,연기')+'&amp;sort=iregdate&amp;desc=desc'">극장,제작,연출,연기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=682^'+encodeURI('연희')+'&amp;sort=iregdate&amp;desc=desc'">연희</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=683^'+encodeURI('인형극')+'&amp;sort=iregdate&amp;desc=desc'">인형극</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=684^'+encodeURI('각종연극')+'&amp;sort=iregdate&amp;desc=desc'">각종연극</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=685^'+encodeURI('무용,발레')+'&amp;sort=iregdate&amp;desc=desc'">무용,발레</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=686^'+encodeURI('라디오극(방송극) 및 음성(소리)매체 예술')+'&amp;sort=iregdate&amp;desc=desc'">라디오극(방송극)
												및 음성(소리)매체 예술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=687^'+encodeURI('텔레비전 극 및 시청각매체 방송 예술')+'&amp;sort=iregdate&amp;desc=desc'">텔레비전
												극 및 시청각매체 방송 예술</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=688^'+encodeURI('영화')+'&amp;sort=iregdate&amp;desc=desc'">영화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=689^'+encodeURI('대중연예')+'&amp;sort=iregdate&amp;desc=desc'">대중연예</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=69^'+encodeURI('오락,스포츠')+'&amp;sort=iregdate&amp;desc=desc'">오락,스포츠</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=690^'+encodeURI('오락,스포츠')+'&amp;sort=iregdate&amp;desc=desc'">오락,스포츠</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=691^'+encodeURI('오락')+'&amp;sort=iregdate&amp;desc=desc'">오락</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=692^'+encodeURI('체육학,스포츠')+'&amp;sort=iregdate&amp;desc=desc'">체육학,스포츠</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=693^'+encodeURI('체조,유희')+'&amp;sort=iregdate&amp;desc=desc'">체조,유희</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=694^'+encodeURI('육상경기')+'&amp;sort=iregdate&amp;desc=desc'">육상경기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=695^'+encodeURI('구기')+'&amp;sort=iregdate&amp;desc=desc'">구기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=696^'+encodeURI('수상경기,공중경기')+'&amp;sort=iregdate&amp;desc=desc'">수상경기,공중경기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=697^'+encodeURI('동계운동경기')+'&amp;sort=iregdate&amp;desc=desc'">동계운동경기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=698^'+encodeURI('무예및기타경기')+'&amp;sort=iregdate&amp;desc=desc'">무예및기타경기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=699^'+encodeURI('기타오락및레저스포츠')+'&amp;sort=iregdate&amp;desc=desc'">기타오락및레저스포츠</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=7&amp;sort=iregdate&amp;desc=desc">언어</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=70^'+encodeURI('언어')+'&amp;sort=iregdate&amp;desc=desc'">언어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=700^'+encodeURI('언어')+'&amp;sort=iregdate&amp;desc=desc'">언어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=701^'+encodeURI('언어학')+'&amp;sort=iregdate&amp;desc=desc'">언어학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=702^'+encodeURI('잡저')+'&amp;sort=iregdate&amp;desc=desc'">잡저</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=703^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=704^'+encodeURI('강연집')+'&amp;sort=iregdate&amp;desc=desc'">강연집</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=705^'+encodeURI('연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=706^'+encodeURI('학회,단체,기관,회의')+'&amp;sort=iregdate&amp;desc=desc'">학회,단체,기관,회의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=707^'+encodeURI('지도법,연구법및교육,교육자료')+'&amp;sort=iregdate&amp;desc=desc'">지도법,연구법및교육,교육자료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=708^'+encodeURI('전집,총서')+'&amp;sort=iregdate&amp;desc=desc'">전집,총서</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=709^'+encodeURI('언어사')+'&amp;sort=iregdate&amp;desc=desc'">언어사</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=71^'+encodeURI('한국어')+'&amp;sort=iregdate&amp;desc=desc'">한국어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=710^'+encodeURI('한국어')+'&amp;sort=iregdate&amp;desc=desc'">한국어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=711^'+encodeURI('음운,음성,문자')+'&amp;sort=iregdate&amp;desc=desc'">음운,음성,문자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=712^'+encodeURI('어원,어의')+'&amp;sort=iregdate&amp;desc=desc'">어원,어의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=713^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=714^'+encodeURI('어휘')+'&amp;sort=iregdate&amp;desc=desc'">어휘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=715^'+encodeURI('문법')+'&amp;sort=iregdate&amp;desc=desc'">문법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=716^'+encodeURI('작문')+'&amp;sort=iregdate&amp;desc=desc'">작문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=717^'+encodeURI('독본,해석,회화')+'&amp;sort=iregdate&amp;desc=desc'">독본,해석,회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=718^'+encodeURI('방언')+'&amp;sort=iregdate&amp;desc=desc'">방언</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=72^'+encodeURI('중국어')+'&amp;sort=iregdate&amp;desc=desc'">중국어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=720^'+encodeURI('중국어')+'&amp;sort=iregdate&amp;desc=desc'">중국어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=721^'+encodeURI('음운,음성,문자')+'&amp;sort=iregdate&amp;desc=desc'">음운,음성,문자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=722^'+encodeURI('어원,어의')+'&amp;sort=iregdate&amp;desc=desc'">어원,어의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=723^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=724^'+encodeURI('어휘')+'&amp;sort=iregdate&amp;desc=desc'">어휘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=725^'+encodeURI('문법,어법')+'&amp;sort=iregdate&amp;desc=desc'">문법,어법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=726^'+encodeURI('작문')+'&amp;sort=iregdate&amp;desc=desc'">작문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=727^'+encodeURI('독본,해석,회화')+'&amp;sort=iregdate&amp;desc=desc'">독본,해석,회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=728^'+encodeURI('방언')+'&amp;sort=iregdate&amp;desc=desc'">방언</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=73^'+encodeURI('일본어')+'&amp;sort=iregdate&amp;desc=desc'">일본어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=730^'+encodeURI('일본어')+'&amp;sort=iregdate&amp;desc=desc'">일본어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=731^'+encodeURI('음운,음성,문자')+'&amp;sort=iregdate&amp;desc=desc'">음운,음성,문자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=732^'+encodeURI('어원,어의')+'&amp;sort=iregdate&amp;desc=desc'">어원,어의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=733^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=734^'+encodeURI('어휘')+'&amp;sort=iregdate&amp;desc=desc'">어휘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=735^'+encodeURI('문법,어법')+'&amp;sort=iregdate&amp;desc=desc'">문법,어법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=736^'+encodeURI('작문')+'&amp;sort=iregdate&amp;desc=desc'">작문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=737^'+encodeURI('독본,해석,회화')+'&amp;sort=iregdate&amp;desc=desc'">독본,해석,회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=738^'+encodeURI('방언')+'&amp;sort=iregdate&amp;desc=desc'">방언</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=739^'+encodeURI('기타아시아제어')+'&amp;sort=iregdate&amp;desc=desc'">기타아시아제어</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=74^'+encodeURI('영어')+'&amp;sort=iregdate&amp;desc=desc'">영어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=740^'+encodeURI('영어')+'&amp;sort=iregdate&amp;desc=desc'">영어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=741^'+encodeURI('음운,음성,문자')+'&amp;sort=iregdate&amp;desc=desc'">음운,음성,문자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=742^'+encodeURI('어원,어의')+'&amp;sort=iregdate&amp;desc=desc'">어원,어의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=743^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=744^'+encodeURI('어휘')+'&amp;sort=iregdate&amp;desc=desc'">어휘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=745^'+encodeURI('문법')+'&amp;sort=iregdate&amp;desc=desc'">문법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=746^'+encodeURI('작문')+'&amp;sort=iregdate&amp;desc=desc'">작문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=747^'+encodeURI('독본,해석,회화')+'&amp;sort=iregdate&amp;desc=desc'">독본,해석,회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=748^'+encodeURI('방언')+'&amp;sort=iregdate&amp;desc=desc'">방언</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=749^'+encodeURI('앵글로색슨어')+'&amp;sort=iregdate&amp;desc=desc'">앵글로색슨어</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=75^'+encodeURI('독일어')+'&amp;sort=iregdate&amp;desc=desc'">독일어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=750^'+encodeURI('독일어')+'&amp;sort=iregdate&amp;desc=desc'">독일어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=751^'+encodeURI('음운,음성,문자')+'&amp;sort=iregdate&amp;desc=desc'">음운,음성,문자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=752^'+encodeURI('어원,어의')+'&amp;sort=iregdate&amp;desc=desc'">어원,어의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=753^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=754^'+encodeURI('어휘')+'&amp;sort=iregdate&amp;desc=desc'">어휘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=755^'+encodeURI('문법')+'&amp;sort=iregdate&amp;desc=desc'">문법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=756^'+encodeURI('작문')+'&amp;sort=iregdate&amp;desc=desc'">작문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=757^'+encodeURI('독본,해석,회화')+'&amp;sort=iregdate&amp;desc=desc'">독본,해석,회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=758^'+encodeURI('방언')+'&amp;sort=iregdate&amp;desc=desc'">방언</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=759^'+encodeURI('기타게르만어')+'&amp;sort=iregdate&amp;desc=desc'">기타게르만어</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=76^'+encodeURI('프랑스어')+'&amp;sort=iregdate&amp;desc=desc'">프랑스어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=760^'+encodeURI('프랑스어')+'&amp;sort=iregdate&amp;desc=desc'">프랑스어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=761^'+encodeURI('음운,음성,문자')+'&amp;sort=iregdate&amp;desc=desc'">음운,음성,문자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=762^'+encodeURI('어원,어의')+'&amp;sort=iregdate&amp;desc=desc'">어원,어의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=763^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=764^'+encodeURI('어휘')+'&amp;sort=iregdate&amp;desc=desc'">어휘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=765^'+encodeURI('문법')+'&amp;sort=iregdate&amp;desc=desc'">문법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=766^'+encodeURI('작문')+'&amp;sort=iregdate&amp;desc=desc'">작문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=767^'+encodeURI('독본,해석,회화')+'&amp;sort=iregdate&amp;desc=desc'">독본,해석,회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=768^'+encodeURI('방언')+'&amp;sort=iregdate&amp;desc=desc'">방언</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=769^'+encodeURI('프로방스어')+'&amp;sort=iregdate&amp;desc=desc'">프로방스어</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=77^'+encodeURI('스페인어')+'&amp;sort=iregdate&amp;desc=desc'">스페인어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=770^'+encodeURI('스페인어')+'&amp;sort=iregdate&amp;desc=desc'">스페인어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=771^'+encodeURI('음운,음성,문자')+'&amp;sort=iregdate&amp;desc=desc'">음운,음성,문자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=772^'+encodeURI('어원,어의')+'&amp;sort=iregdate&amp;desc=desc'">어원,어의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=773^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=774^'+encodeURI('어휘')+'&amp;sort=iregdate&amp;desc=desc'">어휘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=775^'+encodeURI('문법')+'&amp;sort=iregdate&amp;desc=desc'">문법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=776^'+encodeURI('작문')+'&amp;sort=iregdate&amp;desc=desc'">작문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=777^'+encodeURI('독본,해석,회화')+'&amp;sort=iregdate&amp;desc=desc'">독본,해석,회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=778^'+encodeURI('방언')+'&amp;sort=iregdate&amp;desc=desc'">방언</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=779^'+encodeURI('포르투갈어')+'&amp;sort=iregdate&amp;desc=desc'">포르투갈어</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=78^'+encodeURI('이탈리아어')+'&amp;sort=iregdate&amp;desc=desc'">이탈리아어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=780^'+encodeURI('이탈리아어')+'&amp;sort=iregdate&amp;desc=desc'">이탈리아어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=781^'+encodeURI('음운,음성,문자')+'&amp;sort=iregdate&amp;desc=desc'">음운,음성,문자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=782^'+encodeURI('어원,어의')+'&amp;sort=iregdate&amp;desc=desc'">어원,어의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=783^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=784^'+encodeURI('어휘')+'&amp;sort=iregdate&amp;desc=desc'">어휘</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=785^'+encodeURI('문법')+'&amp;sort=iregdate&amp;desc=desc'">문법</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=786^'+encodeURI('작문')+'&amp;sort=iregdate&amp;desc=desc'">작문</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=787^'+encodeURI('독본,해석,회화')+'&amp;sort=iregdate&amp;desc=desc'">독본,해석,회화</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=788^'+encodeURI('방언')+'&amp;sort=iregdate&amp;desc=desc'">방언</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=789^'+encodeURI('루마니아어')+'&amp;sort=iregdate&amp;desc=desc'">루마니아어</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=79^'+encodeURI('기타제어')+'&amp;sort=iregdate&amp;desc=desc'">기타제어</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=790^'+encodeURI('기타제어')+'&amp;sort=iregdate&amp;desc=desc'">기타제어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=792^'+encodeURI('인도-유럽계어')+'&amp;sort=iregdate&amp;desc=desc'">인도-유럽계어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=793^'+encodeURI('아프리카제어')+'&amp;sort=iregdate&amp;desc=desc'">아프리카제어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=94^'+encodeURI('북아메리카인디언어')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카인디언어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=795^'+encodeURI('남아메리카인디언어')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카인디언어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=796^'+encodeURI('오스트로네시아어')+'&amp;sort=iregdate&amp;desc=desc'">오스트로네시아어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=797^'+encodeURI('셈족어')+'&amp;sort=iregdate&amp;desc=desc'">셈족어</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=798^'+encodeURI('함족어')+'&amp;sort=iregdate&amp;desc=desc'">함족어</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=799^국제어(인공어)&amp;sort=iregdate&amp;desc=desc">국제어(인공어)</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=8&amp;sort=iregdate&amp;desc=desc">문학</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=80^'+encodeURI('문학')+'&amp;sort=iregdate&amp;desc=desc'">문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=800^'+encodeURI('문학')+'&amp;sort=iregdate&amp;desc=desc'">문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=801^'+encodeURI('문학이론')+'&amp;sort=iregdate&amp;desc=desc'">문학이론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=802^'+encodeURI('문장작법,수사학')+'&amp;sort=iregdate&amp;desc=desc'">문장작법,수사학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=802.1^'+encodeURI('운율학, 시작법')+'&amp;sort=iregdate&amp;desc=desc'">운율학,
														시작법</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=802.2^'+encodeURI('희곡, 극작법')+'&amp;sort=iregdate&amp;desc=desc'">희곡,
														극작법</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=802.3^'+encodeURI('소설, 소설작법')+'&amp;sort=iregdate&amp;desc=desc'">소설,
														소설작법</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=802.4^'+encodeURI('수필, 소품')+'&amp;sort=iregdate&amp;desc=desc'">수필,
														소품</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=802.5^'+encodeURI('연설법')+'&amp;sort=iregdate&amp;desc=desc'">연설법</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=802.6^'+encodeURI('일기, 서간, 기행문학')+'&amp;sort=iregdate&amp;desc=desc'">일기,
														서간, 기행문학</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=802.7^'+encodeURI('풍자')+'&amp;sort=iregdate&amp;desc=desc'">풍자</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=803^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=804^'+encodeURI('강연집,수필')+'&amp;sort=iregdate&amp;desc=desc'">강연집,수필</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=805^'+encodeURI('연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=06^'+encodeURI('학회,단체,기관,회의')+'&amp;sort=iregdate&amp;desc=desc'">학회,단체,기관,회의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=807^'+encodeURI('지도법및연구법,교육,교육자료')+'&amp;sort=iregdate&amp;desc=desc'">지도법및연구법,교육,교육자료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808^'+encodeURI('전집,총서')+'&amp;sort=iregdate&amp;desc=desc'">전집,총서</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.3^'+encodeURI('소설 전집')+'&amp;sort=iregdate&amp;desc=desc'">소설
														전집</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=809^'+encodeURI('문학사,평론')+'&amp;sort=iregdate&amp;desc=desc'">문학사,평론</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=81^'+encodeURI('한국문학')+'&amp;sort=iregdate&amp;desc=desc'">한국문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=810^'+encodeURI('한국문학')+'&amp;sort=iregdate&amp;desc=desc'">한국문학</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=810.8^'+encodeURI('전집, 총서')+'&amp;sort=iregdate&amp;desc=desc'">전집,
														총서</a></li>
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=810.9^'+encodeURI('문학사, 평론')+'&amp;sort=iregdate&amp;desc=desc'">문학사,
														평론</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=811^시&amp;sort=iregdate&amp;desc=desc">시</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=811.6&amp;sort=iregdate&amp;desc=desc">20세기
														1910-1999</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=811.7&amp;sort=iregdate&amp;desc=desc">21세기
														2000-</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=812^'+encodeURI('희곡')+'&amp;sort=iregdate&amp;desc=desc'">희곡</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=813^'+encodeURI('소설')+'&amp;sort=iregdate&amp;desc=desc'">소설</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=813.5^'+encodeURI('조선시대')+'&amp;sort=iregdate&amp;desc=desc'">조선시대</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=813.6&amp;sort=iregdate&amp;desc=desc">20세기
														1910-1999</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=813.7&amp;sort=iregdate&amp;desc=desc">21세기
														2000-</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=814^'+encodeURI('수필')+'&amp;sort=iregdate&amp;desc=desc'">수필</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=814.7&amp;sort=iregdate&amp;desc=desc">21세기수필</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=815^'+encodeURI('연설,웅변')+'&amp;sort=iregdate&amp;desc=desc'">연설,웅변</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=816^'+encodeURI('일기,서간,기행')+'&amp;sort=iregdate&amp;desc=desc'">일기,서간,기행</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=817^'+encodeURI('풍자,만담,만담연설')+'&amp;sort=iregdate&amp;desc=desc'">풍자,만담,만담연설</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=818^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=819^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=82^'+encodeURI('중국문학')+'&amp;sort=iregdate&amp;desc=desc'">중국문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=820^'+encodeURI('중국문학')+'&amp;sort=iregdate&amp;desc=desc'">중국문학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=821^시&amp;sort=iregdate&amp;desc=desc">시</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=822^'+encodeURI('희곡')+'&amp;sort=iregdate&amp;desc=desc'">희곡</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=823^'+encodeURI('소설')+'&amp;sort=iregdate&amp;desc=desc'">소설</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=823.7^'+encodeURI('현대소설')+'&amp;sort=iregdate&amp;desc=desc'">현대소설</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=824^'+encodeURI('수필')+'&amp;sort=iregdate&amp;desc=desc'">수필</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=825^'+encodeURI('연설,웅변')+'&amp;sort=iregdate&amp;desc=desc'">연설,웅변</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=826^'+encodeURI('일기,서간,기행')+'&amp;sort=iregdate&amp;desc=desc'">일기,서간,기행</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=827^'+encodeURI('풍자')+'&amp;sort=iregdate&amp;desc=desc'">풍자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=828^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=83^'+encodeURI('일본문학')+'&amp;sort=iregdate&amp;desc=desc'">일본문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=830^'+encodeURI('일본문학')+'&amp;sort=iregdate&amp;desc=desc'">일본문학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=831^시&amp;sort=iregdate&amp;desc=desc">시</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=832^'+encodeURI('희곡')+'&amp;sort=iregdate&amp;desc=desc'">희곡</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=833^'+encodeURI('소설')+'&amp;sort=iregdate&amp;desc=desc'">소설</a>
											<ul class="box_r2">
												<li><a
													href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=833.6^'+encodeURI('현대소설')+'&amp;sort=iregdate&amp;desc=desc'">현대소설</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=834^'+encodeURI('수필')+'&amp;sort=iregdate&amp;desc=desc'">수필</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=835^'+encodeURI('연설,웅변')+'&amp;sort=iregdate&amp;desc=desc'">연설,웅변</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=836^'+encodeURI('일기,서간,기행')+'&amp;sort=iregdate&amp;desc=desc'">일기,서간,기행</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=837^'+encodeURI('풍자')+'&amp;sort=iregdate&amp;desc=desc'">풍자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=838^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=839^'+encodeURI('기타아시아제문학')+'&amp;sort=iregdate&amp;desc=desc'">기타아시아제문학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=84^'+encodeURI('영미문학')+'&amp;sort=iregdate&amp;desc=desc'">영미문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=840^'+encodeURI('영미문학')+'&amp;sort=iregdate&amp;desc=desc'">영미문학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=841^시&amp;sort=iregdate&amp;desc=desc">시</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=842^'+encodeURI('희곡')+'&amp;sort=iregdate&amp;desc=desc'">희곡</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=843^'+encodeURI('소설')+'&amp;sort=iregdate&amp;desc=desc'">소설</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=843.5&amp;sort=iregdate&amp;desc=desc">20세기</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=843.6&amp;sort=iregdate&amp;desc=desc">21세기</a></li>
											</ul></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=844^'+encodeURI('수필')+'&amp;sort=iregdate&amp;desc=desc'">수필</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=845^'+encodeURI('연설,웅변')+'&amp;sort=iregdate&amp;desc=desc'">연설,웅변</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=846^'+encodeURI('일기,서간,기행')+'&amp;sort=iregdate&amp;desc=desc'">일기,서간,기행</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=847^'+encodeURI('풍자')+'&amp;sort=iregdate&amp;desc=desc'">풍자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=848^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=849^'+encodeURI('앵글로색슨문학')+'&amp;sort=iregdate&amp;desc=desc'">앵글로색슨문학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=85^'+encodeURI('독일문학')+'&amp;sort=iregdate&amp;desc=desc'">독일문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=850^'+encodeURI('독일문학')+'&amp;sort=iregdate&amp;desc=desc'">독일문학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=851^시&amp;sort=iregdate&amp;desc=desc">시</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=852^'+encodeURI('희곡')+'&amp;sort=iregdate&amp;desc=desc'">희곡</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=853^'+encodeURI('소설')+'&amp;sort=iregdate&amp;desc=desc'">소설</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=854^'+encodeURI('수필')+'&amp;sort=iregdate&amp;desc=desc'">수필</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=855^'+encodeURI('연설,웅변')+'&amp;sort=iregdate&amp;desc=desc'">연설,웅변</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=856^'+encodeURI('일기,서간,기행')+'&amp;sort=iregdate&amp;desc=desc'">일기,서간,기행</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=857^'+encodeURI('풍자')+'&amp;sort=iregdate&amp;desc=desc'">풍자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=858^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=859^'+encodeURI('기타게르만문학')+'&amp;sort=iregdate&amp;desc=desc'">기타게르만문학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=86^'+encodeURI('프랑스문학')+'&amp;sort=iregdate&amp;desc=desc'">프랑스문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=860^'+encodeURI('프랑스문학')+'&amp;sort=iregdate&amp;desc=desc'">프랑스문학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=861^시&amp;sort=iregdate&amp;desc=desc">시</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=862^'+encodeURI('희곡')+'&amp;sort=iregdate&amp;desc=desc'">희곡</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=863^'+encodeURI('소설')+'&amp;sort=iregdate&amp;desc=desc'">소설</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=864^'+encodeURI('수필')+'&amp;sort=iregdate&amp;desc=desc'">수필</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=865^'+encodeURI('연설,웅변')+'&amp;sort=iregdate&amp;desc=desc'">연설,웅변</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=866^'+encodeURI('일기,서간,기행')+'&amp;sort=iregdate&amp;desc=desc'">일기,서간,기행</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=867^'+encodeURI('풍자')+'&amp;sort=iregdate&amp;desc=desc'">풍자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=868^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=869^'+encodeURI('프로방스문학')+'&amp;sort=iregdate&amp;desc=desc'">프로방스문학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=87^'+encodeURI('스페인문학')+'&amp;sort=iregdate&amp;desc=desc'">스페인문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=870^'+encodeURI('스페인문학')+'&amp;sort=iregdate&amp;desc=desc'">스페인문학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=871^시&amp;sort=iregdate&amp;desc=desc">시</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=872^'+encodeURI('희곡')+'&amp;sort=iregdate&amp;desc=desc'">희곡</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=873^'+encodeURI('소설')+'&amp;sort=iregdate&amp;desc=desc'">소설</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=874^'+encodeURI('수필')+'&amp;sort=iregdate&amp;desc=desc'">수필</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=875^'+encodeURI('연설,웅변')+'&amp;sort=iregdate&amp;desc=desc'">연설,웅변</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=876^'+encodeURI('일기,서간,기행')+'&amp;sort=iregdate&amp;desc=desc'">일기,서간,기행</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=877^'+encodeURI('풍자')+'&amp;sort=iregdate&amp;desc=desc'">풍자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=878^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=879^'+encodeURI('포르투갈문학')+'&amp;sort=iregdate&amp;desc=desc'">포르투갈문학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=88^'+encodeURI('이탈리아문학')+'&amp;sort=iregdate&amp;desc=desc'">이탈리아문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=880^'+encodeURI('이탈리아문학')+'&amp;sort=iregdate&amp;desc=desc'">이탈리아문학</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=881^시&amp;sort=iregdate&amp;desc=desc">시</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=882^'+encodeURI('희곡')+'&amp;sort=iregdate&amp;desc=desc'">희곡</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=883^'+encodeURI('소설')+'&amp;sort=iregdate&amp;desc=desc'">소설</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=884^'+encodeURI('수필')+'&amp;sort=iregdate&amp;desc=desc'">수필</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=885^'+encodeURI('연설,웅변')+'&amp;sort=iregdate&amp;desc=desc'">연설,웅변</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=886^'+encodeURI('일기,서간,기행')+'&amp;sort=iregdate&amp;desc=desc'">일기,서간,기행</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=887^'+encodeURI('풍자')+'&amp;sort=iregdate&amp;desc=desc'">풍자</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=888^'+encodeURI('르포르타주및기타')+'&amp;sort=iregdate&amp;desc=desc'">르포르타주및기타</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=889^'+encodeURI('루마니아문학')+'&amp;sort=iregdate&amp;desc=desc'">루마니아문학</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=89^'+encodeURI('기타제문학')+'&amp;sort=iregdate&amp;desc=desc'">기타제문학</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=890^'+encodeURI('기타제문학')+'&amp;sort=iregdate&amp;desc=desc'">기타제문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=891^'+encodeURI('아시아제문학')+'&amp;sort=iregdate&amp;desc=desc'">아시아제문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=892^'+encodeURI('인도-유럽계문학')+'&amp;sort=iregdate&amp;desc=desc'">인도-유럽계문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=893^'+encodeURI('아프리카제문학')+'&amp;sort=iregdate&amp;desc=desc'">아프리카제문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=894^'+encodeURI('북아메리카인디언문학')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카인디언문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=895^'+encodeURI('남아메리카인디언문학')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카인디언문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=896^'+encodeURI('오스토로네시아문학')+'&amp;sort=iregdate&amp;desc=desc'">오스토로네시아문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=897^'+encodeURI('셈족문학')+'&amp;sort=iregdate&amp;desc=desc'">셈족문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=898^'+encodeURI('함족문학')+'&amp;sort=iregdate&amp;desc=desc'">함족문학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=899^'+encodeURI('기타문학')+'&amp;sort=iregdate&amp;desc=desc'">기타문학</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=9&amp;sort=iregdate&amp;desc=desc">역사</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=90^'+encodeURI('역사')+'&amp;sort=iregdate&amp;desc=desc'">역사</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=900^'+encodeURI('역사')+'&amp;sort=iregdate&amp;desc=desc'">역사</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=901^'+encodeURI('역사철학및이론')+'&amp;sort=iregdate&amp;desc=desc'">역사철학및이론</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=902^'+encodeURI('역사구조학')+'&amp;sort=iregdate&amp;desc=desc'">역사구조학</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=903^'+encodeURI('사전')+'&amp;sort=iregdate&amp;desc=desc'">사전</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=904^'+encodeURI('강연집,사평')+'&amp;sort=iregdate&amp;desc=desc'">강연집,사평</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=905^'+encodeURI('연속간행물')+'&amp;sort=iregdate&amp;desc=desc'">연속간행물</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=906^'+encodeURI('학회,단체,기관,회의')+'&amp;sort=iregdate&amp;desc=desc'">학회,단체,기관,회의</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=907^'+encodeURI('지도법,연구법및교육,교육자료')+'&amp;sort=iregdate&amp;desc=desc'">지도법,연구법및교육,교육자료</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=908^'+encodeURI('전집,총서')+'&amp;sort=iregdate&amp;desc=desc'">전집,총서</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=909^'+encodeURI('세계사,세계문화사')+'&amp;sort=iregdate&amp;desc=desc'">세계사,세계문화사</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=91^아시아(아세아)&amp;sort=iregdate&amp;desc=desc">아시아(아세아)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=910^아시아(아세아)&amp;sort=iregdate&amp;desc=desc">아시아(아세아)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=911^'+encodeURI('한국')+'&amp;sort=iregdate&amp;desc=desc'">한국</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=912^'+encodeURI('중국')+'&amp;sort=iregdate&amp;desc=desc'">중국</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=913^'+encodeURI('일본')+'&amp;sort=iregdate&amp;desc=desc'">일본</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=914^'+encodeURI('동남아시아')+'&amp;sort=iregdate&amp;desc=desc'">동남아시아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=915^'+encodeURI('인도')+'&amp;sort=iregdate&amp;desc=desc'">인도</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=916^'+encodeURI('중앙아시아')+'&amp;sort=iregdate&amp;desc=desc'">중앙아시아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=917^'+encodeURI('시베리아')+'&amp;sort=iregdate&amp;desc=desc'">시베리아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=918^'+encodeURI('서남아시아,중동')+'&amp;sort=iregdate&amp;desc=desc'">서남아시아,중동</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=919^'+encodeURI('아라비아반도')+'&amp;sort=iregdate&amp;desc=desc'">아라비아반도</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=92^유럽(구라파)&amp;sort=iregdate&amp;desc=desc">유럽(구라파)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=920^유럽(구라파)&amp;sort=iregdate&amp;desc=desc">유럽(구라파)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=921^'+encodeURI('고대그리스')+'&amp;sort=iregdate&amp;desc=desc'">고대그리스</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=922^'+encodeURI('고대로마')+'&amp;sort=iregdate&amp;desc=desc'">고대로마</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=923^'+encodeURI('스칸디나비아')+'&amp;sort=iregdate&amp;desc=desc'">스칸디나비아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=924^'+encodeURI('영국')+'&amp;sort=iregdate&amp;desc=desc'">영국</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=925^'+encodeURI('독일')+'&amp;sort=iregdate&amp;desc=desc'">독일</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=926^프랑스(불란서)&amp;sort=iregdate&amp;desc=desc">프랑스(불란서)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=927^스페인(서반아)&amp;sort=iregdate&amp;desc=desc">스페인(서반아)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=928^이탈리아(이태리)&amp;sort=iregdate&amp;desc=desc">이탈리아(이태리)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=929^러시아(로서아)&amp;sort=iregdate&amp;desc=desc">러시아(로서아)</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=93^'+encodeURI('아프리카')+'&amp;sort=iregdate&amp;desc=desc'">아프리카</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=930^'+encodeURI('아프리카')+'&amp;sort=iregdate&amp;desc=desc'">아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=931^'+encodeURI('북아프리카')+'&amp;sort=iregdate&amp;desc=desc'">북아프리카</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=932^이집트(애급)&amp;sort=iregdate&amp;desc=desc">이집트(애급)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=933^'+encodeURI('바바리제국')+'&amp;sort=iregdate&amp;desc=desc'">바바리제국</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=934^'+encodeURI('서아프리카')+'&amp;sort=iregdate&amp;desc=desc'">서아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=936^'+encodeURI('중아프리카')+'&amp;sort=iregdate&amp;desc=desc'">중아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=937^'+encodeURI('동아프리카')+'&amp;sort=iregdate&amp;desc=desc'">동아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=938^'+encodeURI('남아프리카')+'&amp;sort=iregdate&amp;desc=desc'">남아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=939^'+encodeURI('남인도양제도')+'&amp;sort=iregdate&amp;desc=desc'">남인도양제도</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=94^북아메리카(북미)&amp;sort=iregdate&amp;desc=desc">북아메리카(북미)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=940^북아메리카(북미)&amp;sort=iregdate&amp;desc=desc">북아메리카(북미)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=941^'+encodeURI('캐나다')+'&amp;sort=iregdate&amp;desc=desc'">캐나다</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=942^미국(미합중국)&amp;sort=iregdate&amp;desc=desc">미국(미합중국)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=943^'+encodeURI('멕시코')+'&amp;sort=iregdate&amp;desc=desc'">멕시코</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=944^중앙아메리카(중미제국)&amp;sort=iregdate&amp;desc=desc">중앙아메리카(중미제국)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=945^'+encodeURI('과테말라,벨리즈,엘살바도르')+'&amp;sort=iregdate&amp;desc=desc'">과테말라,벨리즈,엘살바도르</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=946^'+encodeURI('온두라스')+'&amp;sort=iregdate&amp;desc=desc'">온두라스</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=947^'+encodeURI('니카라과')+'&amp;sort=iregdate&amp;desc=desc'">니카라과</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=948^'+encodeURI('코스타리카,파나마')+'&amp;sort=iregdate&amp;desc=desc'">코스타리카,파나마</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=949^'+encodeURI('서인도제도')+'&amp;sort=iregdate&amp;desc=desc'">서인도제도</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=95^남아메리카(남미)&amp;sort=iregdate&amp;desc=desc">남아메리카(남미)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=950^남아메리카(남미)&amp;sort=iregdate&amp;desc=desc">남아메리카(남미)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=951^'+encodeURI('콜롬비아')+'&amp;sort=iregdate&amp;desc=desc'">콜롬비아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=952^'+encodeURI('베네수엘라,기아나')+'&amp;sort=iregdate&amp;desc=desc'">베네수엘라,기아나</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=953^'+encodeURI('브라질')+'&amp;sort=iregdate&amp;desc=desc'">브라질</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=954^'+encodeURI('에콰도르')+'&amp;sort=iregdate&amp;desc=desc'">에콰도르</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=955^'+encodeURI('페루')+'&amp;sort=iregdate&amp;desc=desc'">페루</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=956^'+encodeURI('볼리비아')+'&amp;sort=iregdate&amp;desc=desc'">볼리비아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=957^'+encodeURI('파라과이,우루과이')+'&amp;sort=iregdate&amp;desc=desc'">파라과이,우루과이</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=958^'+encodeURI('아르헨티나')+'&amp;sort=iregdate&amp;desc=desc'">아르헨티나</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=959^'+encodeURI('칠레')+'&amp;sort=iregdate&amp;desc=desc'">칠레</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=96^'+encodeURI('오세아니아')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=960^'+encodeURI('오세아니아')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=962^오스트레일리아(호주)&amp;sort=iregdate&amp;desc=desc">오스트레일리아(호주)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=963^'+encodeURI('뉴질랜드')+'&amp;sort=iregdate&amp;desc=desc'">뉴질랜드</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=964^'+encodeURI('파푸아뉴기니')+'&amp;sort=iregdate&amp;desc=desc'">파푸아뉴기니</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=965^'+encodeURI('멜라네시아')+'&amp;sort=iregdate&amp;desc=desc'">멜라네시아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=966^'+encodeURI('미크로네시아와 인접 국가')+'&amp;sort=iregdate&amp;desc=desc'">미크로네시아와
												인접 국가</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=967^'+encodeURI('폴리네시아')+'&amp;sort=iregdate&amp;desc=desc'">폴리네시아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=968^'+encodeURI('하와이')+'&amp;sort=iregdate&amp;desc=desc'">하와이</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=969^'+encodeURI('대서양제도')+'&amp;sort=iregdate&amp;desc=desc'">대서양제도</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=97^'+encodeURI('서극지방')+'&amp;sort=iregdate&amp;desc=desc'">서극지방</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=970^'+encodeURI('서극지방')+'&amp;sort=iregdate&amp;desc=desc'">서극지방</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=971^'+encodeURI('북극지방')+'&amp;sort=iregdate&amp;desc=desc'">북극지방</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=973^'+encodeURI('그린란드')+'&amp;sort=iregdate&amp;desc=desc'">그린란드</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=798^'+encodeURI('남극지방')+'&amp;sort=iregdate&amp;desc=desc'">남극지방</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=979^'+encodeURI('외계지역')+'&amp;sort=iregdate&amp;desc=desc'">외계지역</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=98^'+encodeURI('지리')+'&amp;sort=iregdate&amp;desc=desc'">지리</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=980^'+encodeURI('지리')+'&amp;sort=iregdate&amp;desc=desc'">지리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=981^'+encodeURI('아시아지리')+'&amp;sort=iregdate&amp;desc=desc'">아시아지리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=982^'+encodeURI('유럽지리')+'&amp;sort=iregdate&amp;desc=desc'">유럽지리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=983^'+encodeURI('아프리카지리')+'&amp;sort=iregdate&amp;desc=desc'">아프리카지리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=984^'+encodeURI('북아메리카지리')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카지리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=985^'+encodeURI('남아메리카지리')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카지리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=986^'+encodeURI('오세아니아지리')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아지리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=987^'+encodeURI('양극지리')+'&amp;sort=iregdate&amp;desc=desc'">양극지리</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=988^'+encodeURI('해양')+'&amp;sort=iregdate&amp;desc=desc'">해양</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=989^'+encodeURI('지도및지도책')+'&amp;sort=iregdate&amp;desc=desc'">지도및지도책</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=99^'+encodeURI('전기')+'&amp;sort=iregdate&amp;desc=desc'">전기</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=990^'+encodeURI('전기')+'&amp;sort=iregdate&amp;desc=desc'">전기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=991^'+encodeURI('아시아')+'&amp;sort=iregdate&amp;desc=desc'">아시아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=992^'+encodeURI('유럽')+'&amp;sort=iregdate&amp;desc=desc'">유럽</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=993^'+encodeURI('아프리카')+'&amp;sort=iregdate&amp;desc=desc'">아프리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=994^'+encodeURI('북아메리카')+'&amp;sort=iregdate&amp;desc=desc'">북아메리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=995^'+encodeURI('남아메리카')+'&amp;sort=iregdate&amp;desc=desc'">남아메리카</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=996^'+encodeURI('오세아니아')+'&amp;sort=iregdate&amp;desc=desc'">오세아니아</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=997^'+encodeURI('양극')+'&amp;sort=iregdate&amp;desc=desc'">양극</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=998^'+encodeURI('주제별전기')+'&amp;sort=iregdate&amp;desc=desc'">주제별전기</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=999^'+encodeURI('계보,족보')+'&amp;sort=iregdate&amp;desc=desc'">계보,족보</a></li>
									</ul></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<!-- //KDC(동양서) 주제 -->
			<!-- DDC(서양서) 주제별 -->
			<div id="browsingTab02" class="browsingTab_container"
				style="display: none;">
				<h3 class="hide">DDC(듀이십진분류)로 찾기</h3>
				<div class="defaultBrowsingTab">
					<ul class="box_l">
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=0&amp;sort=iregdate&amp;desc=desc">Computer
								science, information, general works</a>
							<ul class="box_c" style="display: none;">
								<!-- 2deth-->
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=00^Computer science, information, general works&amp;sort=iregdate&amp;desc=desc'">Computer
										science, information, general works</a>
									<ul class="box_r" style="display: none;">
										<!-- 3deth-->
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=000^Computer science, information, general works&amp;sort=iregdate&amp;desc=desc'">Computer
												science, information, general works</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=001^Knowledge&amp;sort=iregdate&amp;desc=desc'">Knowledge</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=002^The book&amp;sort=iregdate&amp;desc=desc'">The
												book</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=003^Systems&amp;sort=iregdate&amp;desc=desc'">Systems</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=004^Computer science&amp;sort=iregdate&amp;desc=desc'">Computer
												science</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=005^Computer programming, programs, dat&amp;sort=iregdate&amp;desc=desc'">Computer
												programming, programs, data</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=006^Special computer methods&amp;sort=iregdate&amp;desc=desc'">Special
												computer methods</a></li>
									</ul></li>
								<!-- 2deth-->
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=01^Bibliography&amp;sort=iregdate&amp;desc=desc'">Bibliography</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=010^Bibliography&amp;sort=iregdate&amp;desc=desc'">Bibliography</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=011^Bibliographiesandcatalogs&amp;sort=iregdate&amp;desc=desc'">Bibliographies
												and catalogs</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=012^Bibliographiesandcatalogs of individuals&amp;sort=iregdate&amp;desc=desc'">Bibliographies
												and catalogs of individuals</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=014^Bibliographiesandcatalogs of anonymousandpseudonymous works&amp;sort=iregdate&amp;desc=desc'">Bibliographies
												and catalogs of anonymous and pseudonymous works</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=015^Bibliographiesandcatalogs of works from specific places&amp;sort=iregdate&amp;desc=desc'">Bibliographies
												and catalogs of works from specific places</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=016^Bibliographiesandcatalogs of works on specific subjects&amp;sort=iregdate&amp;desc=desc'">Bibliographies
												and catalogs of works on specific subjects</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=017^General bibliographiesandcatalogs of works held in specific collections or offered for sale&amp;sort=iregdate&amp;desc=desc'">General
												bibliographies and catalogs of works held in specific
												collections or offered for sale</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=02^Library &amp; information sciences&amp;sort=iregdate&amp;desc=desc'">Library
										&amp; information sciences </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=020^Library &amp; information sciences&amp;sort=iregdate&amp;desc=desc'">Library
												&amp; information sciences </a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=021^Relationships of libraries, archives, information centers&amp;sort=iregdate&amp;desc=desc'">Relationships
												of libraries, archives, information centers</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=022^Administration of physical plant&amp;sort=iregdate&amp;desc=desc'">Administration
												of physical plant</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=023^Personnel management (Human resource management)&amp;sort=iregdate&amp;desc=desc'">Personnel
												management (Human resource management)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=025^Operations of libraries, archives, information centers&amp;sort=iregdate&amp;desc=desc'">Operations
												of libraries, archives, information centers</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=026^Libraries, archives, information centers devoted to specific subjects&amp;sort=iregdate&amp;desc=desc'">Libraries,
												archives, information centers devoted to specific subjects</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=027^General libraries, archives, information centers&amp;sort=iregdate&amp;desc=desc'">General
												libraries, archives, information centers</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=028^Readinganduse of other information media&amp;sort=iregdate&amp;desc=desc'">Reading
												and use of other information media</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=03^General encyclopedic works&amp;sort=iregdate&amp;desc=desc'">General
										encyclopedic works</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=030^General encyclopedic works&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=031^General encyclopedic works in American English&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in American English</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=032^General encyclopedic works in English&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in English</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=033^General encyclopedic works in other Germanic languages&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in other Germanic languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=034^General encyclopedic works in French, Occitan, Catalan&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in French, Occitan, Catalan</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=035^General encyclopedic works in Italian, Dalmatian, Romanian, Rhaetian, Sardinian, Corsican&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in Italian, Dalmatian, Romanian,
												Rhaetian, Sardinian, Corsican</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=036^General encyclopedic works in Spanish, Portuguese, Galician&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in Spanish, Portuguese, Galician</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=037^General encyclopedic works in Slavic languages&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in Slavic languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=038^General encyclopedic works in Scandinavian languages&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in Scandinavian languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=039^General encyclopedic works in other languages&amp;sort=iregdate&amp;desc=desc'">General
												encyclopedic works in other languages</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=05^General serial publications&amp;sort=iregdate&amp;desc=desc'">General
										serial publications</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=050^General serial publications&amp;sort=iregdate&amp;desc=desc'">General
												serial publications</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=051^General serial publications in American English&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in American English</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=052^General serial publications in English&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in English</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=053^General serial publications in other Germanic languages&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in other Germanic languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=054^General serial publications in French, Occitan, Catalan&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in French, Occitan, Catalan</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=055^General serial publications in Italian, Dalmatian, Romanian, Rhaetian, Sardinian, Corsican&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in Italian, Dalmatian, Romanian,
												Rhaetian, Sardinian, Corsican</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=056^General serial publications in Spanish, Portuguese, Galician&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in Spanish, Portuguese, Galician</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=057^General serial publications in Slavic languages&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in Slavic languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=058^General serial publications in Scandinavian languages&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in Scandinavian languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=059^General serial publications in other languages&amp;sort=iregdate&amp;desc=desc'">General
												serial publications in other languages</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=06^General organizationsandmuseology&amp;sort=iregdate&amp;desc=desc'">General
										organizations and museology</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=060^General organizationsandmuseology&amp;sort=iregdate&amp;desc=desc'">General
												organizations and museology</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=061^General organizations in North America&amp;sort=iregdate&amp;desc=desc'">General
												organizations in North America</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=062^General organizations in British Isles&amp;sort=iregdate&amp;desc=desc'">General
												organizations in British Isles</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=063^General organizations in Germanyandneighboring central European countries&amp;sort=iregdate&amp;desc=desc'">General
												organizations in Germany and neighboring central European
												countries</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=064^General organizations in FranceandMonaco&amp;sort=iregdate&amp;desc=desc'">General
												organizations in France and Monaco</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=065^General organizations in Italy, San Marino, Vatican City, Malta&amp;sort=iregdate&amp;desc=desc'">General
												organizations in Italy, San Marino, Vatican City, Malta</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=066^General organizations in Spain, Andorra, Gibraltar, Portugal&amp;sort=iregdate&amp;desc=desc'">General
												organizations in Spain, Andorra, Gibraltar, Portugal</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=067^General organizations in Russiaandneighboring east European countries&amp;sort=iregdate&amp;desc=desc'">General
												organizations in Russia and neighboring east European
												countries</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=068^General organizations in other geographic areas&amp;sort=iregdate&amp;desc=desc'">General
												organizations in other geographic areas</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=069^Museology(Museum science)&amp;sort=iregdate&amp;desc=desc'">Museology(Museum
												science)</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=07^Documentary media, educational media, news media; journalism; publishing&amp;sort=iregdate&amp;desc=desc'">Documentary
										media, educational media, news media; journalism; publishing</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=070^Documentary media, educational media, news media; journalism; publishing&amp;sort=iregdate&amp;desc=desc'">Documentary
												media, educational media, news media; journalism; publishing</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=071^Journalismandnewspapers in North America&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in North America</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=072^Journalismandnewspapers in British Isles&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in British Isles</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=073^Journalismandnewspapers in Germanyandneighboring central European countries&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in Germany and neighboring central European
												countries</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=074^Journalismandnewspapers in FranceandMonaco&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in France and Monaco</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=075^Journalismandnewspapers in Italy, San Marino, Vatican City, Malta&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in Italy, San Marino, Vatican City, Malta</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=076^Journalismandnewspapers in Spain, Andorra, Gibraltar, Portugal&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in Spain, Andorra, Gibraltar, Portugal</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=077^Journalismandnewspapers in Russiaandneighboring east European countries&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in Russia and neighboring east European
												countries</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=078^Journalismandnewspapers in Scandinavia&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in Scandinavia</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=079^Journalismandnewspapers in other geographic areas&amp;sort=iregdate&amp;desc=desc'">Journalism
												and newspapers in other geographic areas</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=08^General collections&amp;sort=iregdate&amp;desc=desc'">General
										collections</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=080^General collections&amp;sort=iregdate&amp;desc=desc'">General
												collections</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=081^General collections in American English&amp;sort=iregdate&amp;desc=desc'">General
												collections in American English</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=082^General collections in English&amp;sort=iregdate&amp;desc=desc'">General
												collections in English</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=083^General collections in other Germanic languages&amp;sort=iregdate&amp;desc=desc'">General
												collections in other Germanic languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=084^General collections in French, Occitan, Catalan&amp;sort=iregdate&amp;desc=desc'">General
												collections in French, Occitan, Catalan</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=085^General collections in Italian, Dalmatian, Romanian, Rhaetian, Sardinian, Corsican&amp;sort=iregdate&amp;desc=desc'">General
												collections in Italian, Dalmatian, Romanian, Rhaetian,
												Sardinian, Corsican</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=086^General collections in Spanish, Portuguese, Galician&amp;sort=iregdate&amp;desc=desc'">General
												collections in Spanish, Portuguese, Galician</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=087^General collections in Slavic languages&amp;sort=iregdate&amp;desc=desc'">General
												collections in Slavic languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=088^General collections in Scandinavian languages&amp;sort=iregdate&amp;desc=desc'">General
												collections in Scandinavian languages</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=089^General collections in other languages&amp;sort=iregdate&amp;desc=desc'">General
												collections in other languages</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=09^Manuscripts, rare books, other rare printed materials&amp;sort=iregdate&amp;desc=desc'">Manuscripts,
										rare books, other rare printed materials</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=090^Manuscripts, rare books, other rare printed materials&amp;sort=iregdate&amp;desc=desc'">Manuscripts,
												rare books, other rare printed materials</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=091^Manuscripts&amp;sort=iregdate&amp;desc=desc'">Manuscripts</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=092^Block books&amp;sort=iregdate&amp;desc=desc'">Block
												books</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=093^Incunbula&amp;sort=iregdate&amp;desc=desc'">Incunbula</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=094^Printed books&amp;sort=iregdate&amp;desc=desc'">Printed
												books</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=095^Books notable for bindings&amp;sort=iregdate&amp;desc=desc'">Books
												notable for bindings</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=096^Books notable for illustrationsandmaterials&amp;sort=iregdate&amp;desc=desc'">Books
												notable for illustrations and materials</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=097^Books notable for ownership or origin&amp;sort=iregdate&amp;desc=desc'">Books
												notable for ownership or origin</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=098^Prohibited works, forgeries, hoaxes&amp;sort=iregdate&amp;desc=desc'">Prohibited
												works, forgeries, hoaxes</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=099^Books notable for formal&amp;sort=iregdate&amp;desc=desc'">Books
												notable for formal</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=1&amp;sort=iregdate&amp;desc=desc">Philosophy,
								parapsychology and occultism, psychology </a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=10^Philosophy, parapsychologyandoccultism, psychology &amp;sort=iregdate&amp;desc=desc'">Philosophy,
										parapsychology and occultism, psychology </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=100^Philosophy, parapsychologyandoccultism, psychology&amp;sort=iregdate&amp;desc=desc'">Philosophy,
												parapsychology and occultism, psychology </a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=101^Theory of philosophy&amp;sort=iregdate&amp;desc=desc'">Theory
												of philosophy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=102^Miscellany of philosophy&amp;sort=iregdate&amp;desc=desc'">Miscellany
												of philosophy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=103^Dictionaries, encyclopedias, concordances of philosophy&amp;sort=iregdate&amp;desc=desc'">Dictionaries,
												encyclopedias, concordances of philosophy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=105^Serial publications of philosophy&amp;sort=iregdate&amp;desc=desc'">Serial
												publications of philosophy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=106^Organizationsandmanagement of philosophy&amp;sort=iregdate&amp;desc=desc'">Organizations
												and management of philosophy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=107^Education, research, related topics of philosophy&amp;sort=iregdate&amp;desc=desc'">Education,
												research, related topics of philosophy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=108^Groups of people &amp;sort=iregdate&amp;desc=desc'">Groups
												of people </a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=109^Historyandcollected biography&amp;sort=iregdate&amp;desc=desc'">History
												and collected biography</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=11^Metaphysics&amp;sort=iregdate&amp;desc=desc'">Metaphysics</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=110^Metaphysics&amp;sort=iregdate&amp;desc=desc'">Metaphysics</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=111^Ontology&amp;sort=iregdate&amp;desc=desc'">Ontology</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=113^Cosmology(Philosophy of nature)&amp;sort=iregdate&amp;desc=desc'">Cosmology(Philosophy
												of nature)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=114^Space&amp;sort=iregdate&amp;desc=desc'">Space</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=115^Time&amp;sort=iregdate&amp;desc=desc'">Time</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=116^Change&amp;sort=iregdate&amp;desc=desc'">Change</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=117^Structure&amp;sort=iregdate&amp;desc=desc'">Structure</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=118^Forceandenergy&amp;sort=iregdate&amp;desc=desc'">Force
												and energy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=119^Numberandquantity&amp;sort=iregdate&amp;desc=desc'">Number
												and quantity</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=12^Epistemology, causation, humankind&amp;sort=iregdate&amp;desc=desc'">Epistemology,
										causation, humankind</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=120^Epistemology, causation, humankind&amp;sort=iregdate&amp;desc=desc'">Epistemology,
												causation, humankind</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=121^Epistemology(Theory of knowledge)&amp;sort=iregdate&amp;desc=desc'">Epistemology(Theory
												of knowledge)</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=122^Causation&amp;sort=iregdate&amp;desc=desc'">Causation</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=123^Determinismandindeterminism&amp;sort=iregdate&amp;desc=desc'">Determinism
												and indeterminism</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=124^Teleology&amp;sort=iregdate&amp;desc=desc'">Teleology</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=126^The self&amp;sort=iregdate&amp;desc=desc'">The
												self</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=127^The unconsciousandthe subconscious&amp;sort=iregdate&amp;desc=desc'">The
												unconscious and the subconscious</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=128^Humankind&amp;sort=iregdate&amp;desc=desc'">Humankind</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=129^Originanddestiny of individual souls&amp;sort=iregdate&amp;desc=desc'">Origin
												and destiny of individual souls</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=13^Parapsychologyandoccultism&amp;sort=iregdate&amp;desc=desc'">Parapsychology
										and occultism</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=130^Parapsychologyandoccultism&amp;sort=iregdate&amp;desc=desc'">Parapsychology
												and occultism</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=131^Parapsychologicalandoccult methods for achieving well-being, happiness, success&amp;sort=iregdate&amp;desc=desc'">Parapsychological
												and occult methods for achieving well-being, happiness,
												success</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=133^Specific topics in parapsychologyandoccultism&amp;sort=iregdate&amp;desc=desc'">Specific
												topics in parapsychology and occultism</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=135^Dreamsandmysteries&amp;sort=iregdate&amp;desc=desc'">Dreams
												and mysteries</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=137^Divinatory graphology&amp;sort=iregdate&amp;desc=desc'">Divinatory
												graphology</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=138^Physiognomy&amp;sort=iregdate&amp;desc=desc'">Physiognomy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=139^Phrenology&amp;sort=iregdate&amp;desc=desc'">Phrenology</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=14^Specific philosophical schoolsandviewpoints&amp;sort=iregdate&amp;desc=desc'">Specific
										philosophical schools and viewpoints</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=140^Specific philosophical schoolsandviewpoints&amp;sort=iregdate&amp;desc=desc'">Specific
												philosophical schools and viewpoints</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=141^Idealismandrelated systemsanddoctrines&amp;sort=iregdate&amp;desc=desc'">Idealism
												and related systems and doctrines</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=142^Critical philosophy&amp;sort=iregdate&amp;desc=desc'">Critical
												philosophy</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=143^Bergsomismandintuitionism&amp;sort=iregdate&amp;desc=desc'">Bergsomism
												and intuitionism</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=144^Humanismandrelated systemsanddoctrines&amp;sort=iregdate&amp;desc=desc'">Humanism
												and related systems and doctrines</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=145^Sensationalism&amp;sort=iregdate&amp;desc=desc'">Sensationalism</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=146^Naturalismandrelated systemsanddoctrines&amp;sort=iregdate&amp;desc=desc'">Naturalism
												and related systems and doctrines</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=147^Pantheismandrelated systemsanddoctrines&amp;sort=iregdate&amp;desc=desc'">Pantheism
												and related systems and doctrines</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=148^Dogmatism, eclecticism, liberalism, syncretism, traditionalism&amp;sort=iregdate&amp;desc=desc'">Dogmatism,
												eclecticism, liberalism, syncretism, traditionalism</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=149^Other philosophical systemsanddoctrines&amp;sort=iregdate&amp;desc=desc'">Other
												philosophical systems and doctrines</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=15^Psychology&amp;sort=iregdate&amp;desc=desc'">Psychology</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=150^Psychology&amp;sort=iregdate&amp;desc=desc">Psychology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=152^Sensory perception, movement, emotions, physiological drives&amp;sort=iregdate&amp;desc=desc">Sensory
												perception, movement, emotions, physiological drives</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=153^Conscious mental processesandintelligence&amp;sort=iregdate&amp;desc=desc'">Conscious
												mental processes and intelligence</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=154^Subconsciousandaltered statesandprocesses&amp;sort=iregdate&amp;desc=desc'">Subconscious
												and altered states and processes</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=155^Differentialanddevelopmental psychology&amp;sort=iregdate&amp;desc=desc'">Differential
												and developmental psychology</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=156^Comparative psychology&amp;sort=iregdate&amp;desc=desc'">Comparative
												psychology</a></li>
										<li><a
											href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=158^Applied Psychology&amp;sort=iregdate&amp;desc=desc'">Applied
												Psychology</a></li>
									</ul></li>
								<li><a
									href="javascript:location.href='http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=16^Philosophical logic&amp;sort=iregdate&amp;desc=desc'">Philosophical
										logic</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=160^Philosophical logic&amp;sort=iregdate&amp;desc=desc">Philosophical
												logic</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=161^Induction&amp;sort=iregdate&amp;desc=desc">Induction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=162^Deduction&amp;sort=iregdate&amp;desc=desc">Deduction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=165^Fallaciesandsources of error&amp;sort=iregdate&amp;desc=desc">Fallacies
												and sources of error</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=166^Syllogisms&amp;sort=iregdate&amp;desc=desc">Syllogisms</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=167^Hypotheses&amp;sort=iregdate&amp;desc=desc">Hypotheses</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=168^Argumentandpersuasion&amp;sort=iregdate&amp;desc=desc">Argument
												and persuasion</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=169^Analogy&amp;sort=iregdate&amp;desc=desc">Analogy</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=17^Ethics (Moral philosophy)&amp;sort=iregdate&amp;desc=desc">Ethics
										(Moral philosophy)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=170^Ethics (Moral philosophy)&amp;sort=iregdate&amp;desc=desc">Ethics
												(Moral philosophy)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=171^Ethical systems&amp;sort=iregdate&amp;desc=desc">Ethical
												systems</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=172^Political ethics&amp;sort=iregdate&amp;desc=desc">Political
												ethics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=173^Ethics of family relationships&amp;sort=iregdate&amp;desc=desc">Ethics
												of family relationships</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=174^Occupational ethics&amp;sort=iregdate&amp;desc=desc">Occupational
												ethics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=175^Ethics of recreation, leisure, public performances, communication&amp;sort=iregdate&amp;desc=desc">Ethics
												of recreation, leisure, public performances, communication</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=176^Ethics of sexandreproduction&amp;sort=iregdate&amp;desc=desc">Ethics
												of sex and reproduction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=177^Ethics of social relations&amp;sort=iregdate&amp;desc=desc">Ethics
												of social relations</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=178^Ethics of consumption&amp;sort=iregdate&amp;desc=desc">Ethics
												of consumption</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=179^Other ethical norms&amp;sort=iregdate&amp;desc=desc">Other
												ethical norms</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=18^Ancient, medieval, eastern philosophy&amp;sort=iregdate&amp;desc=desc">Ancient,
										medieval, eastern philosophy</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=180^Ancient, medieval, eastern philosophy&amp;sort=iregdate&amp;desc=desc">Ancient,
												medieval, eastern philosophy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=181^Eastern philosophy&amp;sort=iregdate&amp;desc=desc">Eastern
												philosophy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=182^Pre-Socratic Greek philosophies&amp;sort=iregdate&amp;desc=desc">Pre-Socratic
												Greek philosophies</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=183^Sophistic, Socratic, related Greek philosophies&amp;sort=iregdate&amp;desc=desc">Sophistic,
												Socratic, related Greek philosophies</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=184^Platonic philosophy&amp;sort=iregdate&amp;desc=desc">Platonic
												philosophy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=185^Aristotelian philosophy&amp;sort=iregdate&amp;desc=desc">Aristotelian
												philosophy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=186^SkepticandNeoplatonic philosophies&amp;sort=iregdate&amp;desc=desc">Skeptic
												and Neoplatonic philosophies</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=187^Epicurean philosophy&amp;sort=iregdate&amp;desc=desc">Epicurean
												philosophy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=188^Stoic philosophy&amp;sort=iregdate&amp;desc=desc">Stoic
												philosophy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=189^Medieval western philosophy&amp;sort=iregdate&amp;desc=desc">Medieval
												western philosophy</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=19^Modern westernandother noneastern philosophy&amp;sort=iregdate&amp;desc=desc">Modern
										western and other noneastern philosophy</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=190^Modern westernandother noneastern philosophy&amp;sort=iregdate&amp;desc=desc">Modern
												western and other noneastern philosophy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=191^Philosophy of United StatesandCanada&amp;sort=iregdate&amp;desc=desc">Philosophy
												of United States and Canada</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=192^Philosophy of British Isles&amp;sort=iregdate&amp;desc=desc">Philosophy
												of British Isles</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=193^Philosophy of GermanyandAustria&amp;sort=iregdate&amp;desc=desc">Philosophy
												of Germany and Austria</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=194^Philosophy of France&amp;sort=iregdate&amp;desc=desc">Philosophy
												of France</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=195^Philosophy of Italy&amp;sort=iregdate&amp;desc=desc">Philosophy
												of Italy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=196^Philosophy of SpainandPortugal&amp;sort=iregdate&amp;desc=desc">Philosophy
												of Spain and Portugal</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=197^Philosophy of Russia&amp;sort=iregdate&amp;desc=desc">Philosophy
												of Russia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=198^Philosophy of ScandinaviaandFinland&amp;sort=iregdate&amp;desc=desc">Philosophy
												of Scandinavia and Finland</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=199^Philosophy in other geographic areas&amp;sort=iregdate&amp;desc=desc">Philosophy
												in other geographic areas</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=2&amp;sort=iregdate&amp;desc=desc">Religion</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=20^Religion&amp;sort=iregdate&amp;desc=desc">Religion</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=200^Religion&amp;sort=iregdate&amp;desc=desc">Religion</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=201^Religious mythology, general classes of religion, interreligious relationsandattitudes, social theology&amp;sort=iregdate&amp;desc=desc">Religious
												mythology, general classes of religion, interreligious
												relations and attitudes, social theology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=202^Doctrines&amp;sort=iregdate&amp;desc=desc">Doctrines</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=203^Public worshipandother practices&amp;sort=iregdate&amp;desc=desc">Public
												worship and other practices</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=204^Religious experience, life, practice&amp;sort=iregdate&amp;desc=desc">Religious
												experience, life, practice</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=205^Religious ethics&amp;sort=iregdate&amp;desc=desc">Religious
												ethics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=206^Leadersandorganization&amp;sort=iregdate&amp;desc=desc">Leaders
												and organization</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=207^Missionsandreligious education&amp;sort=iregdate&amp;desc=desc">Missions
												and religious education</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=208^Sources&amp;sort=iregdate&amp;desc=desc">Sources</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=209^Sectsandreform movements&amp;sort=iregdate&amp;desc=desc">Sects
												and reform movements</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=21^Philosophyandtheory of religion&amp;sort=iregdate&amp;desc=desc">Philosophy
										and theory of religion</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=210^Philosophyandtheory of religion&amp;desc=desc">Philosophy
												and theory of religion</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=211^Concepts of God &amp;sort=iregdate&amp;desc=desc">Concepts
												of God </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=212^Existence of God, ways of knowing God, attributes of God&amp;sort=iregdate&amp;desc=desc">Existence
												of God, ways of knowing God, attributes of God</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=213^Creation&amp;sort=iregdate&amp;desc=desc">Creation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=214^Theodicy &amp;sort=iregdate&amp;desc=desc">Theodicy
										</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=215^Scienceandreligion &amp;sort=iregdate&amp;desc=desc">Science
												and religion </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=218^Humankind &amp;sort=iregdate&amp;desc=desc">Humankind
										</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=22^Bible&amp;sort=iregdate&amp;desc=desc">Bible</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=220^Bible&amp;sort=iregdate&amp;desc=desc">Bible</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=221^Old Testament (Tanakh)&amp;sort=iregdate&amp;desc=desc">Old
												Testament (Tanakh)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=222^Historical books of Old Testament&amp;sort=iregdate&amp;desc=desc">Historical
												books of Old Testament</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=223^Poetic books of Old Testament&amp;sort=iregdate&amp;desc=desc">Poetic
												books of Old Testament</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=224^Prophetic books of Old Testament&amp;sort=iregdate&amp;desc=desc">Prophetic
												books of Old Testament</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=225^New Testament&amp;sort=iregdate&amp;desc=desc">New
												Testament</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=226^GospelsandActs&amp;sort=iregdate&amp;desc=desc">Gospels
												and Acts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=227^Epistles&amp;sort=iregdate&amp;desc=desc">Epistles</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=228^Revelation (Apocalypse)&amp;sort=iregdate&amp;desc=desc">Revelation
												(Apocalypse)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=229^Apocrypha, pseudepigrapha, intertestamental works&amp;sort=iregdate&amp;desc=desc">Apocrypha,
												pseudepigrapha, intertestamental works</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=23^Christianity&amp;sort=iregdate&amp;desc=desc">Christianity</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=230^Christianity&amp;sort=iregdate&amp;desc=desc">Christianity</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=231^God&amp;sort=iregdate&amp;desc=desc">God</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=232^Jesus Christandhis family&amp;sort=iregdate&amp;desc=desc">Jesus
												Christ and his family</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=233^Humankind&amp;sort=iregdate&amp;desc=desc">Humankind</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=234^Salvationandgrace&amp;sort=iregdate&amp;desc=desc">Salvation
												and grace</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=235^Spiritual beings&amp;sort=iregdate&amp;desc=desc">Spiritual
												beings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=236^Eschatology&amp;sort=iregdate&amp;desc=desc">Eschatology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=238^Creeds, confessions of faith, covenants, catechisms&amp;sort=iregdate&amp;desc=desc">Creeds,
												confessions of faith, covenants, catechisms</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=239^Apologeticsandpolemics&amp;sort=iregdate&amp;desc=desc">Apologetics
												and polemics</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=24^Christian moralanddevotional theology&amp;sort=iregdate&amp;desc=desc">Christian
										moral and devotional theology</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=240^Christian moralanddevotional theology&amp;sort=iregdate&amp;desc=desc">Christian
												moral and devotional theology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=241^Christian ethics&amp;sort=iregdate&amp;desc=desc">Christian
												ethics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=242^Devotional literature&amp;sort=iregdate&amp;desc=desc">Devotional
												literature</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=243^Evangelistic writings for individualsandfamilies&amp;sort=iregdate&amp;desc=desc">Evangelistic
												writings for individuals and families</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=246^Use of art in Christianity&amp;sort=iregdate&amp;desc=desc">Use
												of art in Christianity</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=247^Church furnishingsandrelated articles&amp;sort=iregdate&amp;desc=desc">Church
												furnishings and related articles</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=248^Christian experience, practice, life&amp;sort=iregdate&amp;desc=desc">Christian
												experience, practice, life</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=249^Christian observances in family life&amp;sort=iregdate&amp;desc=desc">Christian
												observances in family life</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=25^Local Christian churchandChristian religious orders&amp;sort=iregdate&amp;desc=desc">Local
										Christian church and Christian religious orders</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=250^Local Christian churchandChristian religious orders&amp;sort=iregdate&amp;desc=desc">Local
												Christian church and Christian religious orders</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=251^Preaching (Homiletics)&amp;sort=iregdate&amp;desc=desc">Preaching
												(Homiletics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=252^Texts of sermons&amp;sort=iregdate&amp;desc=desc">Texts
												of sermons</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=253^Pastoral officeandwork (Pastoral theology)&amp;sort=iregdate&amp;desc=desc">Pastoral
												office and work (Pastoral theology)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=254^Parish administration&amp;sort=iregdate&amp;desc=desc">Parish
												administration</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=255^Religious congregationsandorders&amp;sort=iregdate&amp;desc=desc">Religious
												congregations and orders</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=259^Pastoral care of families, of specific groups of people&amp;sort=iregdate&amp;desc=desc">Pastoral
												care of families, of specific groups of people</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=26^Christian socialandecclesiastical theology&amp;sort=iregdate&amp;desc=desc">Christian
										social and ecclesiastical theology</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=260^Christian socialandecclesiastical theology&amp;sort=iregdate&amp;desc=desc">Christian
												social and ecclesiastical theology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=261^Social theologyandinterreligious relationsandattitudes&amp;sort=iregdate&amp;desc=desc">Social
												theology and interreligious relations and attitudes</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=262^Ecclesiology&amp;sort=iregdate&amp;desc=desc">Ecclesiology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=263^Days, times, places of religious observance&amp;sort=iregdate&amp;desc=desc">Days,
												times, places of religious observance</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=264^Public worship&amp;sort=iregdate&amp;desc=desc">Public
												worship</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=265^Sacraments, other ritesandacts&amp;sort=iregdate&amp;desc=desc">Sacraments,
												other rites and acts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=266^Missions&amp;sort=iregdate&amp;desc=desc">Missions</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=267^Associations for religious work&amp;sort=iregdate&amp;desc=desc">Associations
												for religious work</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=268^Religious education&amp;sort=iregdate&amp;desc=desc">Religious
												education</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=269^Spiritual renewal&amp;sort=iregdate&amp;desc=desc">Spiritual
												renewal</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=27^History, geographic treatment, biography of Christianity&amp;sort=iregdate&amp;desc=desc">History,
										geographic treatment, biography of Christianity</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=270^History, geographic treatment, biography of Christianity&amp;sort=iregdate&amp;desc=desc">History,
												geographic treatment, biography of Christianity</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=271^Religious congregationsandorders in church history&amp;sort=iregdate&amp;desc=desc">Religious
												congregations and orders in church history</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=272^Persecutions in general church history&amp;sort=iregdate&amp;desc=desc">Persecutions
												in general church history</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=273^Doctrinal controversiesandheresies in general church history&amp;sort=iregdate&amp;desc=desc">Doctrinal
												controversies and heresies in general church history</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=274^Christianity in Europe&amp;sort=iregdate&amp;desc=desc">Christianity
												in Europe</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=275^Christianity in Asia&amp;sort=iregdate&amp;desc=desc">Christianity
												in Asia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=276^Christianity in Africa&amp;sort=iregdate&amp;desc=desc">Christianity
												in Africa</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=277^Christianity in North America&amp;sort=iregdate&amp;desc=desc">Christianity
												in North America</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=278^Christianity in South America&amp;sort=iregdate&amp;desc=desc">Christianity
												in South America</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=279^Christianity in Australasia, Pacific Ocean islands, Atlantic Ocean islands, Arctic islands, Antarctica&amp;sort=iregdate&amp;desc=desc">Christianity
												in Australasia, Pacific Ocean islands, Atlantic Ocean
												islands, Arctic islands, Antarctica</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=28^Denominationsandsects of Christian church&amp;sort=iregdate&amp;desc=desc">Denominations
										and sects of Christian church</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=280^Denominationsandsects of Christian church&amp;sort=iregdate&amp;desc=desc">Denominations
												and sects of Christian church</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=281^Early churchandEastern churches&amp;sort=iregdate&amp;desc=desc">Early
												church and Eastern churches</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=282^Roman Catholic Church&amp;sort=iregdate&amp;desc=desc">Roman
												Catholic Church</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=283^Anglican churches &amp;sort=iregdate&amp;desc=desc">Anglican
												churches </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=284^Protestant denominations of Continental originandrelated bodies&amp;sort=iregdate&amp;desc=desc">Protestant
												denominations of Continental origin and related bodies</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=285^Presbyterian churches, Reformed churches centered in America, Congregational churches, Puritanism &amp;sort=iregdate&amp;desc=desc">Presbyterian
												churches, Reformed churches centered in America,
												Congregational churches, Puritanism </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=286^Baptist, Restoration movement, Adventist churches&amp;sort=iregdate&amp;desc=desc">Baptist,
												Restoration movement, Adventist churches</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=287^Methodist churches; churches related to Methodism&amp;sort=iregdate&amp;desc=desc">Methodist
												churches; churches related to Methodism</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=289^Other denominationsandsects&amp;sort=iregdate&amp;desc=desc">Other
												denominations and sects</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=29^Other religions&amp;sort=iregdate&amp;desc=desc">Other
										religions</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=290^&amp;sort=iregdate&amp;desc=desc">Other
												religions</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=292^Classical religion (GreekandRoman religion)&amp;sort=iregdate&amp;desc=desc">Classical
												religion (Greek and Roman religion)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=293^Germanic religion &amp;sort=iregdate&amp;desc=desc">Germanic
												religion </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=294^Religions of Indic origin &amp;sort=iregdate&amp;desc=desc">Religions
												of Indic origin </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=295^Zoroastrianism (Mazdaism, Parseeism) &amp;sort=iregdate&amp;desc=desc">Zoroastrianism
												(Mazdaism, Parseeism) </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=296^Judaism&amp;sort=iregdate&amp;desc=desc">Judaism</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=297^Islam, Babism, Bahai Faith &amp;sort=iregdate&amp;desc=desc">Islam,
												Babism, Bahai Faith </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=298^(Permanently unassigned)&amp;sort=iregdate&amp;desc=desc">(Permanently
												unassigned)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=299^Religions not provided for elsewhere &amp;sort=iregdate&amp;desc=desc">Religions
												not provided for elsewhere </a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=3&amp;sort=iregdate&amp;desc=desc">Social
								sciences</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=30^Social sciences&amp;sort=iregdate&amp;desc=desc">Social
										sciences</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=300^Social sciences &amp;sort=iregdate&amp;desc=desc">Social
												sciences </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=300.1^Philosophyandtheory&amp;sort=iregdate&amp;desc=desc">Philosophy
														and theory</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=300.9^Social science--history&amp;sort=iregdate&amp;desc=desc">Social
														science--history</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=301^Sociologyandanthropology &amp;sort=iregdate&amp;desc=desc">Sociology
												and anthropology </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=302^Social interaction &amp;sort=iregdate&amp;desc=desc">Social
												interaction </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=303^Social processes &amp;sort=iregdate&amp;desc=desc">Social
												processes </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=304^Factors affecting social behavior &amp;sort=iregdate&amp;desc=desc">Factors
												affecting social behavior </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=305^Groups of people &amp;sort=iregdate&amp;desc=desc">Groups
												of people </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=306^Cultureandinstitutions &amp;sort=iregdate&amp;desc=desc">Culture
												and institutions </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=306.2^Political institutions&amp;sort=iregdate&amp;desc=desc">Political
														institutions</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=306.3^Cultural institutions&amp;sort=iregdate&amp;desc=desc">Cultural
														institutions</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=306.4^Specific aspects of culture&amp;sort=iregdate&amp;desc=desc">Specific
														aspects of culture</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=307^Communities &amp;sort=iregdate&amp;desc=desc">Communities
										</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=31^Collections of general statistics&amp;sort=iregdate&amp;desc=desc">Collections
										of general statistics</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=310^Collections of general statistics&amp;sort=iregdate&amp;desc=desc">Collections
												of general statistics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=314^General statistics of Europe&amp;sort=iregdate&amp;desc=desc">General
												statistics of Europe</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=315^General statistics of Asia&amp;sort=iregdate&amp;desc=desc">General
												statistics of Asia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=316^General statistics of Africa&amp;sort=iregdate&amp;desc=desc">General
												statistics of Africa</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=317^General statistics of North America&amp;sort=iregdate&amp;desc=desc">General
												statistics of North America</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=318^General statistics of South America&amp;sort=iregdate&amp;desc=desc">General
												statistics of South America</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=319^General statistics of other areas&amp;sort=iregdate&amp;desc=desc">General
												statistics of other areas</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=32^Political science (Politicsandgovernment)&amp;sort=iregdate&amp;desc=desc">Political
										science (Politics and government)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=320^Political science (Politicsandgovernment)&amp;sort=iregdate&amp;desc=desc">Political
												science (Politics and government)</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=320.9^Political situationandconditions&amp;sort=iregdate&amp;desc=desc">Political
														situation and conditions</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=321^Systems of governmentsandstates&amp;sort=iregdate&amp;desc=desc">Systems
												of governments and states</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=322^Relation of the state to organized groups&amp;sort=iregdate&amp;desc=desc">Relation
												of the state to organized groups</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=323^Civilandpolitical rights&amp;sort=iregdate&amp;desc=desc">Civil
												and political rights</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=324^The political process&amp;sort=iregdate&amp;desc=desc">The
												political process</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=325^International migrationandcoloniz&amp;sort=iregdate&amp;desc=desc">International
												migration and coloniz</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=326^Slaveryandemancipation&amp;sort=iregdate&amp;desc=desc">Slavery
												and emancipation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=327^International relations&amp;sort=iregdate&amp;desc=desc">International
												relations</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=328^The legislative process&amp;sort=iregdate&amp;desc=desc">The
												legislative process</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=33^Economics&amp;sort=iregdate&amp;desc=desc">Economics</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=330^Economics&amp;sort=iregdate&amp;desc=desc">Economics</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=330.1^Systems, schools, theories&amp;sort=iregdate&amp;desc=desc">Systems,
														schools, theories</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=331^Labor economics&amp;sort=iregdate&amp;desc=desc">Labor
												economics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=332^Financial economics&amp;sort=iregdate&amp;desc=desc">Financial
												economics</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=332.6^Investment&amp;sort=iregdate&amp;desc=desc">Investment</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=333^Economics of landandenergy&amp;sort=iregdate&amp;desc=desc">Economics
												of land and energy</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=333.7^Land, recreationalandwilderness areas, energy&amp;sort=iregdate&amp;desc=desc">Land,
														recreational and wilderness areas, energy</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=333.8^Subsurface resources&amp;sort=iregdate&amp;desc=desc">Subsurface
														resources</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=333.9^Other natural resources&amp;sort=iregdate&amp;desc=desc">Other
														natural resources</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=334^Cooperatives&amp;sort=iregdate&amp;desc=desc">Cooperatives</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=335^Socialismandrelated systems&amp;sort=iregdate&amp;desc=desc">Socialism
												and related systems</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=336^Public finance&amp;sort=iregdate&amp;desc=desc">Public
												finance</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=336.2^Taxes&amp;sort=iregdate&amp;desc=desc">Taxes</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=337^International economics&amp;sort=iregdate&amp;desc=desc">International
												economics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=338^Production&amp;sort=iregdate&amp;desc=desc">Production</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=338.7^Business enterprises&amp;sort=iregdate&amp;desc=desc">Business
														enterprises</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=339^Macroeconomicsandrelated topics&amp;sort=iregdate&amp;desc=desc">Macroeconomics
												and related topics</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=34^Law&amp;sort=iregdate&amp;desc=desc">Law</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=340^Law&amp;sort=iregdate&amp;desc=desc">Law</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=341^Law of nations&amp;sort=iregdate&amp;desc=desc">Law
												of nations</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=342^Constitutional &amp; administrative law&amp;sort=iregdate&amp;desc=desc">Constitutional
												&amp; administrative law</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=343^Military, tax, trade &amp; industrial law&amp;sort=iregdate&amp;desc=desc">Military,
												tax, trade &amp; industrial law</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=344^Labor, social, education &amp; cultural law&amp;sort=iregdate&amp;desc=desc">Labor,
												social, education &amp; cultural law</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=345^Criminal law&amp;sort=iregdate&amp;desc=desc">Criminal
												law</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=346^Private law&amp;sort=iregdate&amp;desc=desc">Private
												law</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=347^Procedure &amp; courts&amp;sort=iregdate&amp;desc=desc">Procedure
												&amp; courts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=348^Laws, regulations &amp; cases&amp;sort=iregdate&amp;desc=desc">Laws,
												regulations &amp; cases</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=349^Law of specific jurisdictions &amp; areas&amp;sort=iregdate&amp;desc=desc">Law
												of specific jurisdictions &amp; areas</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=35^Public administrationandmilitary science&amp;sort=iregdate&amp;desc=desc">Public
										administration and military science</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=350^Public administrationandmilitary science&amp;sort=iregdate&amp;desc=desc">Public
												administration and military science</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=351^Public administration&amp;sort=iregdate&amp;desc=desc">Public
												administration</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=352^General considerations of public administration&amp;sort=iregdate&amp;desc=desc">General
												considerations of public administration</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=352.3^Executive management&amp;sort=iregdate&amp;desc=desc">Executive
														management</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=352.6^Personnel administration&amp;sort=iregdate&amp;desc=desc">Personnel
														administration</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=353^Specific fields of public administration&amp;sort=iregdate&amp;desc=desc">Specific
												fields of public administration</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=354^Public administration of economyandenvironment&amp;sort=iregdate&amp;desc=desc">Public
												administration of economy and environment</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=355^Military science&amp;sort=iregdate&amp;desc=desc">Military
												science</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=356^Foot forcesandwarfare&amp;sort=iregdate&amp;desc=desc">Foot
												forces and warfare</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=357^Mounted forcesandwarfare&amp;sort=iregdate&amp;desc=desc">Mounted
												forces and warfare</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=358^Airandother specialized forces and warfare; engineeringandrelated services&amp;sort=iregdate&amp;desc=desc">Air
												and other specialized forces and warfare; engineering and
												related services</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=359^Sea forcesandwarfare&amp;sort=iregdate&amp;desc=desc">Sea
												forces and warfare</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=36^Social problemsandservices; associations&amp;sort=iregdate&amp;desc=desc">Social
										problems and services; associations</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=360^Social problemsandservices; associations&amp;sort=iregdate&amp;desc=desc">Social
												problems and services; associations</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=361^Social problemsandservices&amp;sort=iregdate&amp;desc=desc">Social
												problems and services</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=361.3^Social work&amp;sort=iregdate&amp;desc=desc">Social
														work</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=362^Social problems ofandservices to groups of people&amp;sort=iregdate&amp;desc=desc">Social
												problems of and services to groups of people</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=362.4^People with physical disabilities&amp;sort=iregdate&amp;desc=desc">People
														with physical disabilities</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=362.6^People in late adulthood&amp;sort=iregdate&amp;desc=desc">People
														in late adulthood</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=362.7^Young people&amp;sort=iregdate&amp;desc=desc">Young
														people</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=363^Other social problemsandservices&amp;sort=iregdate&amp;desc=desc">Other
												social problems and services</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=364^Criminology&amp;sort=iregdate&amp;desc=desc">Criminology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=365^Penalandrelated institutions&amp;sort=iregdate&amp;desc=desc">Penal
												and related institutions</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=366^Secret associationsandsocieties&amp;sort=iregdate&amp;desc=desc">Secret
												associations and societies</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=367^General clubs&amp;sort=iregdate&amp;desc=desc">General
												clubs</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=368^Insurance&amp;sort=iregdate&amp;desc=desc">Insurance</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=369^Associations&amp;sort=iregdate&amp;desc=desc">Associations</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=37^Education&amp;sort=iregdate&amp;desc=desc">Education</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=370^Education&amp;sort=iregdate&amp;desc=desc">Education</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=370.1^Philosophyandtheory, education for specific objectives, educational psychology&amp;sort=iregdate&amp;desc=desc">Philosophy
														and theory, education for specific objectives, educational
														psychology</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=371^Schoolsandtheir activities; special education&amp;sort=iregdate&amp;desc=desc">Schools
												and their activities; special education</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=371.2^Administration of studuent academic activities&amp;sort=iregdate&amp;desc=desc">Administration
														of studuent academic activities</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=372^Primary education (Elementary education)&amp;sort=iregdate&amp;desc=desc">Primary
												education (Elementary education)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=373^Secondary education&amp;sort=iregdate&amp;desc=desc">Secondary
												education</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=374^Adult education&amp;sort=iregdate&amp;desc=desc">Adult
												education</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=375^Curricula&amp;sort=iregdate&amp;desc=desc">Curricula</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=378^Higher education (Tertiary education)&amp;sort=iregdate&amp;desc=desc">Higher
												education (Tertiary education)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=379^Public policy issues in education&amp;sort=iregdate&amp;desc=desc">Public
												policy issues in education</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=38^Commerce, communications, transportation&amp;sort=iregdate&amp;desc=desc">Commerce,
										communications, transportation</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=380^Commerce, communications, transportation&amp;sort=iregdate&amp;desc=desc">Commerce,
												communications, transportation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=381^Commerce (Trade)&amp;sort=iregdate&amp;desc=desc">Commerce
												(Trade)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=382^International commerce (Foreign trade)&amp;sort=iregdate&amp;desc=desc">International
												commerce (Foreign trade)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=383^Postal communication&amp;sort=iregdate&amp;desc=desc">Postal
												communication</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=384^Communications&amp;sort=iregdate&amp;desc=desc">Communications</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=384.5^Wireless communication&amp;sort=iregdate&amp;desc=desc">Wireless
														communication</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=385^Railroad transportation&amp;sort=iregdate&amp;desc=desc">Railroad
												transportation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=386^Inland waterwayandferry transportation&amp;sort=iregdate&amp;desc=desc">Inland
												waterway and ferry transportation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=387^Water, air, space transportation&amp;sort=iregdate&amp;desc=desc">Water,
												air, space transportation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=388^Transportation&amp;sort=iregdate&amp;desc=desc">Transportation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=389^Metrologyandstandardization&amp;sort=iregdate&amp;desc=desc">Metrology
												and standardization</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=39^Customs, etiquette, folklore&amp;sort=iregdate&amp;desc=desc">Customs,
										etiquette, folklore</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=390^Customs, etiquette, folklore&amp;sort=iregdate&amp;desc=desc">Customs,
												etiquette, folklore</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=391^Costumeandpersonal appearance&amp;sort=iregdate&amp;desc=desc">Costume
												and personal appearance</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=392^Customs of life cycleanddomestic life&amp;sort=iregdate&amp;desc=desc">Customs
												of life cycle and domestic life</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=393^Death customs &amp;sort=iregdate&amp;desc=desc">Death
												customs </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=394^General customs&amp;sort=iregdate&amp;desc=desc">General
												customs</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=395^Etiquette (Manners)&amp;sort=iregdate&amp;desc=desc">Etiquette
												(Manners)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=398^Folklore&amp;sort=iregdate&amp;desc=desc">Folklore</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=399^Customs of waranddiplomacy&amp;sort=iregdate&amp;desc=desc">Customs
												of war and diplomacy</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=4&amp;sort=iregdate&amp;desc=desc">Language</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=40^Language&amp;sort=iregdate&amp;desc=desc">Language</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=400^Language &amp;sort=iregdate&amp;desc=desc">Language</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=401^Philosophyandtheory; international languages &amp;sort=iregdate&amp;desc=desc">Philosophy
												and theory; international languages </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=402^Miscellany&amp;sort=iregdate&amp;desc=desc">Miscellany</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=403^Dictionaries, encyclopedias, concordances &amp;sort=iregdate&amp;desc=desc">Dictionaries,
												encyclopedias, concordances </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=404^Special topics of language &amp;sort=iregdate&amp;desc=desc">Special
												topics of language </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=405^Serial publications &amp;sort=iregdate&amp;desc=desc">Serial
												publications </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=406^Organizationsandmanagement &amp;sort=iregdate&amp;desc=desc">Organizations
												and management </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=407^Education, research, related topics &amp;sort=iregdate&amp;desc=desc">Education,
												research, related topics </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=408^Groups of people &amp;sort=iregdate&amp;desc=desc">Groups
												of people </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=409^Geographic treatmentandbiography &amp;sort=iregdate&amp;desc=desc">Geographic
												treatment and biography </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=41^Linguistics &amp;sort=iregdate&amp;desc=desc">Linguistics
								</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=410^Linguistics&amp;sort=iregdate&amp;desc=desc">Linguistics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=411^Writing systems of standard forms of languages&amp;sort=iregdate&amp;desc=desc">Writing
												systems of standard forms of languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=412^Etymology of standard forms of languages&amp;sort=iregdate&amp;desc=desc">Etymology
												of standard forms of languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=413^Dictionaries of standard forms of languages&amp;sort=iregdate&amp;desc=desc">Dictionaries
												of standard forms of languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=414^Phonologyandphonetics of standard forms of languages&amp;sort=iregdate&amp;desc=desc">Phonology
												and phonetics of standard forms of languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=415^Grammar of standard forms of languages&amp;sort=iregdate&amp;desc=desc">Grammar
												of standard forms of languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=417^Dialectologyandhistorical linguistics &amp;sort=iregdate&amp;desc=desc">Dialectology
												and historical linguistics </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=418^Standard usage (Prescriptive linguistics) &amp;sort=iregdate&amp;desc=desc">Standard
												usage (Prescriptive linguistics) </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=419^Sign languages &amp;sort=iregdate&amp;desc=desc">Sign
												languages </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=42^EnglishandOld English (Anglo-Saxon)&amp;sort=iregdate&amp;desc=desc">English
										and Old English (Anglo-Saxon)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=420^EnglishandOld English (Anglo-Saxon)&amp;sort=iregdate&amp;desc=desc">English
												and Old English (Anglo-Saxon)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=421^Writing system, phonology, phonetics of standard English&amp;sort=iregdate&amp;desc=desc">Writing
												system, phonology, phonetics of standard English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=422^Etymology of standard English&amp;sort=iregdate&amp;desc=desc">Etymology
												of standard English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=423^Dictionaries of standard English&amp;sort=iregdate&amp;desc=desc">Dictionaries
												of standard English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=425^Grammar of standard English&amp;sort=iregdate&amp;desc=desc">Grammar
												of standard English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=427^Historicalandgeographic variations, modern nongeographic variations of English&amp;sort=iregdate&amp;desc=desc">Historical
												and geographic variations, modern nongeographic variations
												of English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=428^Standard English usage (Prescriptive linguistics)&amp;sort=iregdate&amp;desc=desc">Standard
												English usage (Prescriptive linguistics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=429^Old English (Anglo-Saxon)&amp;sort=iregdate&amp;desc=desc">Old
												English (Anglo-Saxon)</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=43^Germanandrelated languages&amp;sort=iregdate&amp;desc=desc">German
										and related languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=430^Germanandrelated languages&amp;sort=iregdate&amp;desc=desc">German
												and related languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=431^Writing systems, phonology, phonetics of standard German&amp;sort=iregdate&amp;desc=desc">Writing
												systems, phonology, phonetics of standard German</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=432^Etymology of standard German&amp;sort=iregdate&amp;desc=desc">Etymology
												of standard German</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=433^Dictionaries of standard German&amp;sort=iregdate&amp;desc=desc">Dictionaries
												of standard German</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=435^Grammar of standard German&amp;sort=iregdate&amp;desc=desc">Grammar
												of standard German</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=437^Historicalandgeographic variations, modern nongeographic variations of German&amp;sort=iregdate&amp;desc=desc">Historical
												and geographic variations, modern nongeographic variations
												of German</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=438^Standard German usage (Prescriptive linguistics)&amp;sort=iregdate&amp;desc=desc">Standard
												German usage (Prescriptive linguistics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=439^Other Germanic languages&amp;sort=iregdate&amp;desc=desc">Other
												Germanic languages</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=44^Frenchandrelated Romance languages&amp;sort=iregdate&amp;desc=desc">French
										and related Romance languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=441^Writing systems, phonology, phonetics of standard French&amp;sort=iregdate&amp;desc=desc">Writing
												systems, phonology, phonetics of standard French</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=442^Etymology of standard French&amp;sort=iregdate&amp;desc=desc">Etymology
												of standard French</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=443^Dictionaries of standard French&amp;sort=iregdate&amp;desc=desc">Dictionaries
												of standard French</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=445^Grammar of standard French&amp;sort=iregdate&amp;desc=desc">Grammar
												of standard French</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=447^Historicalandgeographic variations, modern nongeographic variations of French&amp;sort=iregdate&amp;desc=desc">Historical
												and geographic variations, modern nongeographic variations
												of French</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=448^Standard French usage (Prescriptive linguistics)&amp;sort=iregdate&amp;desc=desc">Standard
												French usage (Prescriptive linguistics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=449^Occitan, Catalan, Franco-Provençal&amp;sort=iregdate&amp;desc=desc">Occitan,
												Catalan, Franco-Provençal</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=45^Italian, Dalmatian, Romanian, Rhaetian, Sardinian, Corsican&amp;sort=iregdate&amp;desc=desc">Italian,
										Dalmatian, Romanian, Rhaetian, Sardinian, Corsican</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=450^Italian, Dalmatian, Romanian, Rhaetian, Sardinian, Corsican&amp;sort=iregdate&amp;desc=desc">Italian,
												Dalmatian, Romanian, Rhaetian, Sardinian, Corsican</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=451^Writing systems, phonology, phonetics of standard Italian&amp;sort=iregdate&amp;desc=desc">Writing
												systems, phonology, phonetics of standard Italian</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=452^Etymology of standard Italian&amp;sort=iregdate&amp;desc=desc">Etymology
												of standard Italian</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=453^Dictionaries of standard Italian&amp;sort=iregdate&amp;desc=desc">Dictionaries
												of standard Italian</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=455^Grammar of standard Italian&amp;sort=iregdate&amp;desc=desc">Grammar
												of standard Italian</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=457^Historicalandgeographic variations, modern nongeographic variations of Italian&amp;sort=iregdate&amp;desc=desc">Historical
												and geographic variations, modern nongeographic variations
												of Italian</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=458^Standard Italian usage (Prescriptive linguistics)&amp;sort=iregdate&amp;desc=desc">Standard
												Italian usage (Prescriptive linguistics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=459^Romanian, Rhaetian, Sardinian, Corsican&amp;sort=iregdate&amp;desc=desc">Romanian,
												Rhaetian, Sardinian, Corsican</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=46^Spanish, Portuguese, Galician&amp;sort=iregdate&amp;desc=desc">Spanish,
										Portuguese, Galician</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=460^Spanish, Portuguese, Galician&amp;sort=iregdate&amp;desc=desc">Spanish,
												Portuguese, Galician</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=461^Writing systems, phonology, phonetics of standard Spanish&amp;sort=iregdate&amp;desc=desc">Writing
												systems, phonology, phonetics of standard Spanish</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=462^Etymology of standard Spanish&amp;sort=iregdate&amp;desc=desc">Etymology
												of standard Spanish</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=463^Dictionaries of standard Spanish&amp;sort=iregdate&amp;desc=desc">Dictionaries
												of standard Spanish</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=465^Grammar of standard Spanish&amp;sort=iregdate&amp;desc=desc">Grammar
												of standard Spanish</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=467^Historicalandgeographic variations, modern nongeographic variations of Spanish&amp;sort=iregdate&amp;desc=desc">Historical
												and geographic variations, modern nongeographic variations
												of Spanish</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=468^Standard Spanish usage (Prescriptive linguistics)&amp;sort=iregdate&amp;desc=desc">Standard
												Spanish usage (Prescriptive linguistics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=469^Portuguese&amp;sort=iregdate&amp;desc=desc">Portuguese</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=47^Latinandrelated Italic languages&amp;sort=iregdate&amp;desc=desc">Latin
										and related Italic languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=470^Latinandrelated Italic languages&amp;sort=iregdate&amp;desc=desc">Latin
												and related Italic languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=471^Writing systems, phonology, phonetics of classical Latin&amp;sort=iregdate&amp;desc=desc">Writing
												systems, phonology, phonetics of classical Latin</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=472^Etymology of classical Latin&amp;sort=iregdate&amp;desc=desc">Etymology
												of classical Latin</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=473^Dictionaries of classical Latin&amp;sort=iregdate&amp;desc=desc">Dictionaries
												of classical Latin</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=475^Grammar of classical Latin&amp;sort=iregdate&amp;desc=desc">Grammar
												of classical Latin</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=477^Old, postclassical, Vulgar Latin&amp;sort=iregdate&amp;desc=desc">Old,
												postclassical, Vulgar Latin</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=478^Classical Latin usage (Prescriptive linguistics)&amp;sort=iregdate&amp;desc=desc">Classical
												Latin usage (Prescriptive linguistics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=479^Other Italic languages&amp;sort=iregdate&amp;desc=desc">Other
												Italic languages</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=48^Classical Greekandrelated Hellenic languages&amp;sort=iregdate&amp;desc=desc">Classical
										Greek and related Hellenic languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=480^Classical Greekandrelated Hellenic languages&amp;sort=iregdate&amp;desc=desc">Classical
												Greek and related Hellenic languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=481^Writing systems, phonology, phonetics of classical Greek&amp;sort=iregdate&amp;desc=desc">Writing
												systems, phonology, phonetics of classical Greek</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=482^Etymology of classical Greek&amp;sort=iregdate&amp;desc=desc">Etymology
												of classical Greek</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=483^Dictionaries of classical Greek&amp;sort=iregdate&amp;desc=desc">Dictionaries
												of classical Greek</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=485^Grammar of classical Greek&amp;sort=iregdate&amp;desc=desc">Grammar
												of classical Greek</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=487^Preclassicalandpostclassical Greek&amp;sort=iregdate&amp;desc=desc">Preclassical
												and postclassical Greek</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=488^Classical Greek usage (Prescriptive linguistics)&amp;sort=iregdate&amp;desc=desc">Classical
												Greek usage (Prescriptive linguistics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=489^Other Hellenic languages&amp;sort=iregdate&amp;desc=desc">Other
												Hellenic languages</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=49^Other languages&amp;sort=iregdate&amp;desc=desc">Other
										languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=490^Other languages&amp;sort=iregdate&amp;desc=desc">Other
												languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=491^East Indo-EuropeanandCeltic languages&amp;sort=iregdate&amp;desc=desc">East
												Indo-European and Celtic languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=492^Afro-Asiatic languages&amp;sort=iregdate&amp;desc=desc">Afro-Asiatic
												languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=493^Non-Semitic Afro-Asiatic languages&amp;sort=iregdate&amp;desc=desc">Non-Semitic
												Afro-Asiatic languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=494^Altaic, Uralic, Hyperborean, Dravidian languages, miscellaneous languages of south Asia&amp;sort=iregdate&amp;desc=desc">Altaic,
												Uralic, Hyperborean, Dravidian languages, miscellaneous
												languages of south Asia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=495^Languages of eastandsoutheast Asia&amp;sort=iregdate&amp;desc=desc">Languages
												of east and southeast Asia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=496^African languages&amp;sort=iregdate&amp;desc=desc">African
												languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=497^North American native languages&amp;sort=iregdate&amp;desc=desc">North
												American native languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=498^South American native languages&amp;sort=iregdate&amp;desc=desc">South
												American native languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=499^Non-Austronesian languages of Oceania, Austronesian languages, miscellaneous languages&amp;sort=iregdate&amp;desc=desc">Non-Austronesian
												languages of Oceania, Austronesian languages, miscellaneous
												languages</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=5&amp;sort=iregdate&amp;desc=desc">Natural
								sciences and mathematics</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=50^Natural sciencesandmathematics&amp;sort=iregdate&amp;desc=desc">Natural
										sciences and mathematics</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=500^Natural sciencesandmathematics&amp;sort=iregdate&amp;desc=desc">Natural
												sciences and mathematics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=501^Philosophyandtheory&amp;sort=iregdate&amp;desc=desc">Philosophy
												and theory</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=502^Miscellany&amp;sort=iregdate&amp;desc=desc">Miscellany</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=503^Dictionaries, encyclopedias, concordances&amp;sort=iregdate&amp;desc=desc">Dictionaries,
												encyclopedias, concordances</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=505^Serial publications&amp;sort=iregdate&amp;desc=desc">Serial
												publications</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=506^Organizationsandmanagement&amp;sort=iregdate&amp;desc=desc">Organizations
												and management</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=507^Education, research, related topics&amp;sort=iregdate&amp;desc=desc">Education,
												research, related topics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=508^Natural history&amp;sort=iregdate&amp;desc=desc">Natural
												history</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=509^History, geographic treatment, biography&amp;sort=iregdate&amp;desc=desc">History,
												geographic treatment, biography</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=51^Mathematics&amp;sort=iregdate&amp;desc=desc">Mathematics</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=510^Mathematics&amp;sort=iregdate&amp;desc=desc">Mathematics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=511^General principles of mathematics&amp;sort=iregdate&amp;desc=desc">General
												principles of mathematics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=512^Algebra&amp;sort=iregdate&amp;desc=desc">Algebra</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=513^Arithmetic&amp;sort=iregdate&amp;desc=desc">Arithmetic</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=514^Topology&amp;sort=iregdate&amp;desc=desc">Topology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=515^Analysis&amp;sort=iregdate&amp;desc=desc">Analysis</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=516^Geometry&amp;sort=iregdate&amp;desc=desc">Geometry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=518^Numerical analysis&amp;sort=iregdate&amp;desc=desc">Numerical
												analysis</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=519^Probabilitiesandapplied mathematics&amp;sort=iregdate&amp;desc=desc">Probabilities
												and applied mathematics</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=52^Astronomyandallied sciences&amp;sort=iregdate&amp;desc=desc">Astronomy
										and allied sciences</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=520^Astronomyandallied sciences&amp;sort=iregdate&amp;desc=desc">Astronomy
												and allied sciences</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=521^Celestial mechanics&amp;sort=iregdate&amp;desc=desc">Celestial
												mechanics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=522^Techniques, procedures, apparatus, equipment, materials&amp;sort=iregdate&amp;desc=desc">Techniques,
												procedures, apparatus, equipment, materials</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=523^Specific celestial bodiesandphenomena&amp;sort=iregdate&amp;desc=desc">Specific
												celestial bodies and phenomena</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=525^Earth (Astronomical geography)&amp;sort=iregdate&amp;desc=desc">Earth
												(Astronomical geography)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=526^Mathematical geography&amp;sort=iregdate&amp;desc=desc">Mathematical
												geography</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=527^Celestial navigation&amp;sort=iregdate&amp;desc=desc">Celestial
												navigation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=528^Ephemerides&amp;sort=iregdate&amp;desc=desc">Ephemerides</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=529^Chronology&amp;sort=iregdate&amp;desc=desc">Chronology</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=53^Physics&amp;sort=iregdate&amp;desc=desc">Physics</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=530^Physics&amp;sort=iregdate&amp;desc=desc">Physics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=531^Classical mechanics&amp;sort=iregdate&amp;desc=desc">Classical
												mechanics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=532^Fluid mechanics&amp;sort=iregdate&amp;desc=desc">Fluid
												mechanics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=533^Pneumatics(Gas mechanics)&amp;sort=iregdate&amp;desc=desc">Pneumatics(Gas
												mechanics)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=534^Soundandrelated vibrations&amp;sort=iregdate&amp;desc=desc">Sound
												and related vibrations</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=535^Lightandrelated radiation&amp;sort=iregdate&amp;desc=desc">Light
												and related radiation</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=536^Heat&amp;sort=iregdate&amp;desc=desc">Heat</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=537^Electricityandelectronics&amp;sort=iregdate&amp;desc=desc">Electricity
												and electronics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=538^Magnetism&amp;sort=iregdate&amp;desc=desc">Magnetism</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=539^Modern Physics&amp;sort=iregdate&amp;desc=desc">Modern
												Physics</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=54^Chemistryandallied sciences&amp;sort=iregdate&amp;desc=desc">Chemistry
										and allied sciences</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=540^Chemistryandallied sciences&amp;sort=iregdate&amp;desc=desc">Chemistry
												and allied sciences</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=541^Physical chemistry&amp;sort=iregdate&amp;desc=desc">Physical
												chemistry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=542^Techniques, procedures, apparatus, equipment, materials&amp;sort=iregdate&amp;desc=desc">Techniques,
												procedures, apparatus, equipment, materials</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=543^Analytical chemistry&amp;sort=iregdate&amp;desc=desc">Analytical
												chemistry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=546^Inorganic chemistry&amp;sort=iregdate&amp;desc=desc">Inorganic
												chemistry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=547^Organic chemistry&amp;sort=iregdate&amp;desc=desc">Organic
												chemistry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=548^Crystallography&amp;sort=iregdate&amp;desc=desc">Crystallography</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=549^Mineralogy&amp;sort=iregdate&amp;desc=desc">Mineralogy</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=55^Earth sciences&amp;sort=iregdate&amp;desc=desc">Earth
										sciences</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=550^Earth sciences&amp;sort=iregdate&amp;desc=desc">Earth
												sciences</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=551^Geology, hydrology, meteorology&amp;sort=iregdate&amp;desc=desc">Geology,
												hydrology, meteorology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=552^Petrology&amp;sort=iregdate&amp;desc=desc">Petrology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=553^Economic geology&amp;sort=iregdate&amp;desc=desc">Economic
												geology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=554^Earth sciences of Europe&amp;sort=iregdate&amp;desc=desc">Earth
												sciences of Europe</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=555^Earth sciences of Asia&amp;sort=iregdate&amp;desc=desc">Earth
												sciences of Asia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=556^Earth sciences of Africa&amp;sort=iregdate&amp;desc=desc">Earth
												sciences of Africa</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=557^Earth sciences of North America&amp;sort=iregdate&amp;desc=desc">Earth
												sciences of North America</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=558^Earth sciences of South America&amp;sort=iregdate&amp;desc=desc">Earth
												sciences of South America</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=559^Earth sciences of Australasia, Pacific Ocean islands, Atlantic Ocean islands, Arctic islands, Antarctica, extraterrestrial worlds&amp;sort=iregdate&amp;desc=desc">Earth
												sciences of Australasia, Pacific Ocean islands, Atlantic
												Ocean islands, Arctic islands, Antarctica, extraterrestrial
												worlds</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=56^Paleontology&amp;sort=iregdate&amp;desc=desc">Paleontology</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=560^Paleontology&amp;sort=iregdate&amp;desc=desc">Paleontology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=561^Paleobotany; fossil microorganisms&amp;sort=iregdate&amp;desc=desc">Paleobotany;
												fossil microorganisms</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=562^Fossil invertebrates&amp;sort=iregdate&amp;desc=desc">Fossil
												invertebrates</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=563^Miscellaneous fossil marineandseashore invertebrates&amp;sort=iregdate&amp;desc=desc">Miscellaneous
												fossil marine and seashore invertebrates</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=564^Fossil MolluscaandMolluscoidea&amp;sort=iregdate&amp;desc=desc">Fossil
												Mollusca and Molluscoidea</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=565^Fossil Arthropoda&amp;sort=iregdate&amp;desc=desc">Fossil
												Arthropoda</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=566^Fossil Chordata&amp;sort=iregdate&amp;desc=desc">Fossil
												Chordata</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=567^Fossil cold-blooded vertebrates&amp;sort=iregdate&amp;desc=desc">Fossil
												cold-blooded vertebrates</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=568^Fossil Aves(birds)&amp;sort=iregdate&amp;desc=desc">Fossil
												Aves(birds)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=569^Fossil Mammalia&amp;sort=iregdate&amp;desc=desc">Fossil
												Mammalia</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=57^Biology&amp;sort=iregdate&amp;desc=desc">Biology</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=570^Biology&amp;sort=iregdate&amp;desc=desc">Biology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=571^Physiologyandrelated subjects&amp;sort=iregdate&amp;desc=desc">Physiology
												and related subjects</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=572^Biochemistry&amp;sort=iregdate&amp;desc=desc">Biochemistry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=573^Specific physiological systems in animals, regional histologyandphysiology in animals&amp;sort=iregdate&amp;desc=desc">Specific
												physiological systems in animals, regional histology and
												physiology in animals</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=575^Specific parts ofandphysiological systems in plants&amp;sort=iregdate&amp;desc=desc">Specific
												parts of and physiological systems in plants</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=576^Geneticsandevolution&amp;sort=iregdate&amp;desc=desc">Genetics
												and evolution</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=577^Ecology&amp;sort=iregdate&amp;desc=desc">Ecology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=578^Natural history of organismsandrelated subjects&amp;sort=iregdate&amp;desc=desc">Natural
												history of organisms and related subjects</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=579^Natural history of microorganisms, fungi, algae&amp;sort=iregdate&amp;desc=desc">Natural
												history of microorganisms, fungi, algae</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=58^Plants&amp;sort=iregdate&amp;desc=desc">Plants</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=580^Plants&amp;sort=iregdate&amp;desc=desc">Plants</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=581^Specific topics in natural history of plants&amp;sort=iregdate&amp;desc=desc">Specific
												topics in natural history of plants</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=582^Plants noted for specific vegetative characteristicsandflowers&amp;sort=iregdate&amp;desc=desc">Plants
												noted for specific vegetative characteristics and flowers</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=583^Magnoliopsida (Dicotyledons)&amp;sort=iregdate&amp;desc=desc">Magnoliopsida
												(Dicotyledons)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=584^Liliopsida (Monocotyledons)&amp;sort=iregdate&amp;desc=desc">Liliopsida
												(Monocotyledons)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=585^Pinophyta (Gymnosperms)&amp;sort=iregdate&amp;desc=desc">Pinophyta
												(Gymnosperms)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=586^Cryptogamia (Seedless plants)&amp;sort=iregdate&amp;desc=desc">Cryptogamia
												(Seedless plants)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=587^Pteridophyta&amp;sort=iregdate&amp;desc=desc">Pteridophyta</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=588^Bryophyta&amp;sort=iregdate&amp;desc=desc">Bryophyta</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=59^Animals&amp;sort=iregdate&amp;desc=desc">Animals</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=590^Animals&amp;sort=iregdate&amp;desc=desc">Animals</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=591^Specific topics in natural history of animals&amp;sort=iregdate&amp;desc=desc">Specific
												topics in natural history of animals</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=592^Invertebrates&amp;sort=iregdate&amp;desc=desc">Invertebrates</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=593^Miscellaneous marineandseashore invertebrates&amp;sort=iregdate&amp;desc=desc">Miscellaneous
												marine and seashore invertebrates</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=594^MolluscaandMolluscoidea&amp;sort=iregdate&amp;desc=desc">Mollusca
												and Molluscoidea</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=595^Arthropoda&amp;sort=iregdate&amp;desc=desc">Arthropoda</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=596^Chordata&amp;sort=iregdate&amp;desc=desc">Chordata</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=597^Cold-blooded vertebrates&amp;sort=iregdate&amp;desc=desc">Cold-blooded
												vertebrates</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=598^Aves (Birds)&amp;sort=iregdate&amp;desc=desc">Aves
												(Birds)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=599^Mammalia (Mammals)&amp;sort=iregdate&amp;desc=desc">Mammalia
												(Mammals)</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=6&amp;sort=iregdate&amp;desc=desc">Technology
								(Applied sciences)</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=60^Technology (Applied sciences)&amp;sort=iregdate&amp;desc=desc">Technology
										(Applied sciences)</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=600^Technology (Applied sciences)&amp;sort=iregdate&amp;desc=desc">Technology
												(Applied sciences)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=601^Philosophyandtheory&amp;sort=iregdate&amp;desc=desc">Philosophy
												and theory</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=602^Miscellany&amp;sort=iregdate&amp;desc=desc">Miscellany</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=603^Dictionaries, encyclopedias, concordances&amp;sort=iregdate&amp;desc=desc">Dictionaries,
												encyclopedias, concordances</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=604^Technical drawing, hazardous materials technology; groups of people&amp;sort=iregdate&amp;desc=desc">Technical
												drawing, hazardous materials technology; groups of people</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=605^Serial publications&amp;sort=iregdate&amp;desc=desc">Serial
												publications</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=606^Organizations&amp;sort=iregdate&amp;desc=desc">Organizations</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=607^Education, research, related topics&amp;sort=iregdate&amp;desc=desc">Education,
												research, related topics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=608^Patents&amp;sort=iregdate&amp;desc=desc">Patents</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=609^History, geographic treatment, biography&amp;sort=iregdate&amp;desc=desc">History,
												geographic treatment, biography</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=61^Medicineandhealth&amp;sort=iregdate&amp;desc=desc">Medicine
										and health</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=610^Medicineandhealth&amp;sort=iregdate&amp;desc=desc">Medicine
												and health</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=610.6^Organizations, management; group practice; medical personnelandrelationships&amp;sort=iregdate&amp;desc=desc">Organizations,
														management; group practice; medical personnel and
														relationships</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=610.7^Education, research, nursing, service of allied health personnel&amp;sort=iregdate&amp;desc=desc">Education,
														research, nursing, service of allied health personnel</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=611^Human anatomy, cytology, histology&amp;sort=iregdate&amp;desc=desc">Human
												anatomy, cytology, histology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=612^Human physiology&amp;sort=iregdate&amp;desc=desc">Human
												physiology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=613^Personal healthandsafety&amp;sort=iregdate&amp;desc=desc">Personal
												health and safety</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=614^Forensic medicine; incidence of injuries, wounds, disease; public preventive medicine&amp;sort=iregdate&amp;desc=desc">Forensic
												medicine; incidence of injuries, wounds, disease; public
												preventive medicine</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=615^Pharmacologyandtherapeutics&amp;sort=iregdate&amp;desc=desc">Pharmacology
												and therapeutics</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=615.8^Specific therapiesandkinds of therapies&amp;sort=iregdate&amp;desc=desc">Specific
														therapies and kinds of therapies</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=616^Diseases &amp;sort=iregdate&amp;desc=desc">Diseases
										</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=616.8^Diseases of nervous systemandmental disorders&amp;sort=iregdate&amp;desc=desc">Diseases
														of nervous system and mental disorders</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=616.9^Other diseases&amp;sort=iregdate&amp;desc=desc">Other
														diseases</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=617^Surgery &amp; related medical specialties&amp;sort=iregdate&amp;desc=desc">Surgery
												&amp; related medical specialties</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=617.6^Dentistry&amp;sort=iregdate&amp;desc=desc">Dentistry</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=618^Gynecology, obstetrics, pediatrics &amp; geriatrics &amp;sort=iregdate&amp;desc=desc">Gynecology,
												obstetrics, pediatrics &amp; geriatrics </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=62^Engineeringandallied operations &amp;sort=iregdate&amp;desc=desc">Engineering
										and allied operations </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=620^Engineeringandallied operations&amp;sort=iregdate&amp;desc=desc">Engineering
												and allied operations</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=620.1^Engineering mechanicsandmaterials&amp;sort=iregdate&amp;desc=desc">Engineering
														mechanics and materials</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=621^Applied physics &amp;sort=iregdate&amp;desc=desc">Applied
												physics </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=621.8^Machine engineering&amp;sort=iregdate&amp;desc=desc">Machine
														engineering</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=622^Miningandrelated operations &amp;sort=iregdate&amp;desc=desc">Mining
												and related operations </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=623^Militaryandnautical engineering &amp;sort=iregdate&amp;desc=desc">Military
												and nautical engineering </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=623.8^Nautical engineeringandseamanship&amp;sort=iregdate&amp;desc=desc">Nautical
														engineering and seamanship</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=624^Civil engineering &amp;sort=iregdate&amp;desc=desc">Civil
												engineering </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=625^Engineering of railroadsandroads &amp;sort=iregdate&amp;desc=desc">Engineering
												of railroads and roads </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=627^Hydraulic engineering &amp;sort=iregdate&amp;desc=desc">Hydraulic
												engineering </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=628^Sanitary engineering &amp;sort=iregdate&amp;desc=desc">Sanitary
												engineering </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=628.1^Water supply&amp;sort=iregdate&amp;desc=desc">Water
														supply</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=628.5^Pollution control technologyandindustrial sanitation engineering&amp;sort=iregdate&amp;desc=desc">Pollution
														control technology and industrial sanitation engineering</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=629^Other branches of engineering  &amp;sort=iregdate&amp;desc=desc">Other
												branches of engineering </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=629.8^Automatic control engineering&amp;sort=iregdate&amp;desc=desc">Automatic
														control engineering</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=63^Agricultureandrelated technologies &amp;sort=iregdate&amp;desc=desc">Agriculture
										and related technologies </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=630^Agricultureandrelated technologies&amp;sort=iregdate&amp;desc=desc">Agriculture
												and related technologies</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=631^techniques; equipment &amp; materials &amp;sort=iregdate&amp;desc=desc">techniques;
												equipment &amp; materials </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=632^Plant injuries, diseases, pests &amp;sort=iregdate&amp;desc=desc">Plant
												injuries, diseases, pests </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=633^Fieldandplantation crops &amp;sort=iregdate&amp;desc=desc">Field
												and plantation crops </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=634^Orchards, fruits, forestry &amp;sort=iregdate&amp;desc=desc">Orchards,
												fruits, forestry </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=635^Garden crops (Horticulture) &amp;sort=iregdate&amp;desc=desc">Garden
												crops (Horticulture) </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=636^Animal husbandry &amp;sort=iregdate&amp;desc=desc">Animal
												husbandry </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=637^Processing dairyandrelated products &amp;sort=iregdate&amp;desc=desc">Processing
												dairy and related products </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=638^Insect culture &amp;sort=iregdate&amp;desc=desc">Insect
												culture </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=639^Hunting, fishing &amp; conservation&amp;sort=iregdate&amp;desc=desc">Hunting,
												fishing &amp; conservation</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=64^Homeandfamily management &amp;sort=iregdate&amp;desc=desc">Home
										and family management </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=640^Homeandfamily management&amp;sort=iregdate&amp;desc=desc">Home
												and family management</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=641^Foodanddrink &amp;sort=iregdate&amp;desc=desc">Food
												and drink </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=641.5^Cooking&amp;sort=iregdate&amp;desc=desc">Cooking</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=642^Mealsandtable service &amp;sort=iregdate&amp;desc=desc">Meals
												and table service </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=643^Housingandhousehold equipment &amp;sort=iregdate&amp;desc=desc">Housing
												and household equipment </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=644^Household utilities &amp;sort=iregdate&amp;desc=desc">Household
												utilities </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=645^Household furnishings &amp;sort=iregdate&amp;desc=desc">Household
												furnishings </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=646^Sewing, clothing &amp; personal living &amp;sort=iregdate&amp;desc=desc">Sewing,
												clothing &amp; personal living </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=646.1^Sewing materialsandequipment&amp;sort=iregdate&amp;desc=desc">Sewing
														materials and equipment</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=646.2^Sewingandrelated operations&amp;sort=iregdate&amp;desc=desc">Sewing
														and related operations</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=646.3^Clothingandaccessories&amp;sort=iregdate&amp;desc=desc">Clothing
														and accessories</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=646.4^Clothingandaccessories construction&amp;sort=iregdate&amp;desc=desc">Clothing
														and accessories construction</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=646.6^Care of clothingandaccessories&amp;sort=iregdate&amp;desc=desc">Care
														of clothing and accessories</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=647^Management of public households &amp;sort=iregdate&amp;desc=desc">Management
												of public households </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=648^Housekeeping&amp;sort=iregdate&amp;desc=desc">Housekeeping</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=648.1^Launderingandrelated operations&amp;sort=iregdate&amp;desc=desc">Laundering
														and related operations</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=649^Child rearing; home care of people &amp;sort=iregdate&amp;desc=desc">Child
												rearing; home care of people </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=649.1^Child rearing&amp;sort=iregdate&amp;desc=desc">Child
														rearing</a></li>
											</ul></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=65^Managementandauxiliary services &amp;sort=iregdate&amp;desc=desc">Management
										and auxiliary services </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=650^Managementandauxiliary services&amp;sort=iregdate&amp;desc=desc">Management
												and auxiliary services</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=651^Office services &amp;sort=iregdate&amp;desc=desc">Office
												services </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=652^Processes of written communication &amp;sort=iregdate&amp;desc=desc">Processes
												of written communication </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=653^Shorthand &amp;sort=iregdate&amp;desc=desc">Shorthand
										</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=657^Accounting &amp;sort=iregdate&amp;desc=desc">Accounting
										</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=658^General management &amp;sort=iregdate&amp;desc=desc">General
												management </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=658.3^Personnel management(Human resource management)&amp;sort=iregdate&amp;desc=desc">Personnel
														management(Human resource management)</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=658.5^Management of production&amp;sort=iregdate&amp;desc=desc">Management
														of production</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=658.8^Management of marketing&amp;sort=iregdate&amp;desc=desc">Management
														of marketing</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=659^Advertisingandpublic relations &amp;sort=iregdate&amp;desc=desc">Advertising
												and public relations </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=66^Chemical engineeringandrelated technologies&amp;sort=iregdate&amp;desc=desc">Chemical
										engineering and related technologies</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=660^Chemical engineeringandrelated technologies&amp;sort=iregdate&amp;desc=desc">Chemical
												engineering and related technologies</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=660.2^General topics in chemical engineering&amp;sort=iregdate&amp;desc=desc">General
														topics in chemical engineering</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=660.6^Biotechnology&amp;sort=iregdate&amp;desc=desc">Biotechnology</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=661^Technology of industrial chemicals&amp;sort=iregdate&amp;desc=desc">Technology
												of industrial chemicals</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=662^Technology of explosives, fuels, related products&amp;sort=iregdate&amp;desc=desc">Technology
												of explosives, fuels, related products</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=663^Beverage technology&amp;sort=iregdate&amp;desc=desc">Beverage
												technology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=664^Food technology&amp;sort=iregdate&amp;desc=desc">Food
												technology</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.1^Sugar, syrups, their derived produces&amp;sort=iregdate&amp;desc=desc">Sugar,
														syrups, their derived produces</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.2^Starchesandjellying agents&amp;sort=iregdate&amp;desc=desc">Starches
														and jellying agents</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.3^Fatsandoils&amp;sort=iregdate&amp;desc=desc">Fats
														and oils</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.4^Food salts&amp;sort=iregdate&amp;desc=desc">Food
														salts</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.5^Flavoring aids&amp;sort=iregdate&amp;desc=desc">Flavoring
														aids</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.6^Special-purpose foodandaids&amp;sort=iregdate&amp;desc=desc">Special-purpose
														food and aids</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.7^Grains, other seeds, their derived products&amp;sort=iregdate&amp;desc=desc">Grains,
														other seeds, their derived products</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.8^Fruitsandvegetables&amp;sort=iregdate&amp;desc=desc">Fruits
														and vegetables</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=664.9^Meatsandallied foods&amp;sort=iregdate&amp;desc=desc">Meats
														and allied foods</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=665^Technology of industrial oils, fats, waxes, gases&amp;sort=iregdate&amp;desc=desc">Technology
												of industrial oils, fats, waxes, gases</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=666^Ceramicandallied technologies&amp;sort=iregdate&amp;desc=desc">Ceramic
												and allied technologies</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=667^Cleaning, color, coating, related technologies&amp;sort=iregdate&amp;desc=desc">Cleaning,
												color, coating, related technologies</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=668^Technology of other organic products&amp;sort=iregdate&amp;desc=desc">Technology
												of other organic products</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=669^Metallurgy&amp;sort=iregdate&amp;desc=desc">Metallurgy</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=67^Manufacturing&amp;sort=iregdate&amp;desc=desc">Manufacturing</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=670 ^Manufacturing&amp;sort=iregdate&amp;desc=desc">Manufacturing</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=671^Metalworking processesandprimary metal products&amp;sort=iregdate&amp;desc=desc">Metalworking
												processes and primary metal products</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=672^Iron, steel, other iron alloys&amp;sort=iregdate&amp;desc=desc">Iron,
												steel, other iron alloys</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=673^Nonferrous metals&amp;sort=iregdate&amp;desc=desc">Nonferrous
												metals</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=674^Lumber processing, wood products, cork&amp;sort=iregdate&amp;desc=desc">Lumber
												processing, wood products, cork</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=675^Leatherandfur processing&amp;sort=iregdate&amp;desc=desc">Leather
												and fur processing</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=676^Pulpandpaper technology&amp;sort=iregdate&amp;desc=desc">Pulp
												and paper technology</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=677^Textiles&amp;sort=iregdate&amp;desc=desc">Textiles</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=678^Elastomersandelastomer products&amp;sort=iregdate&amp;desc=desc">Elastomers
												and elastomer products</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=679^Other products of specific kinds of materials&amp;sort=iregdate&amp;desc=desc">Other
												products of specific kinds of materials</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=68^Manufacture of products for specific uses&amp;sort=iregdate&amp;desc=desc">Manufacture
										of products for specific uses</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=680^Manufacture of products for specific uses&amp;sort=iregdate&amp;desc=desc">Manufacture
												of products for specific uses</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=681^Precision instrumentsandother devices&amp;sort=iregdate&amp;desc=desc">Precision
												instruments and other devices</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=682^Small forge work (Blacksmithing)&amp;sort=iregdate&amp;desc=desc">Small
												forge work (Blacksmithing)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=683^Hardwareandhousehold appliances&amp;sort=iregdate&amp;desc=desc">Hardware
												and household appliances</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=684^Furnishingsandhome workshops&amp;sort=iregdate&amp;desc=desc">Furnishings
												and home workshops</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=685^Leatherandfur goods,andrelated products&amp;sort=iregdate&amp;desc=desc">Leather
												and fur goods, and related products</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=686^Printingandrelated activities&amp;sort=iregdate&amp;desc=desc">Printing
												and related activities</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=687^Clothingandaccessories&amp;sort=iregdate&amp;desc=desc">Clothing
												and accessories</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=688^Other final products,andpackaging technology&amp;sort=iregdate&amp;desc=desc">Other
												final products, and packaging technology</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=69^Construction of buildings&amp;sort=iregdate&amp;desc=desc">Construction
										of buildings</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=690^Construction of buildings&amp;sort=iregdate&amp;desc=desc">Construction
												of buildings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=691^Building materials&amp;sort=iregdate&amp;desc=desc">Building
												materials</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=692^Auxiliary construction practices&amp;sort=iregdate&amp;desc=desc">Auxiliary
												construction practices</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=693^Construction in specific types of materialsandfor specific purposes&amp;sort=iregdate&amp;desc=desc">Construction
												in specific types of materials and for specific purposes</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=694^Wood construction&amp;sort=iregdate&amp;desc=desc">Wood
												construction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=695^Roof covering&amp;sort=iregdate&amp;desc=desc">Roof
												covering</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=696^Utilities&amp;sort=iregdate&amp;desc=desc">Utilities</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=697^Heating, ventilating, air-conditioning engineering&amp;sort=iregdate&amp;desc=desc">Heating,
												ventilating, air-conditioning engineering</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=698^Detail finishing&amp;sort=iregdate&amp;desc=desc">Detail
												finishing</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=7&amp;sort=iregdate&amp;desc=desc">The
								arts</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=70^The arts&amp;sort=iregdate&amp;desc=desc">The
										arts</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=700^The arts&amp;sort=iregdate&amp;desc=desc">The
												arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=701^Philosophyandtheory of fineanddecorative arts&amp;sort=iregdate&amp;desc=desc">Philosophy
												and theory of fine and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=702^Miscellany of fineanddecorative arts&amp;sort=iregdate&amp;desc=desc">Miscellany
												of fine and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=703^Dictionaries, encyclopedias, concordances of fineanddecorative arts&amp;sort=iregdate&amp;desc=desc">Dictionaries,
												encyclopedias, concordances of fine and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=704^Special topics in fineanddecorative arts&amp;sort=iregdate&amp;desc=desc">Special
												topics in fine and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=705^Serial publications of fineanddecorative arts&amp;sort=iregdate&amp;desc=desc">Serial
												publications of fine and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=706^Organizationsandmanagement of fineanddecorative arts&amp;sort=iregdate&amp;desc=desc">Organizations
												and management of fine and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=707^Education, research, related topics of fineanddecorative arts&amp;sort=iregdate&amp;desc=desc">Education,
												research, related topics of fine and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=708^Galleries, museums, private collections of fineanddecorative arts&amp;sort=iregdate&amp;desc=desc">Galleries,
												museums, private collections of fine and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=709^History, geographic treatment, biography&amp;sort=iregdate&amp;desc=desc">History,
												geographic treatment, biography</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=71^Area planningandlandscape architecture&amp;sort=iregdate&amp;desc=desc">Area
										planning and landscape architecture</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=710^Area planningandlandscape architecture&amp;sort=iregdate&amp;desc=desc">Area
												planning and landscape architecture</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=711^Area planning (Civic art)&amp;sort=iregdate&amp;desc=desc">Area
												planning (Civic art)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=712^Landscape architecture (Landscape design)&amp;sort=iregdate&amp;desc=desc">Landscape
												architecture (Landscape design)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=713^Landscape architecture of trafficways&amp;sort=iregdate&amp;desc=desc">Landscape
												architecture of trafficways</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=714^Water features in landscape architecture&amp;sort=iregdate&amp;desc=desc">Water
												features in landscape architecture</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=715^Woody plants in landscape architecture&amp;sort=iregdate&amp;desc=desc">Woody
												plants in landscape architecture</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=716^Herbaceous plants in landscape architecture&amp;sort=iregdate&amp;desc=desc">Herbaceous
												plants in landscape architecture</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=717^Structures in landscape architecture&amp;sort=iregdate&amp;desc=desc">Structures
												in landscape architecture</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=718^Landscape design of cemeteries&amp;sort=iregdate&amp;desc=desc">Landscape
												design of cemeteries</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=719^Natural landscapes&amp;sort=iregdate&amp;desc=desc">Natural
												landscapes</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=72^Architecture&amp;sort=iregdate&amp;desc=desc">Architecture</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=720^Architecture&amp;sort=iregdate&amp;desc=desc">Architecture</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=721^Architectural materialsandstructural elements&amp;sort=iregdate&amp;desc=desc">Architectural
												materials and structural elements</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=722^Architecture from earliest times to ca. 300&amp;sort=iregdate&amp;desc=desc">Architecture
												from earliest times to ca. 300</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=723^Architecture from ca. 300 to 1399&amp;sort=iregdate&amp;desc=desc">Architecture
												from ca. 300 to 1399</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=724^Architecture from 1400&amp;sort=iregdate&amp;desc=desc">Architecture
												from 1400</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=725^Public structures&amp;sort=iregdate&amp;desc=desc">Public
												structures</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=726^Buildings for religiousandrelated purposes&amp;sort=iregdate&amp;desc=desc">Buildings
												for religious and related purposes</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=727^Buildings for educationalandresearch purposes&amp;sort=iregdate&amp;desc=desc">Buildings
												for educational and research purposes</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=728^Residentialandrelated buildings&amp;sort=iregdate&amp;desc=desc">Residential
												and related buildings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=729^Designanddecoration of structuresandaccessories&amp;sort=iregdate&amp;desc=desc">Design
												and decoration of structures and accessories</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=73^Sculptureandrelated arts&amp;sort=iregdate&amp;desc=desc">Sculpture
										and related arts</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=730^Sculptureandrelated arts&amp;sort=iregdate&amp;desc=desc">Sculpture
												and related arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=731^Processes, forms, subjects of sculpture&amp;sort=iregdate&amp;desc=desc">Processes,
												forms, subjects of sculpture</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=732^Sculpture from earliest times to ca. 500, sculpture of nonliterate peoples&amp;sort=iregdate&amp;desc=desc">Sculpture
												from earliest times to ca. 500, sculpture of nonliterate
												peoples</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=733^Greek, Etruscan, Roman sculpture&amp;sort=iregdate&amp;desc=desc">Greek,
												Etruscan, Roman sculpture</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=734^Sculpture form ca. 500 to 1399&amp;sort=iregdate&amp;desc=desc">Sculpture
												form ca. 500 to 1399</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=735^Sculpture from 1400&amp;sort=iregdate&amp;desc=desc">Sculpture
												from 1400</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=736^Carvingandcarvings&amp;sort=iregdate&amp;desc=desc">Carving
												and carvings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=737^Numismaticsandsigillography&amp;sort=iregdate&amp;desc=desc">Numismatics
												and sigillography</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=738^Ceramic arts&amp;sort=iregdate&amp;desc=desc">Ceramic
												arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=739^Art metalwork&amp;sort=iregdate&amp;desc=desc">Art
												metalwork</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=74^Graphicanddecorative arts&amp;sort=iregdate&amp;desc=desc">Graphic
										and decorative arts</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=740^Graphicanddecorative arts&amp;sort=iregdate&amp;desc=desc">Graphic
												and decorative arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=741^Drawinganddrawings&amp;sort=iregdate&amp;desc=desc">Drawing
												and drawings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=742^Perspective in drawing&amp;sort=iregdate&amp;desc=desc">Perspective
												in drawing</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=743^Drawinganddrawings by subject&amp;sort=iregdate&amp;desc=desc">Drawing
												and drawings by subject</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=745^Decorative arts&amp;sort=iregdate&amp;desc=desc">Decorative
												arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=746^Textile arts&amp;sort=iregdate&amp;desc=desc">Textile
												arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=747^Interior decoration&amp;sort=iregdate&amp;desc=desc">Interior
												decoration</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=748^Glass&amp;sort=iregdate&amp;desc=desc">Glass</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=749^Furnitureandaccessories&amp;sort=iregdate&amp;desc=desc">Furniture
												and accessories</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=75^Paintingandpaintings&amp;sort=iregdate&amp;desc=desc">Painting
										and paintings</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=750^Paintingandpaintings&amp;sort=iregdate&amp;desc=desc">Painting
												and paintings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=751^Techniques, procedures, apparatus, equipment, materials, forms &amp;sort=iregdate&amp;desc=desc">Techniques,
												procedures, apparatus, equipment, materials, forms </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=752^Color&amp;sort=iregdate&amp;desc=desc">Color</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=753^Symbolism, allegory, mythology, legend&amp;sort=iregdate&amp;desc=desc">Symbolism,
												allegory, mythology, legend</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=754^Genre paintings&amp;sort=iregdate&amp;desc=desc">Genre
												paintings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=755^Religion&amp;sort=iregdate&amp;desc=desc">Religion</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=757^Human figures&amp;sort=iregdate&amp;desc=desc">Human
												figures</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=758^Nature, architectural subjectsandcityscapes, other specific subjects&amp;sort=iregdate&amp;desc=desc">Nature,
												architectural subjects and cityscapes, other specific
												subjects</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=759^History, geographic treatment, biography &amp;sort=iregdate&amp;desc=desc">History,
												geographic treatment, biography </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=76^Printmakingandprints &amp;sort=iregdate&amp;desc=desc">Printmaking
										and prints </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=760^Printmakingandprints&amp;sort=iregdate&amp;desc=desc">Printmaking
												and prints</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=761^Relief processes (Block printing)&amp;sort=iregdate&amp;desc=desc">Relief
												processes (Block printing)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=763^Lithographic processes (Planographic processes)&amp;sort=iregdate&amp;desc=desc">Lithographic
												processes (Planographic processes)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=764^Chromolithographyandserigraphy&amp;sort=iregdate&amp;desc=desc">Chromolithography
												and serigraphy</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=765^Metal engraving&amp;sort=iregdate&amp;desc=desc">Metal
												engraving</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=766^Mezzotinting, aquatinting, related processes&amp;sort=iregdate&amp;desc=desc">Mezzotinting,
												aquatinting, related processes</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=767^Etchinganddrypoint&amp;sort=iregdate&amp;desc=desc">Etching
												and drypoint</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=769^Prints&amp;sort=iregdate&amp;desc=desc">Prints</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=77^Photography, computer art, cinematography, videography&amp;sort=iregdate&amp;desc=desc">Photography,
										computer art, cinematography, videography</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=770^Photography, computer art, cinematography, videography&amp;sort=iregdate&amp;desc=desc">Photography,
												computer art, cinematography, videography</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=771^Techniques, procedures, apparatus, equipment, materials&amp;sort=iregdate&amp;desc=desc">Techniques,
												procedures, apparatus, equipment, materials</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=772^Metallic salt processes&amp;sort=iregdate&amp;desc=desc">Metallic
												salt processes</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=773^Pigment processes of printing&amp;sort=iregdate&amp;desc=desc">Pigment
												processes of printing</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=774^Holography&amp;sort=iregdate&amp;desc=desc">Holography</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=776^Computer art (Digital art)&amp;sort=iregdate&amp;desc=desc">Computer
												art (Digital art)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=777^Cinematographyandvideography&amp;sort=iregdate&amp;desc=desc">Cinematography
												and videography</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=778^Specific fieldsandspecial kinds of photography&amp;sort=iregdate&amp;desc=desc">Specific
												fields and special kinds of photography</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=779^Photographic images&amp;sort=iregdate&amp;desc=desc">Photographic
												images</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=78^Music&amp;sort=iregdate&amp;desc=desc">Music</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=780^Music&amp;sort=iregdate&amp;desc=desc">Music</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=781^General principlesandmusical forms&amp;sort=iregdate&amp;desc=desc">General
												principles and musical forms</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=782^Vocal music&amp;sort=iregdate&amp;desc=desc">Vocal
												music</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=783^Music for single voices&amp;sort=iregdate&amp;desc=desc">Music
												for single voices</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=784^Instrumentsandinstrumental ensemblesandtheir music&amp;sort=iregdate&amp;desc=desc">Instruments
												and instrumental ensembles and their music</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=785^Ensembles with only one instrument per part&amp;sort=iregdate&amp;desc=desc">Ensembles
												with only one instrument per part</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=786^Keyboard, mechanical, electrophonic, percussion instruments&amp;sort=iregdate&amp;desc=desc">Keyboard,
												mechanical, electrophonic, percussion instruments</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=787^Stringed instruments (Chordophones)&amp;sort=iregdate&amp;desc=desc">Stringed
												instruments (Chordophones)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=788^Wind instruments (Aerophones)&amp;sort=iregdate&amp;desc=desc">Wind
												instruments (Aerophones)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=789^(Composersandtraditions of music)&amp;sort=iregdate&amp;desc=desc">(Composers
												and traditions of music)</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=79^Recreationalandperforming arts&amp;sort=iregdate&amp;desc=desc">Recreational
										and performing arts</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=790^Recreationalandperforming arts&amp;sort=iregdate&amp;desc=desc">Recreational
												and performing arts</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=791^Public performances&amp;sort=iregdate&amp;desc=desc">Public
												performances</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=792^Stage presentations&amp;sort=iregdate&amp;desc=desc">Stage
												presentations</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=793^Indoor gamesandamusements&amp;sort=iregdate&amp;desc=desc">Indoor
												games and amusements</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=794^Indoor games of skill&amp;sort=iregdate&amp;desc=desc">Indoor
												games of skill</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=795^Games of chance&amp;sort=iregdate&amp;desc=desc">Games
												of chance</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=796^Athleticandoutdoor sportsandgames&amp;sort=iregdate&amp;desc=desc">Athletic
												and outdoor sports and games</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=797^Aquaticandair sports&amp;sort=iregdate&amp;desc=desc">Aquatic
												and air sports</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=798^Equestrian sportsandanimal racing &amp;sort=iregdate&amp;desc=desc">Equestrian
												sports and animal racing </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=799^Fishing, hunting, shooting&amp;sort=iregdate&amp;desc=desc">Fishing,
												hunting, shooting</a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=8&amp;sort=iregdate&amp;desc=desc">Literature
								(Belles-lettres) and rhetoric</a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=80^Literature (Belles-lettres)andrhetoric&amp;sort=iregdate&amp;desc=desc">Literature
										(Belles-lettres) and rhetoric</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=800^Literature (Belles-lettres)andrhetoric&amp;sort=iregdate&amp;desc=desc">Literature
												(Belles-lettres) and rhetoric</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=801^Philosophyandtheory&amp;sort=iregdate&amp;desc=desc">Philosophy
												and theory</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=802^Miscellany&amp;sort=iregdate&amp;desc=desc">Miscellany</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=803^Dictionaries, encyclopedias, concordances&amp;sort=iregdate&amp;desc=desc">Dictionaries,
												encyclopedias, concordances</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=805^Serial publications&amp;sort=iregdate&amp;desc=desc">Serial
												publications</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=806^Organizationsandmanagement&amp;sort=iregdate&amp;desc=desc">Organizations
												and management</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=807^Education, research, related topics&amp;sort=iregdate&amp;desc=desc">Education,
												research, related topics</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=808^Rhetoricandcollections of literary texts from more than two literatures&amp;sort=iregdate&amp;desc=desc">Rhetoric
												and collections of literary texts from more than two
												literatures</a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.1^Rhetoric of poetry&amp;sort=iregdate&amp;desc=desc">Rhetoric
														of poetry</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.2^Rhetoric of drama&amp;sort=iregdate&amp;desc=desc">Rhetoric
														of drama</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.3^Rhetoric of fiction&amp;sort=iregdate&amp;desc=desc">Rhetoric
														of fiction</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.4^Rhetoric of essays&amp;sort=iregdate&amp;desc=desc">Rhetoric
														of essays</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.5^Rhetoric of speech&amp;sort=iregdate&amp;desc=desc">Rhetoric
														of speech</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.6^Rhetoric of letters&amp;sort=iregdate&amp;desc=desc">Rhetoric
														of letters</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.7^Rhetoric of humorandsatire&amp;sort=iregdate&amp;desc=desc">Rhetoric
														of humor and satire</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=808.8^Collections of literary texts from more than two literatures&amp;sort=iregdate&amp;desc=desc">Collections
														of literary texts from more than two literatures</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=809^History, description, critical appraisal of more than two literatures&amp;sort=iregdate&amp;desc=desc">History,
												description, critical appraisal of more than two literatures</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=81^American literature in English&amp;sort=iregdate&amp;desc=desc">American
										literature in English</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=810^American literature in English&amp;sort=iregdate&amp;desc=desc">American
												literature in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=811^American poetry in English&amp;sort=iregdate&amp;desc=desc">American
												poetry in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=812^American drama in English&amp;sort=iregdate&amp;desc=desc">American
												drama in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=813^American fiction in English&amp;sort=iregdate&amp;desc=desc">American
												fiction in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=814^American essays in English&amp;sort=iregdate&amp;desc=desc">American
												essays in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=815^American speeches in English&amp;sort=iregdate&amp;desc=desc">American
												speeches in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=816^American letters in English&amp;sort=iregdate&amp;desc=desc">American
												letters in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=817^American humorandsatire in English&amp;sort=iregdate&amp;desc=desc">American
												humor and satire in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=818^American miscellaneous writings in English&amp;sort=iregdate&amp;desc=desc">American
												miscellaneous writings in English</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=819^(American literatures in English not requiring local emphasis)&amp;sort=iregdate&amp;desc=desc">(American
												literatures in English not requiring local emphasis)</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=82^EnglishandOld English (Anglo-Saxon) literatures&amp;sort=iregdate&amp;desc=desc">English
										and Old English (Anglo-Saxon) literatures</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=820^EnglishandOld English (Anglo-Saxon) literatures&amp;sort=iregdate&amp;desc=desc">English
												and Old English (Anglo-Saxon) literatures</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=821^English poetry&amp;sort=iregdate&amp;desc=desc">English
												poetry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=822^English drama&amp;sort=iregdate&amp;desc=desc">English
												drama</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=823^English fiction&amp;sort=iregdate&amp;desc=desc">English
												fiction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=824^English essays&amp;sort=iregdate&amp;desc=desc">English
												essays</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=825^English speeches&amp;sort=iregdate&amp;desc=desc">English
												speeches</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=826^English letters&amp;sort=iregdate&amp;desc=desc">English
												letters</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=827^English humorandsatire&amp;sort=iregdate&amp;desc=desc">English
												humor and satire</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=828^English miscellaneous writings&amp;sort=iregdate&amp;desc=desc">English
												miscellaneous writings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=829^Old English (Anglo-Saxon) literature&amp;sort=iregdate&amp;desc=desc">Old
												English (Anglo-Saxon) literature</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=83^German literatureandliteratures of related languages&amp;sort=iregdate&amp;desc=desc">German
										literature and literatures of related languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=830^German poetry&amp;sort=iregdate&amp;desc=desc">German
												literature and literatures of related languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=831^German poetry&amp;sort=iregdate&amp;desc=desc">German
												poetry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=832^German drama&amp;sort=iregdate&amp;desc=desc">German
												drama</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=833^German fiction&amp;sort=iregdate&amp;desc=desc">German
												fiction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=834^German essays&amp;sort=iregdate&amp;desc=desc">German
												essays</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=835^German speeches&amp;sort=iregdate&amp;desc=desc">German
												speeches</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=836^German letters&amp;sort=iregdate&amp;desc=desc">German
												letters</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=837^German humorandsatire&amp;sort=iregdate&amp;desc=desc">German
												humor and satire</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=838^German miscellaneous writings&amp;sort=iregdate&amp;desc=desc">German
												miscellaneous writings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=839^German germanic literatures&amp;sort=iregdate&amp;desc=desc">German
												germanic literatures</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=84^French literatureandliteratures of related Romance languages&amp;sort=iregdate&amp;desc=desc">French
										literature and literatures of related Romance languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=840^French literatureandliteratures of related Romance languages&amp;sort=iregdate&amp;desc=desc">French
												literature and literatures of related Romance languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=841^French poetry&amp;sort=iregdate&amp;desc=desc">French
												poetry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=842^French drama&amp;sort=iregdate&amp;desc=desc">French
												drama</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=843^French fiction&amp;sort=iregdate&amp;desc=desc">French
												fiction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=844^French essays&amp;sort=iregdate&amp;desc=desc">French
												essays</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=845^French speeches&amp;sort=iregdate&amp;desc=desc">French
												speeches</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=846^French letters&amp;sort=iregdate&amp;desc=desc">French
												letters</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=847^French humorandsatire&amp;sort=iregdate&amp;desc=desc">French
												humor and satire</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=848^French miscellaneous writings&amp;sort=iregdate&amp;desc=desc">French
												miscellaneous writings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=849^Occitan, Catalan, Franco-Provencal literatures&amp;sort=iregdate&amp;desc=desc">Occitan,
												Catalan, Franco-Provencal literatures</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=85^Literatures of Italian, Dalmatian, Romanian, Rhaetian, Sardinian, Corsican languages&amp;sort=iregdate&amp;desc=desc">Literatures
										of Italian, Dalmatian, Romanian, Rhaetian, Sardinian, Corsican
										languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=850^Literatures of Italian, Dalmatian, Romanian, Rhaetian, Sardinian, Corsican languages&amp;sort=iregdate&amp;desc=desc">Literatures
												of Italian, Dalmatian, Romanian, Rhaetian, Sardinian,
												Corsican languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=851^Italian poetry&amp;sort=iregdate&amp;desc=desc">Italian
												poetry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=852^Italian drama&amp;sort=iregdate&amp;desc=desc">Italian
												drama</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=853^Italian fiction&amp;sort=iregdate&amp;desc=desc">Italian
												fiction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=854^Italian essays&amp;sort=iregdate&amp;desc=desc">Italian
												essays</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=855^Italian speeches&amp;sort=iregdate&amp;desc=desc">Italian
												speeches</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=856^Italian letters&amp;sort=iregdate&amp;desc=desc">Italian
												letters</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=857^Italian humorandsatire&amp;sort=iregdate&amp;desc=desc">Italian
												humor and satire</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=858^Italian miscellaneous writings&amp;sort=iregdate&amp;desc=desc">Italian
												miscellaneous writings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=859^Literatures of Romanian, Rhaetian, Sardinian, Corsican languages&amp;sort=iregdate&amp;desc=desc">Literatures
												of Romanian, Rhaetian, Sardinian, Corsican languages</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=86^Literatures of Spanish, Portuguese, Galician languages&amp;sort=iregdate&amp;desc=desc">Literatures
										of Spanish, Portuguese, Galician languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=860^Literatures of Spanish, Portuguese, Galician languages&amp;sort=iregdate&amp;desc=desc">Literatures
												of Spanish, Portuguese, Galician languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=861^Spanish poetry&amp;sort=iregdate&amp;desc=desc">Spanish
												poetry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=862^Spanish drama&amp;sort=iregdate&amp;desc=desc">Spanish
												drama</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=863^Spanish fiction&amp;sort=iregdate&amp;desc=desc">Spanish
												fiction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=864^Spanish essays&amp;sort=iregdate&amp;desc=desc">Spanish
												essays</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=865^Spanish speeches&amp;sort=iregdate&amp;desc=desc">Spanish
												speeches</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=866^Spanish letters&amp;sort=iregdate&amp;desc=desc">Spanish
												letters</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=867^Spanish humorandsatire&amp;sort=iregdate&amp;desc=desc">Spanish
												humor and satire</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=868^Spanish miscellaneous writings&amp;sort=iregdate&amp;desc=desc">Spanish
												miscellaneous writings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=869^Literatures of portugueseandGalician languages&amp;sort=iregdate&amp;desc=desc">Literatures
												of portuguese and Galician languages</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=87^Latin literatureandliteratures of related Italic languages&amp;sort=iregdate&amp;desc=desc">Latin
										literature and literatures of related Italic languages</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=870^Latin literatureandliteratures of related Italic languages&amp;sort=iregdate&amp;desc=desc">Latin
												literature and literatures of related Italic languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=871^Latin poetry&amp;sort=iregdate&amp;desc=desc">Latin
												poetry</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=872^Latin drama&amp;sort=iregdate&amp;desc=desc">Latin
												drama</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=873^Latin fiction&amp;sort=iregdate&amp;desc=desc">Latin
												fiction</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=874^Latin essays&amp;sort=iregdate&amp;desc=desc">Latin
												essays</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=875^Latin speeches&amp;sort=iregdate&amp;desc=desc">Latin
												speeches</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=876^Latin letters&amp;sort=iregdate&amp;desc=desc">Latin
												letters</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=877^Latin humorandsatire&amp;sort=iregdate&amp;desc=desc">Latin
												humor and satire</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=878^Latin miscellaneous writings&amp;sort=iregdate&amp;desc=desc">Latin
												miscellaneous writings</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=879^Literatures of other Italic languages&amp;sort=iregdate&amp;desc=desc">Literatures
												of other Italic languages</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=88^Classical Greek literatureandliteratures of related Hellenic languages &amp;sort=iregdate&amp;desc=desc">Classical
										Greek literature and literatures of related Hellenic languages
								</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=880^Classical Greek literatureandliteratures of related Hellenic languages&amp;sort=iregdate&amp;desc=desc">Classical
												Greek literature and literatures of related Hellenic
												languages</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=881^Classical Greek poetry &amp;sort=iregdate&amp;desc=desc">Classical
												Greek poetry </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=882^Classical Greek dramatic poetryanddrama &amp;sort=iregdate&amp;desc=desc">Classical
												Greek dramatic poetry and drama </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=883^Classical Greek epic poetryandfiction &amp;sort=iregdate&amp;desc=desc">Classical
												Greek epic poetry and fiction </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=884^Classical Greek lyric poetry &amp;sort=iregdate&amp;desc=desc">Classical
												Greek lyric poetry </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=885^Classical Greek speeches &amp;sort=iregdate&amp;desc=desc">Classical
												Greek speeches </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=886^Classical Greek letters &amp;sort=iregdate&amp;desc=desc">Classical
												Greek letters </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=887^Classical Greek humorandsatire &amp;sort=iregdate&amp;desc=desc">Classical
												Greek humor and satire </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=888^Classical Greek miscellaneous writings &amp;sort=iregdate&amp;desc=desc">Classical
												Greek miscellaneous writings </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=889^Modern Greek literature &amp;sort=iregdate&amp;desc=desc">Modern
												Greek literature </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=89^Literatures of other specific languagesandlanguage families &amp;sort=iregdate&amp;desc=desc">Literatures
										of other specific languages and language families </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=890^Literatures of other specific languagesandlanguage families&amp;sort=iregdate&amp;desc=desc">Literatures
												of other specific languages and language families</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=891^East Indo-EuropeanandCeltic literatures &amp;sort=iregdate&amp;desc=desc">East
												Indo-European and Celtic literatures </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=892^Afro-Asiatic literatures &amp;sort=iregdate&amp;desc=desc">Afro-Asiatic
												literatures </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=893^Non-Semitic Afro-Asiatic literatures &amp;sort=iregdate&amp;desc=desc">Non-Semitic
												Afro-Asiatic literatures </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=894^Literatures of Altaic, Uralic, Hyperborean, Dravidian languages; literatures of miscellaneous languages of south Asia &amp;sort=iregdate&amp;desc=desc">Literatures
												of Altaic, Uralic, Hyperborean, Dravidian languages;
												literatures of miscellaneous languages of south Asia </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=895^Literatures of EastandSoutheast Asia &amp;sort=iregdate&amp;desc=desc">Literatures
												of East and Southeast Asia </a>
											<ul class="box_r2">
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=895.1^Chinese literature&amp;sort=iregdate&amp;desc=desc">Chinese
														literature</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=895.6^Japanese literature&amp;sort=iregdate&amp;desc=desc">Japanese
														literature literature</a></li>
												<li><a
													href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=kdc&amp;kdcddcCode=895.7^Korean literature&amp;sort=iregdate&amp;desc=desc">Korean
														literature</a></li>
											</ul></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=896^African literatures &amp;sort=iregdate&amp;desc=desc">African
												literatures </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=897^Literatures of North American native languages &amp;sort=iregdate&amp;desc=desc">Literatures
												of North American native languages </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=898^Literatures of South American native languages &amp;sort=iregdate&amp;desc=desc">Literatures
												of South American native languages </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=899^Literatures of non-Austronesian languages of Oceania, of Austronesian languages, of miscellaneous languages &amp;sort=iregdate&amp;desc=desc">Literatures
												of non-Austronesian languages of Oceania, of Austronesian
												languages, of miscellaneous languages </a></li>
									</ul></li>
							</ul></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=9&amp;sort=iregdate&amp;desc=desc">History,
								geography, and auxiliary disciplines </a>
							<ul class="box_c" style="display: none;">
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=90^History, geography,andauxiliary disciplines &amp;sort=iregdate&amp;desc=desc">History,
										geography, and auxiliary disciplines </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=900^History, geography,andauxiliary disciplines &amp;sort=iregdate&amp;desc=desc">History,
												geography, and auxiliary disciplines</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=901^Philosophyandtheory of history &amp;sort=iregdate&amp;desc=desc">Philosophy
												and theory of history </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=902^Miscellany of history &amp;sort=iregdate&amp;desc=desc">Miscellany
												of history </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=903^Dictionaries, encyclopedias, concordances of history &amp;sort=iregdate&amp;desc=desc">Dictionaries,
												encyclopedias, concordances of history </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=904^Collected accounts of events &amp;sort=iregdate&amp;desc=desc">Collected
												accounts of events </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=905^Serial publications of history &amp;sort=iregdate&amp;desc=desc">Serial
												publications of history </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=906^Organizationsandmanagement of history &amp;sort=iregdate&amp;desc=desc">Organizations
												and management of history </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=907^Education, research, related topics of history &amp;sort=iregdate&amp;desc=desc">Education,
												research, related topics of history </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=908^History with respect to groups of people &amp;sort=iregdate&amp;desc=desc">History
												with respect to groups of people </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=909^World history &amp;sort=iregdate&amp;desc=desc">World
												history </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=91^Geographyandtravel &amp;sort=iregdate&amp;desc=desc">Geography
										and travel </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=910^Geographyandtravel&amp;sort=iregdate&amp;desc=desc">Geography
												and travel</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=911^Historical geography &amp;sort=iregdate&amp;desc=desc">Historical
												geography </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=912^Graphic representations of surface of earthandof extraterrestrial worlds &amp;sort=iregdate&amp;desc=desc">Graphic
												representations of surface of earth and of extraterrestrial
												worlds </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=913^Geography ofandtravel in ancient world&amp;sort=iregdate&amp;desc=desc">Geography
												of and travel in ancient world</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=914^Geography ofandtravel in Europe &amp;sort=iregdate&amp;desc=desc">Geography
												of and travel in Europe </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=915^Geography ofandtravel in Asia &amp;sort=iregdate&amp;desc=desc">Geography
												of and travel in Asia </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=916^Geography ofandtravel in Africa &amp;sort=iregdate&amp;desc=desc">Geography
												of and travel in Africa </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=917^Geography ofandtravel in North America &amp;sort=iregdate&amp;desc=desc">Geography
												of and travel in North America </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=918^Geography ofandtravel in South America &amp;sort=iregdate&amp;desc=desc">Geography
												of and travel in South America </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=919^Geography ofandtravel in Australasia, Pacific Ocean islands, Atlantic Ocean islands, Arctic islands, Antarcticaandon extraterrestrial worlds &amp;sort=iregdate&amp;desc=desc">Geography
												of and travel in Australasia, Pacific Ocean islands,
												Atlantic Ocean islands, Arctic islands, Antarctica and on
												extraterrestrial worlds </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=92^Biography, genealogy, insignia&amp;sort=iregdate&amp;desc=desc">Biography,
										genealogy, insignia</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=920^Biography, genealogy, insignia&amp;sort=iregdate&amp;desc=desc">Biography,
												genealogy, insignia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=921^(Philosophersandpsychologists)&amp;sort=iregdate&amp;desc=desc">(Philosophers
												and psychologists)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=922^(Religious leaders, thinkers, workers) &amp;sort=iregdate&amp;desc=desc">(Religious
												leaders, thinkers, workers) </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=923^(People in social sciences)&amp;sort=iregdate&amp;desc=desc">(People
												in social sciences)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=924^(Philologistsandlexicographers)&amp;sort=iregdate&amp;desc=desc">(Philologists
												and lexicographers)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=925^(Scientists) &amp;sort=iregdate&amp;desc=desc">(Scientists)
										</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=926^(People in technology) &amp;sort=iregdate&amp;desc=desc">(People
												in technology) </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=927^(People in the artsandrecreation)&amp;sort=iregdate&amp;desc=desc">(People
												in the arts and recreation)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=928^(People in literature, history, biography, genealogy)&amp;sort=iregdate&amp;desc=desc">(People
												in literature, history, biography, genealogy)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=929^(Genealogy, names, insignia) &amp;sort=iregdate&amp;desc=desc">(Genealogy,
												names, insignia) </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=93^History of ancient world to ca. 499&amp;sort=iregdate&amp;desc=desc">History
										of ancient world to ca. 499</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=930^History of ancient world to ca. 499&amp;sort=iregdate&amp;desc=desc">History
												of ancient world to ca. 499</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=931^China to 420&amp;sort=iregdate&amp;desc=desc">China
												to 420</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=932^Egypt to 640 &amp;sort=iregdate&amp;desc=desc">Egypt
												to 640 </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=933^Palestine to 70 &amp;sort=iregdate&amp;desc=desc">Palestine
												to 70 </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=934^South Asia to 647 &amp;sort=iregdate&amp;desc=desc">South
												Asia to 647 </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=935^Mesopotamia to 637andIranian Plateau to 637&amp;sort=iregdate&amp;desc=desc">Mesopotamia
												to 637 and Iranian Plateau to 637</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=936^Europe northandwest of Italian Peninsula to ca. 499 &amp;sort=iregdate&amp;desc=desc">Europe
												north and west of Italian Peninsula to ca. 499 </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=937^Italian Peninsula to 476andadjacent territories to 476&amp;sort=iregdate&amp;desc=desc">Italian
												Peninsula to 476 and adjacent territories to 476</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=938^Greece to 323 &amp;sort=iregdate&amp;desc=desc">Greece
												to 323 </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=939^Other parts of ancient world &amp;sort=iregdate&amp;desc=desc">Other
												parts of ancient world </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=94^History of Europe &amp;sort=iregdate&amp;desc=desc">History
										of Europe </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=940^History of Europe&amp;sort=iregdate&amp;desc=desc">History
												of Europe </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=941^British Isles &amp;sort=iregdate&amp;desc=desc">British
												Isles </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=942^EnglandandWales&amp;sort=iregdate&amp;desc=desc">England
												and Wales</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=943^Germanyandneighboring central European countries &amp;sort=iregdate&amp;desc=desc">Germany
												and neighboring central European countries </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=944^FranceandMonaco &amp;sort=iregdate&amp;desc=desc">France
												and Monaco </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=945^Italy, San Marino, Vatican City, Malta &amp;sort=iregdate&amp;desc=desc">Italy,
												San Marino, Vatican City, Malta </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=946^Spain, Andorra, Gibraltar, Portugal&amp;sort=iregdate&amp;desc=desc">Spain,
												Andorra, Gibraltar, Portugal</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=947^Russiaandneighboring east European countries&amp;sort=iregdate&amp;desc=desc">Russia
												and neighboring east European countries</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=948^ScandinaviaandFinland &amp;sort=iregdate&amp;desc=desc">Scandinavia
												and Finland </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=949^Other parts of Europe &amp;sort=iregdate&amp;desc=desc">Other
												parts of Europe </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=95^History of Asia &amp;sort=iregdate&amp;desc=desc">History
										of Asia </a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=950^History of Asia&amp;sort=iregdate&amp;desc=desc">History
												of Asia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=951^Chinaandadjacent areas &amp;sort=iregdate&amp;desc=desc">China
												and adjacent areas </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=952^Japan &amp;sort=iregdate&amp;desc=desc">Japan
										</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=953^Arabian Peninsulaandadjacent areas&amp;sort=iregdate&amp;desc=desc">Arabian
												Peninsula and adjacent areas</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=954^Indiaandneighboring south Asian countries&amp;sort=iregdate&amp;desc=desc">India
												and neighboring south Asian countries</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=955^Iran &amp;sort=iregdate&amp;desc=desc">Iran
										</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=956^Middle East (Near East)&amp;sort=iregdate&amp;desc=desc">Middle
												East (Near East)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=957^Siberia (Asiatic Russia) &amp;sort=iregdate&amp;desc=desc">Siberia
												(Asiatic Russia) </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=958^Central Asia &amp;sort=iregdate&amp;desc=desc">Central
												Asia </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=959^Southeast Asia &amp;sort=iregdate&amp;desc=desc">Southeast
												Asia </a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=96^History of Africa&amp;sort=iregdate&amp;desc=desc">History
										of Africa</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=960^History of Africa&amp;sort=iregdate&amp;desc=desc">History
												of Africa</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=961^TunisiaandLibya&amp;sort=iregdate&amp;desc=desc">Tunisia
												and Libya</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=962^Egypt, Sudan, South Sudan&amp;sort=iregdate&amp;desc=desc">Egypt,
												Sudan, South Sudan</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=963^EthiopiaandEritrea&amp;sort=iregdate&amp;desc=desc">Ethiopia
												and Eritrea</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=964^Morocco, Ceuta, Melilla, Western Sahara, Canary Islands&amp;sort=iregdate&amp;desc=desc">Morocco,
												Ceuta, Melilla, Western Sahara, Canary Islands</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=965^Algeria&amp;sort=iregdate&amp;desc=desc">Algeria</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=966^West Africaandoffshore islands&amp;sort=iregdate&amp;desc=desc">West
												Africa and offshore islands</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=967^Central Africaandoffshore islands&amp;sort=iregdate&amp;desc=desc">Central
												Africa and offshore islands</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=968^Republic of South Africaandneighboring southern African countries&amp;sort=iregdate&amp;desc=desc">Republic
												of South Africa and neighboring southern African countries</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=969^South Indian Ocean islands&amp;sort=iregdate&amp;desc=desc">South
												Indian Ocean islands</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=97^History of North America&amp;sort=iregdate&amp;desc=desc">History
										of North America</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=970^History of North America&amp;sort=iregdate&amp;desc=desc">History
												of North America</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=971^Canada&amp;sort=iregdate&amp;desc=desc">Canada</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=972^Mexico, Central America, West Indies, Bermuda&amp;sort=iregdate&amp;desc=desc">Mexico,
												Central America, West Indies, Bermuda</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=973^United States&amp;sort=iregdate&amp;desc=desc">United
												States</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=974^Northeastern United States (New EnglandandMiddle Atlantic states) &amp;sort=iregdate&amp;desc=desc">Northeastern
												United States (New England and Middle Atlantic states) </a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=975^Southeastern United States (South Atlantic states)&amp;sort=iregdate&amp;desc=desc">Southeastern
												United States (South Atlantic states)</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=976^South central United States&amp;sort=iregdate&amp;desc=desc">South
												central United States</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=977^North central United States&amp;sort=iregdate&amp;desc=desc">North
												central United States</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=978^Western United States&amp;sort=iregdate&amp;desc=desc">Western
												United States</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=979^Great BasinandPacific Slope region of United States&amp;sort=iregdate&amp;desc=desc">Great
												Basin and Pacific Slope region of United States</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=98^History of South America&amp;sort=iregdate&amp;desc=desc">History
										of South America</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=980^History of South America&amp;sort=iregdate&amp;desc=desc">History
												of South America</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=981^Brazil&amp;sort=iregdate&amp;desc=desc">Brazil</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=982^Argentina&amp;sort=iregdate&amp;desc=desc">Argentina</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=983^Chile&amp;sort=iregdate&amp;desc=desc">Chile</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=984^Bolivia&amp;sort=iregdate&amp;desc=desc">Bolivia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=985^Peru&amp;sort=iregdate&amp;desc=desc">Peru</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=986^ColombiaandEcuador&amp;sort=iregdate&amp;desc=desc">Colombia
												and Ecuador</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=987^Venezuela&amp;sort=iregdate&amp;desc=desc">Venezuela</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=988^Guiana&amp;sort=iregdate&amp;desc=desc">Guiana</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=989^ParaguayandUruguay&amp;sort=iregdate&amp;desc=desc">Paraguay
												and Uruguay</a></li>
									</ul></li>
								<li><a
									href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=99^History of Australasia, Pacific Ocean islands, Atlantic Ocean islands, Arctic islands, Antarctica, extraterrestrial worlds&amp;sort=iregdate&amp;desc=desc">History
										of Australasia, Pacific Ocean islands, Atlantic Ocean islands,
										Arctic islands, Antarctica, extraterrestrial worlds</a>
									<ul class="box_r" style="display: none;">
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=990^History of Australasia, Pacific Ocean islands, Atlantic Ocean islands, Arctic islands, Antarctica, extraterrestrial worlds&amp;sort=iregdate&amp;desc=desc">History
												of Australasia, Pacific Ocean islands, Atlantic Ocean
												islands, Arctic islands, Antarctica, extraterrestrial worlds</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=993^New Zealand&amp;sort=iregdate&amp;desc=desc">New
												Zealand</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=994^Australia&amp;sort=iregdate&amp;desc=desc">Australia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=995^New Guineaandneighboring countries of Melanesia&amp;sort=iregdate&amp;desc=desc">New
												Guinea and neighboring countries of Melanesia</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=996^Polynesiaandother Pacific Ocean islands&amp;sort=iregdate&amp;desc=desc">Polynesia
												and other Pacific Ocean islands</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=997^Atlantic Ocean islands&amp;sort=iregdate&amp;desc=desc">Atlantic
												Ocean islands</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=998^Arctic islandsandAntarctica&amp;sort=iregdate&amp;desc=desc">Arctic
												islands and Antarctica</a></li>
										<li><a
											href="http://www.nl.go.kr/app/nl/search/search.jsp?all=on&amp;detailSearch=true&amp;kdcddc=ddc&amp;kdcddcCode=999^Extraterrestrial worlds&amp;sort=iregdate&amp;desc=desc">Extraterrestrial
												worlds</a></li>
									</ul></li>
							</ul></li>
					</ul>
				</div>
			</div>
			<!-- //DDC(서양서) 주제별 -->
			<!-- start 주제별 -->
			<div id="browsingTab03" class="browsingTab_container"
				style="display: none;">
				<h3 class="hide">주제어로 찾기</h3>
				<!-- //주제명을 이용한 검색 -->
				<div class="detailSrch_contents">
					<!-- 주제명찾기 -->
					<div class="titSrch">
						<p class="tit">주제명을 통해 자료를 검색할 수 있습니다.</p>
						<!-- 검색필드상단 -->

						<form id="frm_SubjectThesaurusMain"
							name="frm_SubjectThesaurusMain" method="post"
							onsubmit="goSubjectLnbListMain();return false;" action="">
							<input type="hidden" name="searchmode" id="searchmode"
								value="SubjectThesaurusAction"> <input type="hidden"
								name="form_name" id="form_name" value=""> <input
								type="hidden" name="input_name" id="input_name" value="subject">
							<input type="hidden" name="int_Index" id="int_Index" value="">
							<input type="hidden" name="str_SearchWord_Ori"
								id="str_SearchWord_Ori" value=""> <input type="hidden"
								name="int_ResultCount" id="int_ResultCount" value=""> <input
								type="hidden" name="int_Count" id="int_Count" value="">
							<input type="hidden" name="int_TotalCount" id="int_TotalCount"
								value=""> <input type="hidden" name="int_TotalLoadCnt"
								id="int_TotalLoadCnt" value="0">
							<div class="titSrchBox">
								<p class="info_tlt_txt">
									<strong>1. 주제를 입력하세요</strong>
								</p>
								<fieldset>
									<legend>주제명찾기</legend>
									<div class="titSrch">
										<div class="radioBox">
											<input type="radio" name="searchType" id="titSrch_radio01"
												value="R" class="input_radio" checked=""> <label
												for="titSrch_radio01">전방일치</label> <input type="radio"
												name="searchType" id="titSrch_radio02" value="L"
												class="input_radio"> <label for="titSrch_radio02">후방일치</label>
											<input type="radio" name="searchType" id="titSrch_radio03"
												value="S" class="input_radio"> <label
												for="titSrch_radio03">부분일치</label>
											<!-- input type="radio" name="searchType" id="titSrch_radio04" value="R" class="input_radio">
					<label for="titSrch_radio04">완전일치</label-->
											<input type="text" name="str_SearchWord" id="str_SearchWord"
												class="input_txt" title="검색어입력"> <a class="btn_bk"
												href="#" onclick="goSubjectLnbListMain();return false;">주제어
												찾기</a>
										</div>
									</div>
									<div class="ifb_subjectguide" id="subject_search_guide">
										<h3>검색안내</h3>
										<ul>
											<li>-<strong>전방일치</strong>: 입력하신 키워드로 시작하는 주제어
											</li>
											<li>-<strong>후방일치</strong>: 입력하신 키워드로 끝나는 주제어
											</li>
											<li>-<strong>부분일치</strong>: 입력하신 키워드 포함하는 주제어
											</li>
										</ul>
									</div>
								</fieldset>
							</div>
						</form>
						<!-- //검색필드 상단 -->
						<!-- 검색필드 하단 -->
						<div class="titSrch_cont">
							<!-- 용어목록_선택영역 -->
							<div class="titSrch_cont_bottom">
								<p class="info_tlt_txt">
									<strong>2. 주제어를 선택하세요</strong>
								</p>
								<!-- 용어목록 -->
								<div id="subjectLeftListMain" class="termLst">
									<div class="tit">목록</div>
								</div>
								<!-- //용어목록 -->
								<!-- 선택영역 -->
								<div class="selectArea">
									<div id="subjectRightListMain" class="selectArea_view"></div>
								</div>
								<!-- //선택영역 -->
							</div>
							<!-- //용어목록_선택영역 -->
							<!-- 선택된 주제명 -->
							<form name="subjectSearchFormMain"
								action="http://www.nl.go.kr/app/nl/search/search.jsp"
								method="get" onsubmit="return goSubject();">
								<input type="hidden" name="detailSearch" value="true"> <input
									type="hidden" name="all" value="on"> <input
									type="hidden" name="sort" value="iregdate"> <input
									type="hidden" name="desc" value="desc"> <input
									type="hidden" name="subject" id="subject" value="">
								<div id="subjectSelectdBoxMain" class="selectTitle">
									<p class="info_tlt_txt" style="background: none;">
										<strong>3. 주제어를 모아 검색할 수 있습니다.</strong>
									</p>
									<div class="tit">
										<p class="fl">선택된 주제명</p>
										<p class="fr">
											[검색결과: <strong id="subjectCount">0</strong>건] 주제명을 선택하세요
										</p>
									</div>
									<div class="cont">
										<ul class="lst">
											<li>&nbsp;</li>
											<!-- li>
						<strong>1922</strong>
						<a href="#none"><img src="http://www.nl.go.kr/app/nl/_res/img/btn/btn_close.png" alt="삭제"></a>
					</li>
					<li>
						<strong>김소월[金素月]</strong>
						<a href="#none"><img src="http://www.nl.go.kr/app/nl/_res/img/btn/btn_close.png" alt="삭제"></a>
					</li>
					<li>
						<strong>김소월[金素月]</strong>
						<a href="#none"><img src="http://www.nl.go.kr/app/nl/_res/img/btn/btn_close.png" alt="삭제"></a>
					</li-->
										</ul>
										<a class="btn_titleSrch" href="#" onclick="goSubject();"><span>검색</span></a>
									</div>
								</div>
							</form>
							<!-- //선택된 주제명 -->
						</div>
						<!-- //검색필드 하단 -->
					</div>
					<!-- //주제명찾기 -->
				</div>
				<!-- //주제명을 이용한 검색 -->
			</div>
			<!-- end 주제별 -->
			<!-- 멀티미디어 및 온라인 자료-->
			<div id="browsingTab04" class="browsingTab_container"
				style="display: none;">
				<h3 class="hide">멀티미디어 및 온라인 자료</h3>
				<div class="browsingTab04">
					<ul class="tab04_left">
						<li class="browsingTab04_11"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?media=on&amp;category=media&amp;detailSearch=true&amp;typeCode=N3&amp;sort=iregdate&amp;desc=desc">영상물</a></li>
						<li class="browsingTab04_03"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?media=on&amp;category=media&amp;detailSearch=true&amp;typeCode=D3&amp;sort=iregdate&amp;desc=desc">디지털영상</a></li>
						<li class="browsingTab04_12"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?media=on&amp;category=media&amp;detailSearch=true&amp;typeCode=N7&amp;sort=iregdate&amp;desc=desc">음반</a></li>
						<li class="browsingTab04_04"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?media=on&amp;category=media&amp;detailSearch=true&amp;typeCode=D4&amp;sort=iregdate&amp;desc=desc">디지털이미지</a></li>
						<li class="browsingTab04_05"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?media=on&amp;category=media&amp;detailSearch=true&amp;typeCode=D5&amp;sort=iregdate&amp;desc=desc">디지털음원</a></li>
						<li class="browsingTab04_06"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?media=on&amp;category=media&amp;detailSearch=true&amp;typeCode=N4&amp;sort=iregdate&amp;desc=desc">컴퓨터파일</a></li>
						<li class="browsingTab04_13"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?media=on&amp;category=media&amp;detailSearch=true&amp;typeCode=N6&amp;sort=iregdate&amp;desc=desc">마이크로자료</a></li>
						<li class="browsingTab04_10"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?etc=on&amp;category=etc&amp;detailSearch=true&amp;typeCode=D11&amp;sort=iregdate&amp;desc=desc">기타</a></li>
					</ul>
					<ul class="tab04_right">
						<li class="browsingTab04_01"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?dan=on&amp;category=dan&amp;detailSearch=true&amp;typeCode=D1&amp;sort=iregdate&amp;desc=desc">전자책</a></li>
						<li class="browsingTab04_02"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?yon=on&amp;category=yon&amp;detailSearch=true&amp;typeCode=D2&amp;sort=iregdate&amp;desc=desc">전자저널</a></li>
						<li class="browsingTab04_07"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?web=on&amp;category=web&amp;detailSearch=true&amp;typeCode=D7&amp;sort=iregdate&amp;desc=desc">웹사이트</a></li>
						<li class="browsingTab04_09"><a
							href="http://www.nl.go.kr/app/nl/search/search.jsp?archive=on&amp;category=archive&amp;detailSearch=true&amp;typeCode=D12&amp;sort=iregdate&amp;desc=desc">해외수집기록물</a></li>
					</ul>
				</div>
			</div>
			<!-- END 멀티미디어 및 온라인 자료 -->
			<!-- 원문 DB별 -->
			<div id="browsingTab07" class="browsingTab_container"
				style="display: none;">
				<h3 class="hide">원문 DB별</h3>
				<div class="browsingTab07">
					<ul>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH41&amp;amp;wonmunTabYn=Y">고서</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4A&amp;amp;wonmunTabYn=Y">고지도</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4R&amp;amp;wonmunTabYn=Y">교과서</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4K&amp;amp;wonmunTabYn=Y">국내발간
								한국관련 외국어자료</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH43&amp;amp;wonmunTabYn=Y">관보(1894~1945)</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH45|CH4Q&amp;wonmunTabYn=Y">단행자료</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4M&amp;amp;wonmunTabYn=Y">독도관련자료</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH47&amp;wonmunTabYn=Y">문화체육관광부
								발간자료</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH48&amp;wonmunTabYn=Y">신문학대표소설</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4T&amp;wonmunTabYn=Y">악보</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4E&amp;wonmunTabYn=Y">어린이,청소년
								관련 자료</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4B&amp;wonmunTabYn=Y">연속간행물
								귀중본</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4I&amp;wonmunTabYn=Y">우수학술도서</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4D&amp;wonmunTabYn=Y">인문과학분야
								박사학위논문</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4F&amp;wonmunTabYn=Y">일본어자료(~1945)</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4P&amp;wonmunTabYn=Y">정부간행물</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH44&amp;wonmunTabYn=Y">한글판
								고전소설</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4J&amp;wonmunTabYn=Y">한국고전백선</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4G&amp;wonmunTabYn=Y">한국고전적종합목록</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH4L&amp;wonmunTabYn=Y">한국관련외국어자료</a></li>
						<li><a
							href="http://www.nl.go.kr/app/nl/search/search_wonmun.jsp?detailSearch=true&amp;offer_dbcode_2s=CH49&amp;wonmunTabYn=Y">신문(~1945)</a></li>
					</ul>
				</div>
			</div>
			<!-- END 원문 DB별 -->
		</div>
	</div>
<div class="layerPop_box02" style="display: none;">
  <div class="bg"></div>
  <!-- detailSearchBox -->
  <div class="detailSearchBox pop01"> 
    <!-- 타이틀영역 -->
    <div class="detail_topArea">
      <h1>상세검색</h1>
      <a class="close" href="#"><img src="/nl/_res/img/btn/btn_detailSearchBox_close.png" alt="상세검색 닫기"></a> </div>
    <!-- //타이틀영역--> 
    <!-- 상세검색 -->
    <form name="detailSearchForm" action="/nl/search/search.jsp" method="get" target="_top" onsubmit="return goDetailSearch('');">
      <input type="hidden" name="detailSearch" value="true">
      <div class="detailSrch_contents" style="display:block;" id="detailSrch_contents01"> 
        <!-- 자료구분 선택 -->
        <div class="classify_data">
          <dl>
            <dt>자료구분 선택</dt>
            <dd>
              <ul class="dl_ul">
                <li>
                  <input type="radio" name="all" value="on" id="classify_data01" class="input_radio" checked="checked">
                  <label for="classify_data01">전체</label>
                </li>
                <li>
                  <input type="radio" name="dan" value="on" id="classify_data02" class="input_radio">
                  <label for="classify_data02">단행자료</label>
                </li>
                <li>
                  <input type="radio" name="yon" value="on" id="classify_data03" class="input_radio">
                  <label for="classify_data03">연속자료</label>
                </li>
                <li>
                  <input type="radio" name="media" value="on" id="classify_data04" class="input_radio">
                  <label for="classify_data04">멀티미디어자료</label>
                </li>
                <li>
                  <input type="radio" name="disabled" value="on" id="classify_data05" class="input_radio">
                  <label for="classify_data05">장애인자료</label>
                </li>
                <li>
                  <input type="radio" name="web" value="on" id="classify_data06" class="input_radio">
                  <label for="classify_data06">웹정보자료</label>
                </li>
                <li>
                  <input type="radio" name="map" value="on" id="classify_data07" class="input_radio">
                  <label for="classify_data07">지도</label>
                </li>
                <li>
                  <input type="radio" name="music" value="on" id="classify_data08" class="input_radio">
                  <label for="classify_data08">악보</label>
                </li>
                <li>
                  <input type="radio" name="archive" value="on" id="classify_data09" class="input_radio">
                  <label for="classify_data09">해외수집기록물</label>
                </li>
                <li>
                  <input type="radio" name="etc" value="on" id="classify_data10" class="input_radio">
                  <label for="classify_data10">기타</label>
                </li>
                <li>
                  <input type="radio" name="cip" value="on" id="classify_data11" class="input_radio">
                  <label for="classify_data11">출판예정도서</label>
                </li>
                <li>
                  <input type="radio" name="kolisNet" id="classify_data12" class="input_radio">
                  <label for="classify_data12">국가자료종합목록</label>
                </li>
                <li>
                  <input type="radio" name="korcis" id="classify_data13" class="input_radio">
                  <label for="classify_data13">한국고전적종합목록</label>
                </li>
              </ul>
            </dd>
          </dl>
        </div>
        <!-- //자료구분 선택 --> 
        <!-- 카테고리 뎁스 -->
        <div id="danDepth" class="classify_depth" style="display: none;"><!-- 자료구분에서 값 선택시 show 해주세요 -->
          <dl>
            <dt>단행자료</dt>
            <!-- 자료구분에서 선택한 값 이쪽에 넣어주세요 -->
            <dd>
              <ul class="dl_ul">
                <li>
                  <input type="radio" name="typeCode" value="B1" id="danDepth01" class="input_radio">
                  <label for="danDepth01">도서</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="D1" id="danDepth02" class="input_radio">
                  <label for="danDepth02">전자책</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="B2" id="danDepth03" class="input_radio">
                  <label for="danDepth03">고서</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="B3" id="danDepth04" class="input_radio">
                  <label for="danDepth04">학위논문</label>
                </li>
              </ul>
            </dd>
          </dl>
        </div>
        <div id="yonDepth" class="classify_depth" style="display: none;"><!-- 자료구분에서 값 선택시 show 해주세요 -->
          <dl>
            <dt>연속자료</dt>
            <!-- 자료구분에서 선택한 값 이쪽에 넣어주세요 -->
            <dd>
              <ul class="dl_ul">
                <li>
                  <input type="radio" name="typeCode" value="B8" id="yonDepth01" class="input_radio">
                  <label for="yonDepth01">신문</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="B7" id="yonDepth02" class="input_radio">
                  <label for="yonDepth02">잡지학술지</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="D2" id="yonDepth03" class="input_radio">
                  <label for="yonDepth03">전자저널</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="B9" id="yonDepth04" class="input_radio">
                  <label for="yonDepth04">학술기사</label>
                </li>
              </ul>
            </dd>
          </dl>
        </div>
        <div id="mediaDepth" class="classify_depth" style="display: none;"><!-- 자료구분에서 값 선택시 show 해주세요 -->
          <dl>
            <dt>멀티미디어자료</dt>
            <!-- 자료구분에서 선택한 값 이쪽에 넣어주세요 -->
            <dd>
              <ul class="dl_ul">
                <li>
                  <input type="radio" name="typeCode" value="N3" id="mediaDepth01" class="input_radio">
                  <label for="mediaDepth01">영상물[DVD,비디오테잎...]</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="D3" id="mediaDepth02" class="input_radio">
                  <label for="mediaDepth02">디지털영상[wmv...]</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="N7" id="mediaDepth03" class="input_radio">
                  <label for="mediaDepth03">음반[CD, 레코드판...]</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="D5" id="mediaDepth04" class="input_radio">
                  <label for="mediaDepth04">디지털음원[mp3, wav...]</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="N4" id="mediaDepth05" class="input_radio">
                  <label for="mediaDepth05">컴퓨터파일[CD, DVD...]</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="D4" id="mediaDepth06" class="input_radio">
                  <label for="mediaDepth06">디지털이미지[jpg..]</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="N6" id="mediaDepth07" class="input_radio">
                  <label for="mediaDepth07">마이크로자료[필름..]</label>
                </li>
              </ul>
            </dd>
          </dl>
        </div>
        <div id="disabledDepth" class="classify_depth" style="display: none;"><!-- 자료구분에서 값 선택시 show 해주세요 -->
          <dl>
            <dt>장애인자료</dt>
            <!-- 자료구분에서 선택한 값 이쪽에 넣어주세요 -->
            <dd>
              <ul class="dl_ul">
                <li>
                  <input type="radio" name="typeCode" value="B10" id="disabledDepth01" class="input_radio">
                  <label for="disabledDepth01">점자자료</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="D10" id="disabledDepth02" class="input_radio">
                  <label for="disabledDepth02">장애인대체자료</label>
                </li>
              </ul>
            </dd>
          </dl>
        </div>
        <div id="webDepth" class="classify_depth" style="display: none;"><!-- 자료구분에서 값 선택시 show 해주세요 -->
          <dl>
            <dt>웹정보자료</dt>
            <!-- 자료구분에서 선택한 값 이쪽에 넣어주세요 -->
            <dd>
              <ul class="dl_ul">
                <li>
                  <input type="radio" name="typeCode" value="NL1" id="webDepth01" class="input_radio">
                  <label for="webDepth01">웹콘텐츠</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="D7" id="webDepth02" class="input_radio">
                  <label for="webDepth02">웹사이트</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" value="DCR" id="webDepth03" class="input_radio">
                  <label for="webDepth03">외부수집자료</label>
                </li>
                <li>
                  <input type="radio" name="typeCode" id="webDepth04" class="input_radio">
                  <label for="webDepth04">외부링크자료</label>
                </li>
              </ul>
            </dd>
          </dl>
        </div>
        
        <dl class="detailSrch_location">
          <dt>선택된 자료구분</dt>
          <dd>
            <ul>
              <li id="classify_data01Text">전체</li>
              <li id="classify_depthText"></li>
            </ul>
          </dd>
        </dl>
        <fieldset class="detail_form_fieldset">
        <!-- //카테고리 뎁스 -->
          <legend>도서 상세 검색</legend>
             <div class="detail_btnBox">
              	<p class="worldwordBtn"><a href="#" title="새창으로 열림">다국어 입력기</a></p>
            </div>
          <table class="tblStyle01" summary="표준부호,분류기호,청구기호,한국대학명,판종유형/판종,CIP제어번호">
            <caption class="hide">
            도서 상세 검색
            </caption>
            <colgroup>
            <col width="150">
            <col>
            </colgroup>
            <tbody>
              <tr style="display: table-row;">
                <th scope="row"> <select name="f1" class="select" style="width:100%;" title="검색항목 선택 1">
                    <option value="title">제목</option>
                    <option value="author">저자</option>
                    <option value="publisher">발행자</option>
                    <option value="keyword">키워드</option>
                  </select>
                </th>
                <td><input type="text" name="v1" class="input_txt" style="width:600px;" title="단어입력 1">
                  <select name="and1" class="select fr" style="width:100px;" title="검색조건 선택1">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row"> <select name="f2" class="select" style="width:100%;" title="검색항목 선택 2">
                    <option value="title">제목</option>
                    <option value="author" selected="">저자</option>
                    <option value="publisher">발행자</option>
                    <option value="keyword">키워드</option>
                  </select>
                </th>
                <td><input type="text" name="v2" class="input_txt" style="width:600px;" title="단어입력 2">
                  <select name="and2" class="select fr" style="width:100px;" title="검색조건 선택2">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row"> <select name="f3" class="select" style="width:100%;" title="검색항목 선택 3">
                    <option value="title">제목</option>
                    <option value="author">저자</option>
                    <option value="publisher" selected="">발행자</option>
                    <option value="keyword">키워드</option>
                  </select>
                </th>
                <td><input type="text" name="v3" class="input_txt" style="width:600px;" title="단어입력 3">
                  <select name="and3" class="select fr" style="width:100px;" title="검색조건 선택3">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row"> <select name="f4" class="select" style="width:100%;" title="검색항목 선택 4">
                    <option value="title">제목</option>
                    <option value="author">저자</option>
                    <option value="publisher">발행자</option>
                    <option value="keyword" selected="">키워드</option>
                  </select>
                </th>
                <td><input type="text" name="v4" class="input_txt" style="width:600px;" title="단어입력 4">
                  <select name="and4" class="select fr" style="width:100px;" title="검색조건 선택4">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
			  <tr style="display:none;">
                <th scope="row"> <select name="f5" class="select" style="width:100%;" title="목차,초록 선택">
                    <option value="toc_keyword">목차</option>
                    <option value="abs_keyword">초록</option>
                  </select>
                </th>
                <td><input type="text" name="v5" class="input_txt" style="width:600px;" title="단어입력">
                  <select name="and5" class="select fr" style="width:100px;" title="검색조건 선택">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row"><label>표준부호</label></th>
                <td><select class="select" name="isbnOp" style="width:150px;" title="표준부호 종류">
                    <option value="isbn" selected="selected">ISBN</option>
                    <option value="issn">ISSN</option>
                  </select>
                  <input type="text" name="isbnCode" class="input_txt" style="width:300px;" title="표준부호 입력">
                  <select name="and6" class="select fr" style="width:100px;" title="검색조건 선택">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row"><label for="gu2">분류기호</label></th>
                <td><select name="gu2" class="select" style="width:150px;" id="gu2">
                    <option value="kdc" selected="selected">한국십진분류표</option>
                    <option value="kdcp">한국십진분류표-박봉석편</option>
                    <option value="ddc">듀이십진분류표</option>
                    <option value="cec">조선총독부 신서부분류표</option>
                    <option value="cwc">조선총독부 양서부분류표</option>
                    <option value="coc">조선총독부 고서부분류표</option>
                    <option value="gpo">정부문서분류번호</option>
                  </select>
                  <input type="text" name="guCode2" class="input_txt" style="width:300px;" title="분류기호입력">
                  <a class="link" href="#" onclick="layer_open('kdc_pop');">분류기호 참조</a>
                  <select name="and7" class="select fr" style="width:100px;" title="검색조건 선택">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row">청구기호</th>
                <td><label for="applicationMark01">별치</label>
                  <input type="text" name="guCode3" id="applicationMark01" class="input_txt" style="width:83px;">
                  <a class="link" style="margin-right:15px;" onclick="layer_open('taste_pop');return false;" href="#none">검색</a>
                  <label for="applicationMark02">분류</label>
                  <input type="text" name="guCode4" id="applicationMark02" class="input_txt" style="width:83px; margin-right:15px;">
                  <label for="applicationMark03">도서</label>
                  <input type="text" name="guCode5" id="applicationMark03" class="input_txt" style="width:83px;">
                  <label for="applicationMark04">권책</label>
                  <input type="text" name="guCode6" id="applicationMark04" class="input_txt" style="width:83px;">
                  <select name="and8" class="select fr" style="width:100px;" title="검색조건 선택">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row">한국대학명</th>
                <td><div style="position:absolute;padding:7px;width:135px;height:28px;" onclick="$(this).remove();$('input[name=guCode7]').focus();">코드명</div><input type="text" name="guCode7" class="input_txt" style="width:135px;" title="코드입력">
                  <input type="text" name="gu7" class="input_txt" style="width:300px;" title="대학명 입력">
                  <a class="link" onclick="layer_open('college_pop');return false;" href="#none">대학명 참조</a>
                  <select name="and9" class="select fr" style="width:100px;" title="검색조건 선택">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row">한국정부기관명</th>
                <td><div style="position:absolute;padding:7px;width:135px;height:28px;" onclick="$(this).remove();$('input[name=guCode8]').focus();">코드명</div><input type="text" name="guCode8" class="input_txt" style="width:135px;" title="코드입력">
                  <input type="text" name="gu8" class="input_txt" style="width:300px;" title="한국정부기관명 입력">
                  <a class="link" onclick="layer_open('government_pop');return false;" href="#none">정부기관명 참조</a>
                  <select name="and10" class="select fr" style="width:100px;" title="검색조건 선택">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row"><label for="lb_gu9">판종유형/판종</label></th>
                <td><select name="gu9" class="select" style="width:150px;" id="lb_gu9" onchange="goEdit('/app/nl/search/ajax/editList.jsp',this)">
                    <option value="">적용안함</option>
                    <option value="A">金屬活字本</option>
                    <option value="B">木活字本</option>
                    <option value="C">木版本</option>
                    <option value="D">筆寫本</option>
                    <option value="E">陶活字本</option>
                    <option value="F">匏活字本</option>
                    <option value="G">新鉛活字本</option>
                    <option value="H">石版本</option>
                    <option value="I">拓本</option>
                    <option value="J">油印本</option>
                    <option value="K">影印本</option>
                    <option value="L">寫眞版本</option>
                    <option value="U">未詳</option>
                    <option value="Z">其他</option>
                  </select>
                  <select id="gu10" name="gu10" class="select" style="width:150px;" title="적용유무 선택">
                    <option value="">적용안함</option>
                  </select>
                  <select name="and11" class="select fr" style="width:100px;" title="검색조건 선택">
                    <option value="and">AND</option>
                    <option value="or">OR</option>
                    <option value="not">NOT</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row"><label for="guCode11">CIP제어번호</label></th>
                <td><input type="text" name="guCode11" class="input_txt" style="width:135px;" id="guCode11" title="cip제어번호 입력"></td>
              </tr>
            </tbody>
          </table>
          <table class="tblStyle01" summary="본문언어,요약언어,쪽당출력건수,간행빈도,자료형태,발행년도">
            <caption class="hide">
            도서 상세 검색
            </caption>
            <colgroup>
            <col width="150">
            <col>
            <col width="150">
            <col>
            </colgroup>
            <tbody>
              <tr style="display: table-row;">
                <th scope="row"><label for="lb_gu12">본문언어</label></th>
                <td><select name="gu12" class="select" style="width:150px;" id="lb_gu12">
                    <option value="" selected="selected">전체</option>
                    <option value="kor">한국어</option>
                    <option value="eng">영어</option>
                    <option value="jpn">일본어</option>
                    <option value="chi">중국어</option>
                    <option value="dut">독일어</option>
                    <option value="fre">프랑스어</option>
                    <option value="ita">이탈리아어</option>
                    <option value="rus">러시아어</option>
                    <option value="spa">스페인어</option>
                  </select></td>
                <th scope="row"><label for="lb_gu13">요약언어</label></th>
                <td><select name="gu13" class="select" style="width:150px;" id="lb_gu13">
                    <option value="" selected="selected">전체</option>
                    <option value="kor">한국어</option>
                    <option value="eng">영어</option>
                    <option value="jpn">일본어</option>
                    <option value="chi">중국어</option>
                    <option value="dut">독일어</option>
                    <option value="fre">프랑스어</option>
                    <option value="ita">이탈리아어</option>
                    <option value="rus">러시아어</option>
                    <option value="spa">스페인어</option>
                  </select></td>
              </tr>
              <tr style="display: table-row;">
                <th scope="row"><label for="lb_pageSize">쪽당출력건수</label></th>
                <td><select name="pageSize" class="select" style="width:150px;" id="lb_pageSize">
                    <option value="30">30</option>
                    <option value="30">50</option>
                    <option value="30">100</option>
                  </select></td>
                <th scope="row"><label for="lb_gu14">간행빈도</label></th>
                <td><select name="gu14" class="select" style="width:150px;" id="lb_gu14">
                    <option value="">전체</option>
                    <option value="-">부정기간</option>
                    <option value="a">연간</option>
                    <option value="b">격월간</option>
                    <option value="c">주2회간</option>
                    <option value="d">일간</option>
                    <option value="e">격주간</option>
                    <option value="f">반년간</option>
                    <option value="g">격년간</option>
                    <option value="h">3년1회간</option>
                    <option value="i">주3간</option>
                    <option value="j">월3간</option>
                    <option value="m">월간</option>
                    <option value="q">계간</option>
                    <option value="s">반월간</option>
                    <option value="t">연3회간</option>
                    <option value="u">불명</option>
                    <option value="w">주간</option>
                    <option value="z">기타</option>
                  </select></td>
              </tr>
              <tr style="border-bottom: 1px solid rgb(204, 204, 204); display: table-row;">
                <th scope="row" style="border-bottom:#ccc 1px solid"><label for="lb_gu16">자료이용하는 곳</label></th>
                <td style="border-bottom:#ccc 1px solid"><select name="gu16" class="select" style="width:150px;" id="lb_gu16">
                    <option value="">적용안함</option>
                    <option value="132">연속간행물실</option>
					<option value="143">자연과학실</option>
					<option value="142">사회과학실</option>
					<option value="124">문학실	</option>
					<option value="005">보존용자료(미디어자료이용실)</option>
					<option value="167">분관</option>
					<option value="415">디지털열람실</option>
					<option value="127">문학실(근대문학)</option>
					<option value="157">지도자료실(개인문고)</option>
					<option value="171">개인문고실</option>
					<option value="145">인문과학실</option>
					<option value="414">비도서자가대출기</option>
					<option value="155">문헌정보학실</option>
					<option value="133">정부간행물실</option>
					<option value="233">정부간행물실(서고)</option>
					<option value="413">미디어자료이용실</option>
					<option value="173">학위논문실(5층)</option>
					<option value="172">고문헌실</option>
					<option value="104">귀중본서고</option>
					<option value="501">장애인정보누리터</option>
					<option value="000">보존용자료(예약-익일이용)</option>
					<option value="100">서고자료신청대</option>
					<option value="128">해외영인자료실</option>
					<option value="006">NDL신문서고</option>
					<option value="296">학위논문실(서고)</option>
					<option value="136">기탁자료실(국제기구)</option>
					<option value="134">신문자료실</option>
					<option value="154">특수자료실</option>
					<option value="125">북한자료센터(5층)</option>
					<option value="156">지도자료실(5층)</option>
					<option value="173">학위논문실</option>
					<option value="002">고전운영실(보존)</option>
					<option value="102">근대문학(서고)</option>
					<option value="113">정보봉사실</option>
                  </select></td>
                <th scope="row">발행년도</th>
                <td style="border-bottom:#ccc 1px solid"><input type="text" name="sYear" class="input_txt" title="시작년도" style="width:50px;">
                  <span class="txtBox">년 부터</span>
                  <input type="text" name="eYear" class="input_txt" title="끝년도" style="width:50px;"></td>
              </tr>
			  <tr style="display: none;">
                <th scope="row">소장기관</th>
                <td colspan="3"><input type="text" name="lib" class="input_txt" style="width:435px;" title="소장기관 입력">            
                  <a class="link" onclick="layer_open('korcisLib_pop');return false;" href="#none">검색</a>
                  </td>
              </tr>		
			  <tr style="display: none;">
				<th scope="row">판종유형/판종</th>
				<td colspan="3">
				<select id="context_type" class="select" title="판종유형/판종" onchange="change_the('edit');" name="context_type">
					<option value="">적용안함</option>
					<option value="A">金屬活字本</option>
					<option value="B">木活字本</option>
					<option value="C">木版本</option>
					<option value="D">筆寫本</option>
					<option value="E">陶活字本</option>
					<option value="F">匏活字本</option>
					<option value="G">新鉛活字本</option>
					<option value="H">石版本</option>
					<option value="I">拓本</option>
					<option value="J">油印本</option>
					<option value="K">影印本</option>
					<option value="L">寫眞版本</option>
					<option value="U">未詳</option>
					<option value="Z">其他</option>
				</select>
				<select id="edit" class="select" title="적용유무 선택" name="edit">
					<option value="">적용안함</option>
				</select>
				</td>
              </tr>
				<tr style="display: none;">
				<th scope="row">내용형식</th>
				<td colspan="3">
				<select id="ct" class="select" title="내용형식" name="ct">
					<option value="">적용안함</option>
					<option value="b">서지(書誌)</option>
					<option value="c">문집(文集)</option>
					<option value="d">운서(韻書)</option>
					<option value="e">법전(法典)</option>
					<option value="g">서화(書畵)</option>
					<option value="h">금석문(金石文)</option>
					<option value="i">방목(榜目),관안(官案)</option>
					<option value="j">족보(族譜),계보(系譜),세보(世譜)</option>
					<option value="m">불전(佛典)</option>
					<option value="o">주석(註釋),평주(評註),해제(解題)</option>
					<option value="p">조약집(條約集),외교문서(外交文書)</option>
					<option value="s">통계(統計)</option>
					<option value="t">경전(經典)</option>
					<option value="v">지지(地誌)</option>
					<option value="w">지도(地圖)</option>
					<option value="x">고문서(古文書)</option>
				</select>
				</td>
              </tr>
            </tbody>
          </table>          
        </fieldset>
        <div class="detailSrch_btnBox_bottom">
          <ul>
			<li><a href="#" onclick="goDetailClear(); return false;">화면 지우기</a></li>
            <li><a class="btn_blue" href="#" onclick="goDetailSearch(); return false;">상세검색</a></li>
            <li><a class="close" href="#">닫기</a></li>
          </ul>
        </div>
      </div>
    </form>
    <!-- //상세검색 --> 
	  
  </div>
  <!-- detailSearchBox --> 
</div>
</body>
</html>