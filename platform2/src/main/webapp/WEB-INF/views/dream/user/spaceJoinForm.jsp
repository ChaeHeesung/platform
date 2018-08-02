<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>	
<!DOCTYPE html>
<html>
<head>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title> 알바몬(albamon.com) | 잡코리아가 만든 아르바이트 No.1</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="keywords" content="아르바이트, 알바, 알바몬, 잡코리아, 알바정보, 알바생, 취업, 이력서, 구인, 구직, 구인구직, 채용, 파트타임, 프리랜서, 생활직, 주말알바, 단기알바, 장기알바, 재택알바, 대학생 알바, 청소년 알바, 이색알바, 부업, 투잡스, 프리터, 지역별 알바, 업직종별 알바, 급여별 알바, 알바경험담, 알바뉴스, 취업뉴스, 서빙, 편의점, 백화점, PC방, 디자인, 프로그래머, 전단지, 프렌차이즈, 노동, 배달, 운전, 강사, 학원강사, 사무, 번역, 고객상담, 텔레마케팅, 이벤트 도우미, 단순노동, 부산아르바이트, 부산알바, 대구아르바이트, 대구알바, 대전아르바이트, 대전알바, 부업거리, 투잡, 재택부업">
<meta name="description" content="아르바이트 랭킹 1위 알바몬은 잡코리아가 만든 아르바이트 구인구직 전문 사이트로 지역별, 업직종별, 급여별, 역세권별, 대학가별, 근무기간별로 다양하고 풍부한 아르바이트 구인구직 정보를 제공하고 있습니다.">
    <meta name="verify-v1" content="wfOOCE9Vtx+Z5etOXJnS9LU03yGpBxkK74T/yU63Xqs=">
    <meta name="google-site-verification" content="bW1GPZaAwejfuXiTsR95ZEiWPJqUllHFm6hqLLdIfVI">
    <meta name="naver-site-verification" content="076d15d3b5ac12d6f51bf3e9fa6c3b28004960ff">
    <meta name="msvalidate.01" content="BB3D65CCBE8757FF4F5840D123D1C36B">

        <meta name="robots" content="noindex, nofollow">
        <meta name="robots" content="noarchive">
        <meta name="googlebot" content="nosnippet">


    <link rel="shortcut icon" href="/favicon.ico">
    <link rel="stylesheet" type="text/css" href="https://contents.albamon.kr/css/ver_1/join_style.css?636666694483460463">
<script src="/resources/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

function goPopup(){
	var pop = window.open("/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.joinFrm.addr.value = roadAddrPart1;
	document.joinFrm.addrDetail.value = addrDetail;
	document.joinFrm.zipNo.value = zipNo;
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
	        	//console.log(data);
	        	document.joinFrm.dong_cd.value = data.dong_cd;
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
				address : jibunAddr
			}
			, async : false
			// , beforeSend: function(xhr){
			//	xhr.setRequestHeader(header, token);	// 헤드의 csrf meta태그를 읽어 CSRF 토큰 함께 전송
			//}
			, success : function(data){
				console.log(data);
				document.joinFrm.coordinateX.value = data.result.items[0].point.x;
				document.joinFrm.coordinateY.value = data.result.items[0].point.y;
				//console.log(data);
				//console.log(data.result.items[0].point.x);
			}
		})
	})

}





$(function(){
	
	
	$('#emailDomainS').change(function(){
		$('input[id=emailDomaina]').attr('value',this.value);
		if(this.value == "naver.com") {
			$('input[id=emailDomain]').attr('value',1);
		}
		if(this.value == "hanmail.net") {
			$('input[id=emailDomain]').attr('value',2);
		}
		if(this.value == "nate.com") {
			$('input[id=emailDomain]').attr('value',3);
		}
		if(this.value == "daum.net") {
			$('input[id=emailDomain]').attr('value',4);
		}
		if(this.value == "hotmail.com") {
			$('input[id=emailDomain]').attr('value',5);
		}
		if(this.value == "dreamwiz.com") {
			$('input[id=emailDomain]').attr('value',6);
		}
		if(this.value == "gmail.com") {
			$('input[id=emailDomain]').attr('value',7);
		} else {
			$('input[id=emailDomain]').attr('value',1);
		}
		
	})
	
	
	
	
})

function checkId(){
	var frm = $("#joinFrm")[0];
	var id = frm.id.value;
	$.ajax({
		
        type : "POST",
        url : "/checkJoin",
        async: false,
        data : {
        	id : id
        },
        success : function(data){
        	if(data == true) {
        		$('#checkIdText').css("visibility", "visible");
            	$('#checkIdText').text("사용가능한 아이디입니다.");
        	} else {
        		$('#checkIdText').css("visibility", "visible");
        		$('#checkIdText').text("중복된 아이디입니다.");
        	}
        }
	})
}

function checkForm(){
	
	var frm = $("#joinFrm")[0];
	var checkedId = frm.checkedId.value;
	var pw = frm.pw.value;
	var pw2 = frm.pw2.value;

	if(checkedId == "false") {
		return false;
	}
	
	if(pw != pw2) {
		alert('비밀번호가 다릅니다.');
		return false;
	}
	
	
	return true;
	
	
}


function formSubmit(){
	var frm = $("#joinFrm")[0];
	var checkedId = frm.checkedId.value;
	var pw = frm.pw.value;
	var pw2 = frm.pw2.value;

	if(checkedId == "false") {
		return null;
	}
	
	if(pw != pw2) {
		alert('비밀번호가 다릅니다.');
		return null;
	}
	
	
	var birthYear = frm.birthYear.value;
	var birthMonth = frm.birthMonth.value;
	var birthDay = frm.birthDay.value;
	
	var birth = new Date(birthYear, birthMonth, birthDay);
	frm.birth.value = birth;
	frm.submit();
}
</script>
<body id="">
    	<div id="accessibility">
		<p>
			<a href="#container">컨텐츠 바로가기</a>
		</p>
	</div>

	<div id="wrap">
		<!-- header -->

		<div id="header">
			<div id="gnb">
				<h1>
					<a href="/dream/"><span style="color: black;">그꿈전공생</span></a>

				</h1>

				<ul class="lnb">
					<li><a href="/">홈</a></li>
					<li><a href="/recruit">예술정보</a></li>
					<li><a href="/ResumeSearch">공간정보</a></li>
					<li><a href="/community/tb_main">갤러리</a></li>
					<li><a href="/">고객센터</a>
					</li>

				</ul>


			</div>
		</div>
		<!-- //header -->
            <!-- container -->
            <div id="container">
                




<div id="content">
    <!--// 회원가입 -->
    <div class="monLeave monUserJoin joinPerson">
        <h1>공간전공생 회원 가입</h1>
        <input type="hidden" name="historyCert" id="historyCert">

			<form action="/dream/user/spacejoin" id="joinFrm" method="post" name="joinFrm" onsubmit="return checkForm()">
            <div class="inner">
                <div class="user_join_agree">
                    <input type="checkbox" name="user_all_agree" id="agreeChkAll" value=""><label for="agreeChkAll">가입 전체약관 및 안내정보 수신에 동의합니다.</label>
                </div>
                <div class="join_dot"></div>
                <div class="user_join_agree agrSelect">
                    <input type="checkbox" name="Agree1" id="agreeChk_0" value="on"><label for="agreeChk_0"><span>[필수]</span> 서비스 이용약관 동의</label>
                    <div class="toggle_terms"><a href="#">내용보기<span></span></a></div>
                    <div class="agree_terms" style="height: 0px;">
                        <p>개정일자 : 2017년 9월 25일</p>
                        <dl>
                            <dt>제1조 (목적)</dt>
                            <dd>본 약관은 잡코리아 유한회사 (이하 "회사")가 운영하는 "서비스"를 이용함에 있어 "회사"와 회원간의 이용 조건 및 제반 절차, 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 한다.</dd>
                            <dt>제2조 (용어의 정의)</dt>
                            <dd>
                                이 약관에서 사용하는 용어의 정의는 아래와 같다.
                                <ol>
                                    <li>
                                        ① "사이트"라 함은 회사가 서비스를 "회원"에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트, 모바일웹, 앱 등의 서비스를 제공하는 모든 매체를 통칭하며, 통합된 하나의 회원 계정(아이디 및 비밀번호)을 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 말한다.
                                        <ul>
                                            <li>- www.jobkorea.co.kr </li>
                                            <li>- www.albamon.com</li>
                                            <li>- www.campusmon.com</li>
                                            <li>- m.jobkorea.co.kr</li>
                                            <li>- m.albamon.com</li>
                                        </ul>
                                    </li>
                                    <li>② "서비스"라 함은 회사가 운영하는 사이트를 통해 개인이 구직, 교육 등의 목적으로 등록하는 자료를 DB화하여 각각의 목적에 맞게 분류 가공, 집계하여 정보를 제공하는 서비스와 사이트에서 제공하는 모든 부대 서비스를 말한다.</li>
                                    <li>③ "회원"이라 함은 "회사"가 제공하는 서비스를 이용하거나 이용하려는 자로, 페이스북 등 외부 서비스 연동을 통해 "회사"와 이용계약을 체결한자 또는 체결하려는 자를 포함하며, 아이디와 비밀번호의 설정 등 회원가입 절차를 거쳐 회원가입확인 이메일 등을 통해 회사로부터 회원으로 인정받은 "개인회원"을 말한다.</li>
                                    <li>④ "아이디"라 함은 회원가입시 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 "회사"가 부여하는 문자와 숫자의 조합을 말한다.</li>
                                    <li>⑤ "비밀번호"라 함은 위 제4항에 따라 회원이 회원가입시 아이디를 설정하면서 아이디를 부여받은 자와 동일인임을 확인하고 "회원"의 정보 등을 보호하기 위하여 "회원"이 선정한 문자와 숫자의 조합을 말한다.</li>
                                    <li>⑥ "비회원"이라 함은 회원가입절차를 거치지 않고 "회사"가 제공하는 서비스를 이용하거나 하려는 자를 말한다.</li>
                                </ol>
                            </dd>
                            <dt>제3조 (약관의 명시와 개정)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"는 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자등록번호, 연락처 등을 이용자가 알 수 있도록 초기 화면에 게시하거나 기타의 방법으로 이용자에게 공지해야 한다.</li>
                                    <li>② "회사"는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있다.</li>
                                    <li>③ "회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 그 개정약관의 적용일자 7일 전부터 적용일자 전일까지 공지한다. 단 "회원"의 권리, 의무에 중대한 영향을 주는 변경의 경우에는 적용일자 30일 전부터 공지하도록 한다.</li>
                                    <li>④ "회원"은 변경된 약관에 대해 거부할 권리가 있다. "회원"은 변경된 시점으로부터 15일 이내에 거부의사를 표명할 수 있다. "회원"이 거부하는 경우 본 서비스 제공자인 "회사"는 15일의 기간을 정하여 "회원"에게 사전 통지 후 당해 "회원"과의 계약을 해지할 수 있다. 만약, "회원"이 거부의사를 표시하지 않거나, 전항에 따라 시행일 이후에 "서비스"를 이용하는 경우에는 동의한 것으로 간주한다.</li>
                                </ol>
                            </dd>
                            <dt>제4조 (약관의 해석)</dt>
                            <dd>
                                <ol>
                                    <li>① 이 약관에서 규정하지 않은 사항에 관해서는 약관의 규제에 관한 법률, 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등의 관계법령에 따른다.</li>
                                    <li>② 각 사이트 및 서비스 이용약관이 있는 경우에는 서비스 이용약관이 우선한다.</li>
                                    <li>③ "회원"이 "회사"와 개별 계약을 체결하여 서비스를 이용하는 경우에는 개별 계약이 우선한다.</li>
                                </ol>
                            </dd>
                            <dt>제 5 조 (이용계약의 성립)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"의 서비스 이용계약(이하 '이용계약')은 서비스를 이용하고자 하는 자가 본 약관과 개인정보처리방침을 읽고 "동의" 또는 "확인" 버튼을 누른 경우 본 약관에 동의한 것으로 간주한다. </li>
                                    <li>② 제1항 신청에 있어 "회사"는 "회원"의 종류에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있으며, "회원"은 본인인증에 필요한 이름, 생년월일, 연락처 등을 제공하여야 한다. </li>
                                    <li>③ "회원"이 이용신청(회원가입 신청) 작성 후에 "회사"가 웹상의 안내 및 전자메일로 "회원"에게 통지함으로써 이용계약이 성립된다.</li>
                                    <li>④페이스북 등 외부 서비스와의 연동을 통해 이용계약을 신청할 경우, 본 약관과 개인정보처리방침, 서비스 제공을 위해 "회사"가 "회원"의 외부 서비스 계정 정보 접근 및 활용에 "동의" 또는 "확인" 버튼을 누르면 "회사"가 웹상의 안내 및 전자메일로 "회원"에게 통지함으로써 이용계약이 성립된다. </li>
                                </ol>
                            </dd>
                            <dt>제6조 (이용신청의 승낙과 제한)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"는 전조의 규정에 의한 이용신청 고객에 대하여 업무수행상 또는 기술상 지장이 없는 경우에는 원칙적으로 접수순서에 따라 서비스 이용을 승낙한다.</li>
                                    <li>
                                        ② "회사"는 아래사항에 해당하는 경우에 대해서는 서비스 이용신청을 승낙하지 아니한다.
                                        <ol>
                                            <li>1. 실명이 아니거나 타인의 명의를 이용하여 신청한 경우</li>
                                            <li>2. 이용계약 신청서의 내용을 허위로 기재하거나 "회사"가 제시하는 내용을 기재하지 않은 경우</li>
                                            <li>3. 만 15세 미만의 아동이 신청한 경우. 다만, 만 13세 이상 만 15세 미만의 아동으로서 노동부장관 발행의 취업인허증이 있는 경우에는 그러하지 아니한다.</li>
                                            <li>4. 이용자의 귀책사유로 인하여 승인이 불가능하거나 기타 규정한 제반 사항을 위반하며 신청하는 경우 </li>
                                        </ol>
                                    </li>
                                    <li>
                                        ③ "회사"는 아래사항에 해당하는 경우에는 그 신청에 대하여 승낙제한 사유가 해소될 때까지 승낙을 유보할 수 있다.
                                        <ol>
                                            <li> 1. "회사"가 설비의 여유가 없는 경우</li>
                                            <li> 2. "회사"의 기술상 지장이 있는 경우</li>
                                            <li> 3. 기타 "회사"의 귀책사유로 이용승낙이 곤란한 경우</li>
                                        </ol>
                                    </li>
                                </ol>
                            </dd>
                            <dt>제7조 (서비스의 내용)</dt>
                            <dd>
                                <ol>
                                    <li>
                                        ① "회사"는 제2조 2항의 서비스를 제공할 수 있으며 그 내용은 다음 각 호와 같다.
                                        <ol>
                                            <li>1. 이력서 등록 및 인재정보 게재 서비스</li>
                                            <li>2. 온라인 입사지원 서비스</li>
                                            <li>3. 헤드헌팅/아웃소싱 서비스</li>
                                            <li>4. 구인/구직과 관련된 제반 서비스</li>
                                            <li>5. 교육과 관련된 제반 서비스</li>
                                            <li>6. 이용자간의 교류와 소통에 관련한 서비스</li>
                                            <li>7. 자료거래에 관련한 서비스</li>
                                            <li>8. 기타 "회사"가 추가 개발, 편집, 재구성하거나 제휴계약 등을 통해 "회원"에게 제공하는 일체의 서비스</li>
                                        </ol>
                                    </li>
                                    <li>② "회사"는 필요한 경우 서비스의 내용을 추가 또는 변경할 수 있다. 단, 이 경우 "회사"는 추가 또는 변경내용을 회원에게 공지해야 한다.</li>
                                </ol>
                            </dd>
                            <dt>제8조 (회원, 이력서 정보)</dt>
                            <dd>
                                <ol>
                                    <li>① "회원"의 이력서는 개인이 회원가입 또는 이력서 작성 및 수정시 희망한 형태로 등록 및 제공된다.</li>
                                    <li>② "회사"는 "회원"이 이력서의 인재정보 등록/미등록 지정, 이력서상의 연락처 제공 여부를 자유롭게 선택할 수 있도록 하여야 한다.</li>
                                    <li>③ "회사"는 "회원"이 이력서의 인재정보 등록 및 제공을 희망했을 경우, 기업회원, 서치펌회원 및 파견대행회원의 이력서 열람에 동의한 것으로 간주하며 "회사"는 이들 회원에게 유료로 이력서 열람 서비스를 제공할 수 있다. 다만, 연락처 각 항목이 비공개로 지정된 경우 해당 항목별 연락처를 노출할 수 없다.</li>
                                    <li>④ "회사"는 "회원"이 교육에 대한 상담을 원할 경우 "회사"의 교육기관회원에게 "회원"의 전자우편 주소를 노출할 수 있으며 교육기관회원 으로부터 정보 수신을 정보의 수신을 원할 경우 교육기관회원에게 연락처를 공개할 수 있다.</li>
                                    <li>⑤ "회사"는 안정적인 서비스를 제공하기 위해 테스트 및 모니터링 용도로 "사이트" 운영자가 이력서 정보를 열람하도록 할 수 있다.</li>
                                    <li>⑥ "회사"는 "회원"의 자유로운 선택에 의하여 등록 및 제공되는 이력서의 정보를 기준(바탕)으로 구직활동에 보다 유익한 서비스를 제공하기 위하여 이를 개발, 편집, 재구성한 통계 자료로 활용 할 수 있다.</li>
                                </ol>
                            </dd>
                            <dt>제9조 (제휴를 통한 서비스)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"는 제휴 관계를 체결한 여타 인터넷 웹 사이트 및 채용박람회 또는 신문, 잡지 등의 오프라인 매체를 통해 사이트에 등록한 "회원"의 이력서 정보가 열람될 수 있도록 서비스를 제공할 수 있다. 단, 제휴 서비스를 통해 노출되는 이력서의 연락처 정보는 제9조의 각 항에 따른다.</li>
                                    <li>② "회사"는 제휴를 통해 타 사이트 및 매체에 등록될 수 있음을 고지해야 하며, 제휴 사이트 목록을 사이트내에서 상시 열람할 수 있도록 해야 한다. 단, 등록의 형태가 "회사"가 직접 구축하지 않고, 제휴사가 xml 또는 api 형태로 "회사"로부터 제공 받아 구축한 매체 목록은 본 약관 외 별도의 제휴 리스트에서 열람할 수 있도록 한다.</li>
                                    <li>③ "회사"는 사이트와 제휴를 통해 회원이 공개를 요청한 이력서에 한해 이력서 정보를 제공한다.(단, 본 약관 시행일 현재에는 제휴를 통한 타 사이트 및 매체는 없다.)</li>
                                    <li>④ "제 9조 ③호“ 제휴를 통한 사이트의 변동사항 발생 시 공지사항을 통해 고지 후 진행 한다.</li>
                                </ol>
                            </dd>
                            <dt>제10조 (서비스의 요금)</dt>
                            <dd>
                                <ol>
                                    <li>① "회원" 가입과 이력서 등록은 무료이다. 다만 기업회원 또는 사이트에 방문한 기업체에게 자신의 이력서 정보를 보다 효과적으로 노출시키기 위한 유료서비스 및 인성, 적성 검사 등 회원 가입 목적 외 기타 서비스를 이용하기 위한 별도의 서비스는 유료로 제공될 수 있다.</li>
                                    <li>② "회사"는 유료서비스를 제공할 경우 사이트에 요금에 대해서 공지를 하여야 한다.</li>
                                    <li>③ "회사"는 유료서비스 이용금액을 서비스의 종류 및 기간에 따라 "회사"가 예고 없이 변경할 수 있다. 다만, 변경 이전에 적용 또는 계약한 금액은 소급하여 적용하지 아니한다.</li>
                                    <li>④ 유료 서비스 신청 후 "회원" 사정에 의해 서비스가 취소될 경우, 정부가 고시하는 '디지털콘텐츠 이용자보호지침'에 따라 "회사"는 본 지침이 제시하는 범위 내에서 환불 수수료를 부과할 수 있다.	</li>
                                </ol>
                            </dd>
                            <dt>제11조 (e-머니 규정)</dt>
                            <dd>
                                <ol>
                                    <li>① e-머니는 유료상품 구매 시의 사은, 이벤트, 고객보상 등의 사유로 적립된다.'적립된 e-머니'는 유료상품 결제시 사용할 수 있으며, 현금으로 출금되지 않는다.</li>
                                    <li>② 위의 적립사유가 해제되었을 경우 ‘적립된 e-머니’를 회원보유분에서 회수하며, 결제 시 사용한 서비스를 취소할 경우 사용분에 해당하는 e-머니를 제외하고 사용이전의 상태로 재적립 받을 수 있다.</li>
                                    <li>③ 서비스 운영 정책에 따라 e-머니의 상품별 적립기준, 적립비율, 사용조건 및 제한 등은 달라질 수 있으며, 이에 대한 사항은 서비스 화면에 게시하거나 통지한다. e-머니 적립 시 별도의 유효기간을 정한 바가 없으면 적립일로부터 12개월의 유효기간을 보장한다.</li>
                                    <li>④ e-머니의 적립시점과 무관하게 유효기간이 지나거나, 회원이 12개월 동안 사이트에 로그인 하지 않을 경우, 회원이 가입해지한 경우, 제19조 ②항에 의해 가입해지하거나 서비스가 중지된 경우 e-머니는 전액 자동소멸되어 복구되지 않는다.</li>
                                </ol>
                            </dd>
                            <dt>제12조 (서비스 이용시간)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"는 특별한 사유가 없는 한 연중무휴, 1일 24시간 서비스를 제공한다. 다만, "회사"는 서비스의 종류나 성질에 따라 제공하는 서비스 중 일부에 대해서는 별도로 이용시간을 정할 수 있으며, 이 경우 "회사"는 그 이용시간을 사전에 회원에게 공지 또는 통지하여야 한다.</li>
                                    <li>② "회사"는 자료의 가공과 갱신을 위한 시스템 작업시간, 장애 해결을 위한 보수작업 시간, 정기 PM 작업, 시스템 교체작업, 회선 장애 등이 발생한 경우 일시적으로 서비스를 중단할 수 있으며 계획된 작업의 경우 공지란에 서비스 중단 시간과 작업 내용을 알려야 한다. 다만, "회사"가 사전에 통지할 수 없는 부득이한 사유가 있는 경우 사후에 통지할 수 있다.</li>
                                </ol>
                            </dd>
                            <dt>제13조 (서비스 제공의 중지)</dt>
                            <dd>
                                <ol>
                                    <li>
                                        ① "회사"는 다음 각 호에 해당하는 경우 서비스의 제공을 중지할 수 있다.
                                        <ol>
                                            <li>1. 설비의 보수 등 "회사"의 필요에 의해 사전에 회원들에게 통지한 경우</li>
                                            <li>2. 기간통신사업자가 전기통신서비스 제공을 중지하는 경우</li>
                                            <li>3. 기타 불가항력적인 사유에 의해 서비스 제공이 객관적으로 불가능한 경우</li>
                                        </ol>
                                    </li>
                                    <li>② 전항의 경우, "회사"는 기간의 정함이 있는 유료서비스 이용자들에게는 그 이용기간을 연장하거나 환불 등의 방법으로 손실을 보상하여야 한다.</li>
                                </ol>
                            </dd>
                            <dt>제14조 (정보의 제공 및 광고의 게재)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"는 "회원"에게 서비스 이용에 필요가 있다고 인정되거나 서비스 개선 및 회원대상의 서비스 소개 등의 목적으로 하는 각종 정보에 대해서 전자우편이나 서신우편을 이용한 방법으로 제공할 수 있다.</li>
                                    <li>② "회사"는 제공하는 서비스와 관련되는 정보 또는 광고를 서비스 화면, 홈페이지, 전자우편 등에 게재할 수 있으며, 광고가 게재된 전자우편을 수신한 “회원”은 수신거절을 “회사”에게 할 수 있다.</li>
                                    <li>③ "회사"는 서비스상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래를 함으로써 발생하는 모든 손실과 손해에 대해 책임을 지지 않는다.</li>
                                    <li>④ 본 서비스의 "회원"은 서비스 이용 시 노출되는 광고게재에 대해 동의 하는 것으로 간주한다.</li>
                                </ol>
                            </dd>
                            <dt>제15조 (자료내용의 책임과 "회사"의 정보 수정 권한)</dt>
                            <dd>
                                <ol>
                                    <li>① 자료내용은 "회원"이 등록한 개인정보 및 이력서와 사이트에 게시한 게시물을 말한다.</li>
                                    <li>② "회원"은 자료 내용 및 게시물을 사실에 근거하여 성실하게 작성해야 하며, 만일 자료의 내용이 사실이 아니거나 부정확하게 작성되어 발생하는 모든 책임은 "회원"에게 있다.</li>
                                    <li>③ 모든 자료내용의 관리와 작성은 "회원" 본인이 하는 것이 원칙이나 사정상 위탁 또는 대행관리를 하더라도 자료내용의 책임은 "회원"에게 있으며 "회원"은 주기적으로 자신의 자료를 확인하여 항상 정확하게 관리가 되도록 노력해야 한다.</li>
                                    <li>④ "회사"는 "회원"이 등록한 자료 내용에 오자, 탈자 또는 사회적 통념에 어긋나는 문구와 내용이 있을 경우 이를 언제든지 수정할 수 있다.</li>
                                    <li>⑤ "회원"이 등록한 자료로 인해 타인(또는 타법인)으로부터 허위사실 및 명예훼손 등으로 삭제 요청이 접수된 경우 "회사"는 "회원"에게 사전 통지 없이 본 자료를 삭제할 수 있으며 삭제 후 메일 등의 방법으로 통지할 수 있다.</li>
                                </ol>
                            </dd>
                            <dt>제16조 (자료 내용의 활용 및 취급)</dt>
                            <dd>
                                <ol>
                                    <li>① "회원"이 선택하거나 입력한 정보는 취업 및 관련 동향의 통계 자료로 구성, 활용될 수 있으며 그 자료는 매체를 통한 언론 배포 또는 제휴사에게 제공될 수 있다. 단, 개인을 식별할 수 있는 형태가 아니어야 한다.</li>
                                    <li>② '사이트'에서 정당한 절차를 거쳐 기업회원, 서치펌회원 및 파견대행회원 등이 열람한 "회원"의 이력서 정보는 해당 기업의 인사자료이며 이에 대한 관리 권한은 해당 기업의 정책에 의한다.</li>
                                    <li>③ "회사"는 '사이트'의 온라인 입사지원 시스템을 통해 지원한 "회원"의 이력서 열람 여부 및 기업회원이 제공한 채용정보에 입사지원한 구직자들의 각종 통계데이터를 "회원"에게 제공할 수 있다.</li>
                                </ol>
                            </dd>
                            <dt>제17조 ("회사"의 의무)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"는 본 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 수 있도록 최선의 노력을 다해야 한다.</li>
                                    <li>② "회사"는 서비스와 관련한 "회원"의 불만사항이 접수되는 경우 이를 즉시 처리하여야 하며, 즉시 처리가 곤란한 경우에는 그 사유와 처리일정을 서비스 화면 또는 기타 방법을 통해 동 "회원"에게 통지하여야 한다.</li>
                                    <li>③ "회사"는 유료 결제와 관련한 결제 사항 정보를 1년 이상 보존한다. 다만 회원 자격이 없는 회원은 예외로 한다.</li>
                                    <li>④ 천재지변 등 예측하지 못한 일이 발생하거나 시스템의 장애가 발생하여 서비스가 중단될 경우 이에 대한 손해에 대해서는 "회사"가 책임을 지지 않는다. 다만 자료의 복구나 정상적인 서비스 지원이 되도록 최선을 다할 의무를 진다.</li>
                                    <li>⑤ "회원"의 자료를 본 서비스 이외의 목적으로 제3자에게 제공하거나 열람시킬 경우 반드시 "회원"의 동의를 얻어야 한다.</li>
                                </ol>
                            </dd>
                            <dt>제18조 ("회원"의 의무)</dt>
                            <dd>
                                <ol>
                                    <li>① "회원"은 관계법령과 본 약관의 규정 및 기타 "회사"가 통지하는 사항을 준수하여야 하며, 기타 "회사"의 업무에 방해되는 행위를 해서는 안 된다.</li>
                                    <li>② "회원"이 신청한 유료서비스는 등록 또는 신청과 동시에 "회사"와 채권, 채무 관계가 발생하며, "회원"은 이에 대한 요금을 지정한 기일 내에 납부하여야 한다.</li>
                                    <li>③ "회원"이 결제 수단으로 신용카드를 사용할 경우 비밀번호 등 정보 유실 방지는 "회원" 스스로 관리해야 한다. 단, 사이트의 결함에 따른 정보유실의 발생에 대한 책임은 "회원"의 의무에 해당하지 아니한다.</li>
                                    <li>④ "회원"은 서비스를 이용하여 얻은 정보를 "회사"의 사전동의 없이 복사, 복제, 번역, 출판, 방송 기타의 방법으로 사용하거나 이를 타인에게 제공할 수 없다.</li>
                                    <li>
                                        ⑤ "회원"은 본 서비스를 건전한 취업 및 경력관리 이외의 목적으로 사용해서는 안되며 이용 중 다음 각 호의 행위를 해서는 안 된다.
                                        <ol>
                                            <li>1. 다른 회원의 아이디를 부정 사용하는 행위</li>
                                            <li>2. 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위</li>
                                            <li>3. 타인의 명예를 훼손하거나 모욕하는 행위</li>
                                            <li>4. 타인의 지적재산권 등의 권리를 침해하는 행위</li>
                                            <li>5. 해킹행위 또는 바이러스의 유포 행위</li>
                                            <li>6. 타인의 의사에 반하여 광고성 정보 등 일정한 내용을 계속적으로 전송하는 행위</li>
                                            <li>7. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있다고 판단되는 행위</li>
                                            <li>8. 사이트의 정보 및 서비스를 이용한 영리 행위</li>
                                            <li>9. 그밖에 선량한 풍속, 기타 사회질서를 해하거나 관계법령에 위반하는 행위</li>
                                        </ol>
                                    </li>
                                </ol>
                            </dd>
                            <dt>제19조 ("회원"의 가입해지/서비스중지/자료삭제)</dt>
                            <dd>
                                <ol>
                                    <li>① "회원"은 언제든지 회원탈퇴 또는 이력서 등록을 해지하기 위해 고객센터 또는 회원탈퇴 메뉴 등을 통하여 이용계약 해지 신청을 할 수 있으며, "회사"는 관련법 등이 정하는 바에 따라 이를 처리한다.</li>
                                    <li>
                                        ② 다음의 사항에 해당하는 경우 "회사"는 사전 동의없이 가입해지나 서비스 중지, 이력서 삭제 조치를 취할 수 있다.
                                        <ol>
                                            <li>1. 회원의 의무를 성실하게 이행하지 않았을 때</li>
                                            <li>2. 규정한 유료서비스 이용 요금을 납부하지 않았을 때</li>
                                            <li>3. 본 서비스 목적에 맞지 않는 분야에 정보를 활용하여 사회적 물의가 발생한 때</li>
                                            <li>4. 회원이 등록한 정보의 내용이 사실과 다르거나 조작되었을 때</li>
                                            <li>5. 본 서비스와 관련하여 회사 또는 제3자의 명예를 훼손하였을 때</li>
                                            <li>6. 기타 위 각호에 준하는 사유가 발생하였을 때</li>
                                        </ol>
                                    </li>
                                    <li>③ "회원"이 유료서비스를 이용하는 중 "회사"의 책임에 의해 정상적인 서비스가 제공되지 않을 경우 "회원"은 본 서비스의 해지를 요청할 수 있으며 "회사"는 기간의 정함이 있는 유료서비스의 경우에는 해지일까지 이용일수를 1일기준금액으로 계산하여 이용금액을 공제후 환급하고, 이용 건수의 정함이 있는 유료서비스의 경우에는 기 사용분을 1건기준금액으로 계산하여 이용금액을 공제후 환급한다.</li>
                                    <li>④ "회사"는 회원 가입이 해지된 경우에는 개인정보처리방침 중, 04.개인정보의 보유 및 이용기간 규정에 따른다.</li>
                                    <li>⑤ 개인정보보호를 위하여 "회원"이 선택한 개인정보 보유기간(1년, 3년, 회원탈퇴시) 동안 "사이트"를 이용하지 않은 경우, "아이디"를 "휴면계정"으로 분리하여 해당 계정의 이용을 중지할 수 있다. 이 경우 "회사"는 "휴면계정 처리 예정일"로부터 30일 이전에 해당사실을 전자메일, 서면, SMS 중 하나의 방법으로 사전통지하며 "회원"이 직접 본인확인을 거쳐, 다시 "사이트" 이용 의사표시를 한 경우에는 "사이트" 이용이 가능하다.</li>
                                </ol>
                            </dd>
                            <dt>제20조 (손해배상)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"가 이 약관의 제7조, 제17조, 제19조 등의 규정에 위반한 행위로 "회원"에게 손해를 입히거나 기타 "회사"가 제공하는 모든 서비스와 관련하여 "회사"의 책임 있는 사유로 인해 "회원"에게 손해가 발생한 경우 "회사"는 그 손해를 배상하여야 한다.</li>
                                    <li>② "회사"는 책임 있는 사유로 제공한 정보가 사실과 달라 "회원"이 손해를 입었을 경우에 "회사"는 그 손해를 배상하여야 한다.</li>
                                    <li>③ "회원"이 이 약관의 제5조, 제18조, 제19조 등의 규정에 위반한 행위로 "회사" 및 제3자에게 손해를 입히거나 "회원"의 책임 있는 사유에 의해 "회사" 및 제3자에게 손해를 입힌 경우에는 "회원"은 그 손해를 배상하여야 한다.</li>
                                    <li>④ 타 회원(개인회원, 기업회원, 서치펌회원, 파견·대행회원, 교육기관회원 모두 포함)의 귀책사유로 "회원"의 손해가 발생한 경우 "회사"는 이에 대한 배상 책임이 없다.</li>
                                </ol>
                            </dd>
                            <dt>제21조 (이용요금 오류의 조정)</dt>
                            <dd>
                                "회사"는 이용요금과 관련하여 오류가 있는 경우에 "회원"의 요청, 또는 "회사"의 사전 통지에 의하여 다음에 해당하는 조치를 취한다.
                                <ol>
                                    <li>1. 과다납입한 요금에 대하여는 그 금액을 반환한다. 다만, "회원"이 동의할 경우 다음 달에 청구할 요금에서 해당 금액만큼을 감하여 청구한다.</li>
                                    <li>2. 요금을 반환받아야 할 "회원"이 요금체납이 있는 경우에는 반환해야 할 요금에서 이를 우선 공제하고 반환한다.</li>
                                    <li>3. "회사"는 과소청구액에 대해서는 익월에 합산청구한다.</li>
                                </ol>
                            </dd>
                            <dt>제22조 ("회원"의 개인정보보호)</dt>
                            <dd>
                                "회사"는 "회원"의 개인정보보호를 위하여 노력해야 한다. "회원"의 개인정보보호에 관해서는 정보통신망이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법에 따르고, "사이트"에 "개인정보처리방침"을 고지한다..
                            </dd>
                            <dt>제23조 (신용정보의 제공 활용 동의)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"가 회원가입과 관련하여 취득한 "회원"의 개인신용정보를 타인에게 제공하거나 활용하고자 할 때에는 신용정보의 이용 및 보호에 관한 법률 제23조의 규정에 따라 사전에 그 사유 및 해당기관 또는 업체명 등을 밝히고 해당 "회원"의 동의를 얻어야 한다.</li>
                                    <li>② 본 서비스와 관련하여 "회사"가 "회원"으로부터 신용정보의 이용 및 보호에 관한 법률에 따라 타인에게 제공 활용에 동의를 얻은 경우 "회원"은 "회사"가 신용정보 사업자 또는 신용정보 집중기관에 정보를 제공하여 "회원"의 신용을 판단하기 위한 자료로 활용하거나, 공공기관에서 정책자료로 활용되도록 정보를 제공하는 데 동의한 것으로 간주한다.</li>
                                </ol>
                            </dd>
                            <dt>제24조 (분쟁의 해결)</dt>
                            <dd>
                                <ol>
                                    <li>① "회사"와 "회원"은 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위하여 필요한 모든 노력을 하여야 한다.</li>
                                    <li>② 전항의 노력에도 불구하고, 동 분쟁에 관한 소송은 "회사"의 주소지 관할법원으로 한다.</li>
                                </ol>
                            </dd>
                            <dt>부칙</dt>
                            <dd>
                                이 약관은 2017년 9월 25일부터 시행한다.
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="user_join_agree agrSelect">
                    <input type="checkbox" name="Agree2" id="agreeChk_1" value="on"><label for="agreeChk_1"><span>[필수]</span> 개인정보 수집 및 이용 동의</label>
                    <div class="toggle_terms"><a href="#">내용보기<span></span></a></div>
                    <div class="agree_terms" style="height: 0px;">
                        <!-- 내용보기 클릭시 t_on 클래스 추가  -->
                        <dl>
                            <dt>1. 개인정보의 수집 및 이용목적</dt>
                            <dd>
                                회원의 취업과 인재채용 활동을 매개하는 온라인 리크루팅 사이트인 잡코리아, 알바몬, 캠퍼스몬(이하 "사이트")은 효과적인 취업지원 · 인재채용 · 경력개발에 적합한 서비스를 제공하기 위하여 개인정보를 수집하고 있으며 수집된 정보를 아래와 같이 이용하고 있습니다.
                                <ol>
                                    <li>
                                        1) 회원관리
                                        <p>- 회원제 서비스 이용에 따른 본인확인, 본인의 의사확인, 고객문의에 대한 응답, 새로운 정보의 소개 및 고지사항 전달</p>
                                    </li>
                                    <li>
                                        2) 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산
                                        <p>- 본인인증, 채용정보 매칭 및 컨텐츠 제공을 위한 개인식별, 회원간의 상호 연락, 구매 및 요금 결제, 물품 및 증빙발송, 부정 이용방지와 비인가 사용방지</p>
                                    </li>
                                    <li>
                                        3) 서비스 개발 및 마케팅·광고에의 활용
                                        <p>- 맞춤 서비스 제공, 서비스 안내 및 이용권유, 서비스 개선 및 신규 서비스 개발을 위한 통계 및 접속빈도 파악, 통계학적 특성에 따른 광고 게재, 이벤트 정보 및 참여기회 제공</p>
                                    </li>
                                    <li>4) 고용 및 취업동향 파악을 위한 통계학적 분석</li>

                                </ol>
                            </dd>
                            <dt>2. 수집하는 개인정보 항목 및 수집방법</dt>
                            <dd>
                                "사이트"는 별도의 회원가입 절차 없이 특정 유료 서비스를 제외한 대부분의 컨텐츠에 자유롭게 접근할 수 있으며, 회원제 서비스를 이용하시려면 필수항목을 입력하여야 하며 선택항목을 입력하지 않더라도 서비스 이용에 제한을 두지 않습니다.<br><br>

                                가. 수집하는 개인정보의 항목<br>
                                <ol>
                                    <li>
                                        1) 회원가입 시 수집하는 항목
                                        <ul>
                                            <li>- 필수항목: 이름, 아이디, 비밀번호, 휴대폰번호, e-메일, 생년월일(알바몬), 성별(알바몬)</li>
                                            <li>- 선택항목: 이메일 수신 설정, SMS/MMS 수신 설정, 가입경로(알바몬)</li>
                                            <li>- 페이스북 등 외부 서비스와의 연동을 통해 이용자가 설정한 계정 정보</li>
                                        </ul>
                                    </li>
                                    <li>
                                        2) 이력서 등록 시 수집하는 항목
                                        <ul>
                                            <li>- 필수항목: 이름, 연락처(전화번호/휴대폰/e-메일), 우편번호(알바몬), 주소(알바몬), 학력사항, 근무형태(알바몬), 희망근무지(알바몬), 희망근무일시(알바몬), 자기소개서(알바몬), 생년월일, 성별</li>
                                            <li>- 선택항목: 사진, 홈페이지, 우편번호, 주소, 고용형태, 희망연봉, 희망근무지, 지원분야(업직종, 키워드), 자기소개서, 희망급여, 근무가능일(알바몬), 경력사항, 취업우대사항(보훈대상, 취업보호대상, 장애여부, 병역사항, 고용지원금대상, 사회활동, 수상내역, 교육이수내용, 자격증, OA능력, 컴퓨터 능력, 해외연수, 어학시험, 외국어 구사능력, 나의 성향, 각오한마디, 포트폴리오, IT/디자인능력(알바몬), 장점/강점(알바몬), 하고 싶은 말(알바몬)</li>
                                        </ul>
                                    </li>
                                    <li>
                                        3) 유료 정보 이용 시 수집하는 항목
                                        <p>유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.</p>
                                        <ul>
                                            <li>- 신용카드 결제:  카드사명, 카드번호 등</li>
                                            <li>- 은행계좌 이체: 은행명, 계좌번호 등</li>
                                            <li>- 휴대전화 결제: 가입자명, 이동전화번호, 결제승인번호 등</li>
                                        </ul>
                                    </li>
                                    <li>
                                        4) 모바일 서비스 이용 시 수집되는 항목
                                        <ul>
                                            <li>- 기업전화알리미, 취업사기 실시간 감시 서비스 이용 시 : 발신자 전화번호, 문자메시지</li>
                                            <li>- 모바일 서비스의 특성상 단말기 모델 정보가 수집될 수 있으나, 이는 개인을 식별할 수 없는 형태입니다.</li>
                                        </ul>
                                    </li>
                                    <li>
                                        5) 서비스 이용과정이나 사업처리 과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.
                                        <p>IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록, 광고 ID</p>
                                    </li>
                                </ol>
                                <br>나. 개인정보 수집방법<br>
                                홈페이지, 서비스 이용, 이벤트 응모, 팩스, 우편, 전화, 고객센터 문의하기
                            </dd>
                            <dt>3. 개인정보의 보유 및 이용기간</dt>
                            <dd>
                                "사이트"는 회원가입일로부터 서비스를 제공하는 기간 동안에 한하여 이용자의 개인정보를 보유 및 이용하게 됩니다. 회원탈퇴를 요청하거나 개인정보의
                                수집 및 이용에 대한 동의를 철회하는 경우, 수집 및 이용목적이 달성되거나 이용기간이 종료한 경우 개인정보를 지체 없이 파기합니다.
                                단, 다음의 경우에 대해서는 각각 명시한 이유와 기간 동안 보존합니다.
                                <ol>
                                    <li>1) 상법 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 법령에서 규정한 보존기간 동안 거래내역과 최소한의 기본정보를 보유합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용합니다.</li>
                                    <li>
                                        <ol>
                                            <li>① 계약 또는 청약철회 등에 관한 기록 : 5년 </li>
                                            <li>② 대금결제 및 재화 등의 공급에 관한 기록 : 5년</li>
                                            <li>③ 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년</li>
                                            <li>④ 부정이용 등에 관한 기록 : 5년</li>
                                            <li>⑤ 웹사이트 방문기록(로그인 기록, 접속기록) : 3개월</li>
                                        </ol>
                                    </li>
                                    <li>2) 보유기간을 미리 공지하고 그 보유기간이 경과하지 아니한 경우와 개별적으로 동의를 받은 경우에는 약정한 기간 동안 보유합니다.</li>
                                    <li>3) 개인정보보호를 위하여 "회원"이 선택한 개인정보 보유기간(1년, 3년, 회원탈퇴시) 동안 "사이트"를 이용하지 않은 경우, "아이디"를 "휴면계정"로 분리하여 해당 계정의 이용을 중지할 수 있다. 이 경우 "회사"는 "휴면계정 처리 예정일"로부터 30일 이전에 해당사실을 전자메일, 서면, SMS 중 하나의 방법으로 사전통지하며 "회원"이 직접 본인확인을 거쳐, 다시 "사이트" 이용 의사표시를 한 경우에는 "사이트" 이용이 가능하다.</li>
                                </ol>
                            </dd>
                        </dl>
                    </div>
                </div>
                <div class="user_join_agree agrSelect">
                    <input type="checkbox" name="Agree3" id="agreeChk_2" value="on"><label for="agreeChk_2"><span class="select">[선택]</span> 프로모션 안내 이메일/SMS 수신 동의 <br><span class="promotion_type">(알바 뉴스레터, 소식 및 광고메일, 휴대폰 알림)</span></label>
                </div>
            </div>
            <!-- 동의 끝 //-->
        <!--// 회원가입폼 -->
            <div class="inner">
                <h2 class="skip">회원가입폼</h2>
                <div class="step3">
                    <div class="tbLeave tbJoin">
                        <table summary="회원가입폼">
                            <caption>회원가입폼</caption>
                            <colgroup>
                                <col width="120">
                                <col width="653">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                                <tr>
                                    <th>아이디</th>
                                    <td>
                                        <input type="text" name="id" id="id" class="tBox tPwd" maxlength="16" placeholder="6~16자 영문, 숫자" title="아이디" required="required" <sec:authorize access="isAuthenticated()">value="<sec:authentication property="principal.id"/>" readonly="readonly"</sec:authorize> >
                                        <input type="button" value="중복확인" style="width: 80px; height: 32px; padding-left: 5px" onclick="checkId()">
                                        <input type="hidden" <sec:authorize access="isAuthenticated()">value="<sec:authentication property="principal.id"/>" readonly="readonly"</sec:authorize> id="checkedId"  >
                                        <div><a id="checkIdText" style="visibility: hidden; color: red;">아이디가 중복됩니다.</a></div>
                                        <p class="compul"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>비밀번호 <span class="iconPwdQues" id="dev_pwd_help_icon"></span></a></th>
                                    <td>
                                        <input type="password" name="pw" class="tBox tPwd" id="pw" maxlength="16" placeholder="6~16자 영문, 숫자, 특수문자" title="비밀번호" required="required">
                                        <p class="compul" id="PwdSafeResult"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>비밀번호 확인</th>
                                    <td>
                                        <input type="password" name="pw2" id="pw2" class="tBox tPwd" maxlength="16" title="비밀번호확인" required="required">
                                        <p class="compul" id="dev_chk_pwd_confirm"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                                <tr>
                                    <th>이름</th>
                                    <td>
                                        <input type="text" name="name" class="tBox" title="이름" id="dev_u_name" maxlength="12" required="required" value="<sec:authorize access="isAuthenticated()"><sec:authentication property="principal.name"/></sec:authorize>">
                                        <p class="compul"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>생년월일</th>
                                    <td>
                                        <select class="tBox joinBx tBirth_yy" data-val="true" data-val-number="SelectedBirthYearValue 필드는 숫자여야 합니다." data-val-required="SelectedBirthYearValue 필드가 필요합니다." id="birthYear" name="birthYear" title="생년월일 연도"><option value="">년</option>
<option value="2003">2003년</option>
<option value="2002">2002년</option>
<option value="2001">2001년</option>
<option value="2000">2000년</option>
<option value="1999">1999년</option>
<option value="1998">1998년</option>
<option value="1997">1997년</option>
<option value="1996">1996년</option>
<option value="1995">1995년</option>
<option value="1994">1994년</option>
<option value="1993">1993년</option>
<option value="1992">1992년</option>
<option value="1991">1991년</option>
<option value="1990">1990년</option>
<option value="1989">1989년</option>
<option value="1988">1988년</option>
<option value="1987">1987년</option>
<option value="1986">1986년</option>
<option value="1985">1985년</option>
<option value="1984">1984년</option>
<option value="1983">1983년</option>
<option value="1982">1982년</option>
<option value="1981">1981년</option>
<option value="1980">1980년</option>
<option value="1979">1979년</option>
<option value="1978">1978년</option>
<option value="1977">1977년</option>
<option value="1976">1976년</option>
<option value="1975">1975년</option>
<option value="1974">1974년</option>
<option value="1973">1973년</option>
<option value="1972">1972년</option>
<option value="1971">1971년</option>
<option value="1970">1970년</option>
<option value="1969">1969년</option>
<option value="1968">1968년</option>
<option value="1967">1967년</option>
<option value="1966">1966년</option>
<option value="1965">1965년</option>
<option value="1964">1964년</option>
<option value="1963">1963년</option>
<option value="1962">1962년</option>
<option value="1961">1961년</option>
<option value="1960">1960년</option>
<option value="1959">1959년</option>
<option value="1958">1958년</option>
<option value="1957">1957년</option>
<option value="1956">1956년</option>
<option value="1955">1955년</option>
<option value="1954">1954년</option>
<option value="1953">1953년</option>
<option value="1952">1952년</option>
<option value="1951">1951년</option>
<option value="1950">1950년</option>
<option value="1949">1949년</option>
<option value="1948">1948년</option>
<option value="1947">1947년</option>
<option value="1946">1946년</option>
<option value="1945">1945년</option>
<option value="1944">1944년</option>
<option value="1943">1943년</option>
<option value="1942">1942년</option>
<option value="1941">1941년</option>
<option value="1940">1940년</option>
<option value="1939">1939년</option>
<option value="1938">1938년</option>
<option value="1937">1937년</option>
<option value="1936">1936년</option>
<option value="1935">1935년</option>
<option value="1934">1934년</option>
</select>
                                        <select name="birthMonth" class="tBox joinBx tBirth_mm" id="birthMonth" title="생년월일 월">
                                            <option value="">월</option>
                                                <option value="01">01월</option>
                                                <option value="02">02월</option>
                                                <option value="03">03월</option>
                                                <option value="04">04월</option>
                                                <option value="05">05월</option>
                                                <option value="06">06월</option>
                                                <option value="07">07월</option>
                                                <option value="08">08월</option>
                                                <option value="09">09월</option>
                                                <option value="10">10월</option>
                                                <option value="11">11월</option>
                                                <option value="12">12월</option>
                                        </select>
                                        <select name="birthDay" class="tBox joinBx tBirth_mm" id="birthDay" title="생년월일 일">
                                        	<option value="">일</option>
                                                <option value="01">01일</option>
                                                <option value="02">02일</option>
                                                <option value="03">03일</option>
                                                <option value="04">04일</option>
                                                <option value="05">05일</option>
                                                <option value="06">06일</option>
                                                <option value="07">07일</option>
                                                <option value="08">08일</option>
                                                <option value="09">09일</option>
                                                <option value="10">10일</option>
                                                <option value="11">11일</option>
                                                <option value="12">12일</option>
                                                <option value="13">13일</option>
                                                <option value="14">14일</option>
                                                <option value="15">15일</option>
                                                <option value="16">16일</option>
                                                <option value="17">17일</option>
                                                <option value="18">18일</option>
                                                <option value="19">19일</option>
                                                <option value="20">20일</option>
                                                <option value="21">21일</option>
                                                <option value="22">22일</option>
                                                <option value="23">23일</option>
                                                <option value="24">24일</option>
                                                <option value="25">25일</option>
                                                <option value="26">26일</option>
                                                <option value="27">27일</option>
                                                <option value="28">28일</option>
                                                <option value="29">29일</option>
                                                <option value="30">30일</option>
                                        </select>
                                        <p class="compul" id="txtBirth"></p>
                                        <input id="birth" name="birth" type="hidden" value="">
                                    </td>
                                </tr>
                                <tr>
                                    <th>성별</th>
                                    <td>
                                        <input type="radio" name="gender" class="sex" title="남자" id="gender_male" value="1"><label for="sex_male">남자</label>
                                        <input type="radio" name="gender" class="sex female" title="여자" id="gender_female" value="2"><label for="sex_female">여자</label>
                                        <p class="compul" id="txtGender"></p>
                                    </td>
                                </tr>
                                <tr>
                                	<th>전시공간분류</th>
                                    <td>
                                        <input type="radio" name="spaceField" class="sex" title="전시관" value="1"><label for="sex_male">전시관</label>
                                        <input type="radio" name="spaceField" class="sex female" title="카페" value="2"><label for="sex_female">카페</label>
                                        <input type="radio" name="spaceField" class="sex female" title="레스토랑" value="3"><label for="sex_female">레스토랑</label>
                                        <input type="radio" name="spaceField" class="sex female" title="이자카야" value="4"><label for="sex_female">이자카야</label>
                                        <input type="radio" name="spaceField" class="sex female" title="기타" value="5"><label for="sex_female">기타</label>
                                        
                                        <p class="compul" id="txtGender"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>희망예술분야</th>
                                    <td>
                                        <input type="checkbox" name="artField" class="sex" title="동양화"  value="1"><label for="sex_male">동양화</label>
                                        <input type="checkbox" name="artField" class="sex female" title="서양화" value="2"><label for="sex_female">서양화</label>
                                        <input type="checkbox" name="artField" class="sex female" title="회화"  value="3"><label for="sex_female">회화</label>
                                        <input type="checkbox" name="artField" class="sex female" title="조소" value="4"><label for="sex_female">조소</label>
                                        <input type="checkbox" name="artField" class="sex female" title="애니메이션" value="5"><label for="sex_female">애니메이션</label><br>
                                        <input type="checkbox" name="artField" class="sex" title="디자인" value="6"><label for="sex_female">디자인</label>
                                        <input type="checkbox" name="artField" class="sex female" title="시각디자인" value="7"><label for="sex_female">시각디자인</label>
                                        <input type="checkbox" name="artField" class="sex female" title="패션디자인" value="8"><label for="sex_female">패션디자인</label>
                                        <input type="checkbox" name="artField" class="sex female" title="산업디자인" value="9"><label for="sex_female">산업디자인</label>
                                        <p class="compul" id="txtGender"></p>
                                    </td>
                                </tr>

                                <tr>
                                    <th>이메일</th>
                                    <td>
                                        <input type="text" name="emailId" class="tBox tEmail" id="emailId" maxlength="25" title="이메일아이디" required="required"> <span>@</span> 
                                        <input type="text" name="emailDomaina" class="tBox tEmail" id="emailDomaina" maxlength="25" title="이메일계정" onfocus="$mship.reg.emailChk1()">
                                        <input type="hidden" name="emailDomain" id="emailDomain" value="">
                                        
                                        <select name="emailDomainS" class="tBox joinBx tEmail" id="emailDomainS" title="이메일 서비스업체 선택">
                                            <option value="">선택하세요</option>
                                            <option value="naver.com">naver.com</option>
                                            <option value="hanmail.net">hanmail.net</option>
                                            <option value="nate.com">nate.com</option>
                                            <option value="daum.net">daum.net</option>
                                            <option value="hotmail.com">hotmail.com</option>
                                            <option value="dreamwiz.com">dreamwiz.com</option>
                                            <option value="gmail.com">gmail.com</option>
                                            <option value="">직접입력</option>
                                        </select>
                                        <p class="compul" id="txtEmail"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                                <tr>
                                    <th>휴대폰 번호</th>
                                    <td>
                                        <select name="phone1" class="tBox joinBx tPhone" id="phone1" title="휴대폰 번호">
                                            <option value="1">010</option>
                                            <option value="2">011</option>
                                            <option value="3">016</option>
                                            <option value="4">017</option>
                                            <option value="5">018</option>
                                            <option value="6">019</option>
                                        </select> -
                                        <input type="text" name="phone2" id="phone2" maxlength="4" class="tBox tPhone" title="휴대폰 번호" required="required"> -
                                        <input type="text" name="phone3" id="phone3" maxlength="4" class="tBox tPhone" title="휴대폰 번호" required="required">

                                        <p class="compul" id="txtCert"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>매장 번호</th>
                                    <td>
                                        <select name="tel_cd" class="tBox joinBx tPhone" id="tel_cd" title="휴대폰 번호">
                                            <option value="1">02</option>
                                            <option value="2">062</option>
                                            <option value="3">053</option>
                                            <option value="4">042</option>
                                            <option value="5">051</option>
                                            <option value="6">052</option>
                                            <option value="7">032</option>
                                            <option value="8">044</option>
                                            <option value="9">031</option>
                                            <option value="10">033</option>
                                            <option value="11">055</option>
                                            <option value="12">054</option>
                                            <option value="13">061</option>
                                            <option value="14">063</option>
                                            <option value="15">041</option>
                                            <option value="16">043</option>
                                            <option value="17">064</option>
                                            
                                        </select> 
                                        <input type="text" name="tel2" id="tel2" maxlength="4" class="tBox tPhone" title="휴대폰 번호" required="required"> -
                                        <input type="text" name="tel3" id="tel3" maxlength="4" class="tBox tPhone" title="휴대폰 번호" required="required">

                                        <p class="compul" id="txtCert"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>주소</th>
                                    <td>
                                    	<input type="text" name="zipNo" id="zipNo" maxlength="4" class="tBox tPhone" title="휴대폰 번호" required="required">&emsp;<input type="button" value="우편번호검색" style="width: 80px; height: 32px; padding-left: 5px" onclick="goPopup()"><br><br>
                                        <div style="width: 356px">
                                        <input type="text" class="tBox" id="dev_u_name" id="addr" name="addr" style="width: 94%"><br><br>
                                        <input type="text" class="tBox" id="addrDetail" name="addrDetail" style="width: 94%">
                                        <input type="hidden" id="sigungu_nm" name="sigungu_nm">
										<input type="hidden" id="dong_cd" name="dong_cd">
										
										<input type="hidden" id="coordinateX" name="coordinateX">
										<input type="hidden" id="coordinateY" name="coordinateY">
                                        </div>
                                        
										
                                        <p class="compul" id="txtEmail"></p>
                                    </td>
                                </tr>
                                
                                
                                
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="howAlbamon">
                                        <span class="select" style="color:#78838e">[선택]</span> 알바몬을 어떻게 알게 되셨나요?
                                        <select class="tBox joinBx tHow" id="known_route" name="SelectedKnownRouteValue" style="width:350px;" title="알바몬을 어떻게 알게 되셨나요"><option value="">선택하세요</option>
<option value="A01">주요 포털사이트 검색</option>
<option value="A13">앱스토어 검색</option>
<option value="A03">라디오광고</option>
<option value="A04">TV광고</option>
<option value="A05">뉴스(신문, 인터넷 등)</option>
<option value="A14">모바일(온라인) 광고 배너</option>
<option value="A08">친구 및 지인 소개</option>
<option value="A09">인터넷 커뮤니티 및 게시판</option>
<option value="A12">극장광고</option>
<option value="A00">기타(버스, 지하철, 판촉물 등)</option>
</select>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="expiry">
                                        <span class="select">[선택]</span>
                                        <span class="title">
                                            개인정보 유효기간 선택
                                            <a href="javascript:void(0);"><span class="iconPwdQues" id="dev_valid_day_help_icon"></span></a>
                                            <div class="tooltip expiry" style="display:none;" id="dev_valid_day_help_tooltip">
                                                <p>개인정보 유효기간</p>
                                                <div class="content">가입하신 ID로 선택하신 기간동안 사이트에 로그인 등 활동을 하지 않을 경우 경우, 해당 개인정보를 별도 분리 저장하게 됩니다.</div>
                                                <div class="btnClose"><a href="#"></a></div>
                                            </div>
                                        </span>
                                        <input type="radio" name="Valid_Day_Cnt" title="1년" value="365" id="dev_valid_day_365" checked=""><label for="dev_valid_day_365">1년</label>
                                        <input type="radio" name="Valid_Day_Cnt" title="3년" value="1095" id="dev_valid_day_1095"><label for="dev_valid_day_1095">3년</label>
                                        <input type="radio" name="Valid_Day_Cnt" title="회원탈퇴시" value="9999" id="dev_valid_day_9999"><label for="dev_valid_day_9999">회원탈퇴시</label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" class="tLine"><div></div></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="tooltip" style="display: none;" id="dev_pwd_help_tooltip">
                            <p>안전한 비밀번호 사용법</p>
                            <ul>
                                <li>1. 6~16자의 영문 대소문자, 숫자, 특수기호 사용</li>
                                <li>2. 3자 이상 연속 영문/숫자 조합 사용불가</li>
                                <li>3. 아이디와 동일한 비밀번호를 사용하지 마세요.</li>
                                <li>4. 키보드의 연속 패턴은 사용하지 마세요.</li>
                                <li>5. 개인정보를 포함하는 비밀번호를 사용하지 마세요.</li>
                                <li>6. 비밀번호는 주기적으로 변경하세요.</li>
                            </ul>
                            <div class="btnClose"><a href="#"></a></div>
                        </div>
                    </div>
                </div>
                <div class="info_confirm" id="boxJoinConfirm" style="display: none;">입력한 정보를 다시 확인해주세요.</div>
                <div class="btnBx">
                    <a href="#" id="btn_submit" onclick="formSubmit()"><img src="https://contents.albamon.kr/monimg/common/btn/btn_user_join.png" alt="가입하기"></a>
                </div>
            </div>
        <!-- 회원가입폼 끝 //-->
</form>    </div>
    <!-- 회원가입 끝 //-->
</div>
            </div>
            <!-- //container -->
            <!-- footer -->
            <div id="footer">
    <address> © <a href="http://company.jobkorea.co.kr" target="_blank">JOBKOREA Corp.</a> All rights reserved.</address>
</div>
            <!-- //footer -->
        </div>


    


    


</body>
</html>