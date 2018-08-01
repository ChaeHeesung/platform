<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>main_journal.jsp</title>

<link rel="stylesheet" type="text/css"
	href="http://www.dbpia.co.kr/Content/searchListBig.css" />
<link rel="stylesheet" type="text/css"
	href="http://www.dbpia.co.kr/Content/common.css?v=20170407" />
<link rel="stylesheet" type="text/css"
	href="http://www.dbpia.co.kr/Content/kr/sub.css?v=20171021" />
<link rel="stylesheet" type="text/css"
	href="http://www.dbpia.co.kr/Content/highlight.css" />
<link rel="stylesheet" type="text/css"
	href="http://www.dbpia.co.kr/Content/jquery-ui.css" />
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/kr/message.js?v=20170407"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/menu.js?v=20172010"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/jquery.utils.js?v=20170407"></script>
<script type="text/javascript" src="http://www.dbpia.co.kr/js/tabber.js"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/common.js?v=20170407" charset="euc-kr"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/nuri_Statistics.js?v=20170407"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/jquery.retrieveB2B.js?v=20170407"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/jquery.popup.js?v=20170407"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/jquery.cookie.js"></script>
<script type="text/javascript" src="http://www.dbpia.co.kr/js/json2.js"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="http://www.dbpia.co.kr/js/browse.js"></script>
<script type="text/javascript"
	src="http://www.dbpia.co.kr/js/event/event2016_main.js"></script>
	
<script type="text/javascript">
    var AdvancedSearchFunction = { "Period": "", "Reset": "" };

    $(document).ready(function () {
        $("#dialog:ui-dialog").dialog("destroy");

        $("img[name=searchReset]").click(function () {
            for (var i = $("div.sub_txt02_content ul").length - 1; i >= 3; i--) {
                $("div.sub_txt02_content ul:last").remove();
            }
            $('input:checkbox[name="language"]').attr("checked", false);
            $('input:checkbox[name="allchk"]').attr("checked", false);
            $('input[name="SearchKeyword"]').val("");


            $("form")[1].reset();
            $.categoryReset();
            $.getCategories({ "categoryId": "002008" });
            ulCount = 2;
            ulIndex = 0;

        });

        var ulIndex = 0;
        var ulCount = 2;

        $("img[name=addKeyword]").click(function () {
            if (ulCount > 7) {
                alert(mes36);
                return;
            }

            lastVal = $(".sub_txt02_content input[name=SearchKeyword]:last").val();
            if (lastVal != "") {
                $(".sub_txt02_content input[name=SearchKeyword]:last").val("");
            }

            ulIndex++;
            ulCount++;
            var boxs = "<li index=\"" + ulIndex + "\">" +
                            "<select name=\"SearchOption\" title=\"범위\" class=\"type01\"><option value=\"0\">전체</option> + <option value=\"1\">논문명</option> + <option value=\"2\">간행물명</option> + <option value=\"4\">발행기관</option> + <option value=\"5\">저자</option> + <option value=\"6\">키워드명</option> + <option value=\"7\">목차+초록</option> + <option value=\"8\">본문</option> + </select>" +
                            " <input type=\"text\" name=\"SearchKeyword\" onkeypress=\"return advancedKey(event);\"/>" +
                            " <select name=\"SearchOper\" title=\"조건\" class=\"type02\">" +
                                "<option value=\"1\">AND</option>" +
                                "<option value=\"2\">OR</option>" +
                                "<option value=\"3\">AND NOT</option>" +
                            "</select>" +
                            " <img src=\"http://www.dbpia.co.kr/img/kr/search/btn_minus.jpg\" alt=\"추가한 검색창 제거\" title=\"추가한 검색창 제거\" index=\"" + ulIndex + "\" />" +
                        "</li>";

            $("#AdvancedSearchBox").append(boxs);

            $("img[index=" + ulIndex + "]").css("cursor", "pointer").bind("click", function () {
                $("li[index=" + $(this).attr("index") + "]").remove();
                ulCount--;
            });
        });

        $("img[name=searchHisroty]").click(function () {
            toggleHistory();
        });

        $("img[name=historySearch]").click(function () {
            alert("히스토리 검색");
        });

        $("img[name=doSearch]").click(function () {
            advancedSearch();
        });

        $("img[name=historyClose]").click(function () {
            $("div.sub_txt02_p24").toggle();
        });

        //왼쪽 주제분류 땁클릭
        $("#left_category").dblclick(function () {
            $.fnMoveRight();
        });

        //오른쪽 주제분류 땁클릭
        $("#right_category").dblclick(function () {
            $.fnMoveLeft();
        });

        $("img[name=moveright]").click(function () {
            $.fnMoveRight();
        });

        $("img[name=moveleft]").click(function () {
            $.fnMoveLeft();
        });

        $("input[name=category]").click(function () {
            var dataString = null;
            dataString = { "categoryId": $(this).val() };
            $.getCategories(dataString);
        });


        $.categoryReset = function () {
            $("input[name=category]").filter("input[value=002008]").attr("checked", "checked");
            $("input[name=PublishDate]").filter("input[value=11]").attr("checked", true); //체크 활성화

        }

        $.getCategories = function (jsonString) {
            $.ajax({
                type: "POST",
                url: ProxyUrl + "/Search/GetCategories",
                data: jsonString,
                dataType: "json",
                success: function (data) {
                    $("select[name='left_category'] option").remove();
                    $("select[name='right_category'] option").remove();
                    var totCnt = data.length;
                    var tempName = "";

                    for (var i = 0; i < totCnt; i++) {
                        if (tempName != data[i].CategoryPName) {
                            tempName = data[i].CategoryPName;
                            var PId = data[i].CategoryPId.substring(0, 2);
                            //alert(PId);

                            if (jsonString.categoryId == "002006") {
                                $("select[name='left_category']").append('<option value="' + data[i].CategoryPId.substring(0, 1) + '" depth="1" tCode="' + data[i].CategoryPId + '">' + tempName + '</option>');
                                if(data[i].CategoryPId.substring(0, 1)==data[i].CategoryPId){
                                    $("select[name='left_category']").append('<option value="' + data[i].CategoryPId + '0" depth="2" tCode="' + data[i].CategoryPId + '">－' + data[i].CategoryPName + '</option>');
                                }else{
                                    $("select[name='left_category']").append('<option value="' + data[i].CategoryPId + '" depth="2" tCode="' + data[i].CategoryPId + '">－' + data[i].CategoryPName + '</option>');
                                }
                            } else {
                                $("select[name='left_category']").append('<option value="' + data[i].CategoryPId.substring(0, 2) + '" depth="1" tCode="' + data[i].CategoryPId + '">' + tempName + '</option>');
                            }
                        }

                        $("select[name='left_category']").append('<option value="' + data[i].CategoryId + '" depth="2" tCode="' + data[i].CategoryPId + '">－' + data[i].CategoryName + '</option>');
                    }
                }
            });
        }

        $.checkSelectBox = function () {
            var left = $("select[name='left_category'] option");
            var right = $("select[name='right_category'] option");

            if (left.length > 0) {
                $("img[name=moveright]").attr("src", "http://www.dbpia.co.kr/img/kr/search/sbtn_right_on.jpg");
            }
            else if (left.length == 0) {
                $("img[name=moveright]").attr("src", "http://www.dbpia.co.kr/img/kr/search/sbtn_right.jpg");
            }

            if (right.length > 0) {
                $("img[name=moveleft]").attr("src", "http://www.dbpia.co.kr/img/kr/search/sbtn_left_on.jpg");
            }
            else if (right.length == 0) {
                $("img[name=moveleft]").attr("src", "http://www.dbpia.co.kr/img/kr/search/sbtn_left.jpg");
            }
        }

        $.init = function () {
            $("img[name=searchReset]").css("cursor", "pointer");
            $("img[name=addKeyword]").css("cursor", "pointer");
            $("img[name=multilanguage]").css("cursor", "pointer");
            $("img[name=searchHisroty]").css("cursor", "pointer");
            $("img[name=searchConfig]").css("cursor", "pointer");
            $("img[name=historySearch]").css("cursor", "pointer");
            $("img[name=doSearch]").css("cursor", "pointer");
            $("img[name=historyClose]").css("cursor", "pointer");
            $("img[name=moveright]").css("cursor", "pointer");
            $("img[name=moveleft]").css("cursor", "pointer");
        }

        $.init();
        $.categoryReset();
        $.getCategories({ "categoryId": "002008" });

        $("#SearchDialog1").dialog({ autoOpen: false, width: 500, modal: true, resizable: false, closeOnEscape: true, hide: 'fade', show: 'fade' });

        $("#SearchDialog1 #sDate").keydown(function (e) {
            if (((window.event) ? e.keyCode : e.which) == 13)
                $("#SearchDialog1 #s1").click();
        });

        $("#SearchDialog1 #s1").css("cursor", "pointer").click(function () {
            if ($("#SearchDialog1 #sDate").val() == "") {
                alert('세기를 입력하십시요'); $("#SearchDialog1 #sDate").focus(); return;
            } else {
                $("#SearchDialog1 #popupScroll2").load("/Search/SearchPeriod/?CenturyId=" + $("#SearchDialog1 #sDate").val()); //+"&pCode="+$("input[name=pCode]").val());
            }
        });

        // 연대선택 체크박스 이벤트
        initCheckbox();
        $("input[name=Period").click(function () {
            $("#SearchDialog1").dialog("open");
        });
        // 연도입력, 연대선택 값 검색폼으로 전달
        $("#p1_input").css("cursor", "pointer").click(function () {
            var txt = "", value = "";
            var targetObj = $("#searchLayer").css("display") != "none" ? "#searchLayer " : "#contents #content "; //dialog("isOpen")			

            $("#SearchDialog1 #popupScroll2 input[name='ch2']:checked").each(function (i) {
                if (i > 0) { txt += ", "; value += "|"; }
                txt += $(this).attr("text");
                value += $(this).val();
            });

            $("input[name='Period']").val(txt);
            $(targetObj + "input[name='pCode']").val(value);
            $("#SearchDialog1").dialog("close");
        });

        // 리셋,닫기
        $("#SearchDialog1 #p1_reset").css("cursor", "pointer").click(function () { $("#SearchDialog1 input[name='ch2']:checked").attr("checked", false); });
        $("#SearchDialog1 #p1_close").css("cursor", "pointer").click(function () { $("#SearchDialog1").dialog("close"); });

        $("input[name=PublishDate]").click(function () {
            if ($(this).val() == '4') {
                $("select[name=PublishSttDate]").prop("disabled", false);
                $("select[name=PublishEndDate]").prop("disabled", false);
            }
            else {
                $("select[name=PublishSttDate]").prop("disabled", true);
                $("select[name=PublishEndDate]").prop("disabled", true);
            }
        });

        //전방일치 안내
        $('#FrontMatchInfoOpen').css('cursor', 'pointer').click(function () {
            if ($('.frontMatch-notice').css('display') == 'none') $('.frontMatch-notice').show();
            else $('.frontMatch-notice').hide();
        });
        $("#FrontMatchInfoClose").css("cursor", "pointer").click(function () {
            $('.frontMatch-notice').hide();
        });

        loadHistory();
    });

    $.fnMoveRight = function () {


        var option = $("select[name=left_category] option:selected");

        //        if (option.val() == "nonAct") {
        //            alert("대분류는 옮길수 없습니다.");
        //            return;
        //        }

        if (option.text() == "") {
            alert("분류를 선택하세요.");
            return;
        }

        if (option.attr("depth") != 1 && $("select[name=right_category] option[depth=2]").size() >= 10) {
            alert("하위 분류는 총 10개만 선택할 수 있습니다.");
            return;
        }

        var selectCategoryId = $("input[name=category]:checked").val();
        var parent;
        var optionValue = "";

        if (selectCategoryId == "002006")
            optionValue = option.val().substring(0, 1);
        else
            optionValue = option.val().substring(0, 2);

        //alert(optionValue);

        parent = $("select[name=left_category] option").filter("[value=" + optionValue + "]");

        var isAdd = true;
        
        if (option.attr("depth") == 2) {
        
            $("select[name=right_category]").children("option").each(function () {
                if ($(this).val() == option.val())
                    isAdd = false;
            });
        }

        if (isAdd == true) {
            $("select[name=right_category]").children("option").each(function () {
                if ($(this).val() == parent.val())
                    isAdd = false;
            });
            if (isAdd)
                $("select[name=right_category]").append(parent.clone());

            if (option.attr("depth") == 1) {
                $("select[name=right_category] option").each(function () {
                    if ($(this).val().indexOf(option.val()) > -1)
                        $(this).remove();
                });
                $("select[name=right_category]").append(option.clone());
            } else if (option.attr("depth") == 2) {
                if (!isAdd)
                    $("select[name=right_category] option[value='" + parent.val() + "']").after(option.clone());
                else
                    $("select[name=right_category]").append(option.clone());
            }
        } else {
            alert("이미 분류가 선택되어있습니다.");
        }

        $.checkSelectBox();
    }

    $.fnMoveLeft = function () {
        var option = $("select[name=right_category] option:selected");

        if (option.length == 0) {
            alert("제외할 분류를 선택하세요");
        }

        if (option.attr("depth") == 1) {
            $("select[name=right_category] option[value*='" + option.val().substring(0, 2) + "']").each(function (i) {
                $(this).remove();
            });
        } else if (option.attr("depth") == 2) {
            $("select[name=right_category] option:selected").remove();
            if ($("select[name=right_category] option[value*='" + option.val().substring(0, 2) + "']").size() == 1) {
                $("select[name=right_category] option[value*='" + option.val().substring(0, 2) + "']").remove();
            }
        }

        $.checkSelectBox();
    }

    function toggleHistory() {
        $("#myHistory").slideToggle(400);
    }

    function loadHistory() {
        $("#myHistory").load('/SearchResult/SearchHistory');
    }

    function initCheckbox() {
        // 연대선택 체크박스 이벤트
        $("#SearchDialog1 #popupScroll2 input[name='ch1']:checkbox").click(function () {
            var chk = $("#SearchDialog1 #popupScroll2 input[name='ch1']:checkbox").attr("checked");
            $("#SearchDialog1 #popupScroll2 input[name='ch2']:checkbox").each(function () { $(this).attr("checked", chk); });
        });

        $("#SearchDialog1 #popupScroll2 input[name='ch2']:checkbox").click(function () {
            if ($("#SearchDialog1 #popupScroll2 input[name='ch2']:checked").length == $("#SearchDialog1 #popupScroll2 input[name='ch2']").length)
                $("#SearchDialog1 #popupScroll2 input[name='ch1']:checkbox").attr("checked", true);
            else
                $("#SearchDialog1 #popupScroll2 input[name='ch1']:checkbox").attr("checked", false);
        });
    }
    
    function allchks() {
        var allchk = $('input:checkbox[name="allchk"]');

        if (allchk.is(":checked") == true) {
            $('input:checkbox[name="language"]').attr("checked", true);
        }
        else {
            $('input:checkbox[name="language"]').attr("checked", false);
        }
    }

    function advancedSearch() {
        var wCode = [];
        var tCode = [];

        //[상세검색] 키워드 미입력시 결과값이 안나오도록 수정요청(http://todo.nurimedia.co.kr/view.php?id=17300)으로 검색어 체크로직을 추가함.(Peter, 2017-11-15)
        var boolCheck = false;

        $("input[name='SearchKeyword']").each(function () {
            if ($(this).val() != "") {
                boolCheck = true;
            }
        });

        if (boolCheck == false) {
            alert(mes31);   //검색어를 입력해주세요.
            return;
        }
        
        $("select[name=right_category] option").each(function () {

            if ($(this).attr("depth") == 1) {
                if ($("select[name=right_category] option[value*='" + $(this).val() + "']").size() < 2) {
                    wCode.push($(this).val());
                    tCode.push($(this).text().replace("－", ""));
                }
            }
            else {
                wCode.push($(this).val());
                tCode.push($(this).text().replace("－", ""));
            }
        });

        $("input[name=CategoryTemp]").val(wCode.join('|'));
        //alert("wCode = " + wCode.join('|') + " tCode = " + tCode.join('|'));
        $("input[name=CategoryCodeTemp]").val(tCode.join('| '));

        //return;

        var PublishDate = $("input[name=PublishDate]:checked").val();
        
        if (PublishDate == '4') {
            if ($("select[name=PublishSttDate]").val() != 'sel') {
                if ($("select[name=PublishEndDate]").val() != 'sel') {
                    if ($("select[name=PublishSttDate]").val() > $("select[name=PublishEndDate]").val()) {
                        alert("시작연도는 종료연도보다 클 수 없습니다.");
                        return false;
                    }
                } else {
                    alert("종료연도를 선택하셔야 합니다.");
                    return false;
                }
            } else {
                if ($("select[name=PublishEndDate]").val() != 'sel') {
                    alert("시작연도와 종료연도를 선택하셔야 합니다");
                    return false;
                }
            }
        }

        //2014-08-11 haknight 데이터 없는 엘리먼트 제거
        //elementDisabled(); // URL 필요없는 엘리먼트 제거 2104-08-18 haknight
        advancedSearchelementDisabled();        //검색어 입력창에 값을 첫번째 입력창만 체크해서 가변 입력창도 체크하도록 변경함.(Peter, 2017-11-16)

        $("form[name=DetailSearchForm]").submit();
    }

    function advancedKey(e) {
        if (e.keyCode == 13) {
            advancedSearch();
            return false;
        }
        else {
            return true;
        }
    }

    function advancedSearchelementDisabled() {
        
        if ($("input[name=Collection]").val() == "") {
            $("input[name=Collection]").attr("disabled", true);
        }
                
        
        $("input[name=SearchKeyword]").each(function (i) {
            if ($(this).val() == "") {
                $(this).attr("disabled", true);
        
                if ($("select[name=SearchOption]").eq(i).length){
                    $("select[name=SearchOption]").eq(i).attr("disabled", true);
                }
                if ($("select[name=SearchOper]").eq(i).length){
                    $("select[name=SearchOper]").eq(i).attr("disabled", true);
                }
            }
        });
        
        if ($("input[name=searchReset]").val() == "") {
            $("input[name=searchReset]").attr("disabled", true);
        }
        
        if ($("input[name=CategoryTemp]").val() == "") {
            $("input[name=CategoryTemp]").attr("disabled", true);
        }
        
        if ($("input[name=CategoryCodeTemp]").val() == "") {
            $("input[name=CategoryCodeTemp]").attr("disabled", true);
        }
        
        if ($("input[name=Category]").val() == "") {
            $("input[name=Category]").attr("disabled", true);
        }
    }
</script>



</head>
<body>
	<div class="contents-warp mt24">
		<div class="title-text mt10">
			<h4>검색어입력</h4>
		</div>
		
		<div class="search-box mb20">
			<ul>
				<div id="AdvancedSearchBox">
					<li>
						<select name="SearchOption" title="범위" class="type01">
							<option value="0">키워드명</option>
							<option value="1">전체</option>
							<option value="2">논문명</option>
							<option value="3">목차+초록</option>
							<option value="4">저자</option>
							<option value="5">본문</option>
						</select> 
						<input type="text" name="SearchKeyword"
						onkeypress="return advancedKey(event);" title="검색어"> 
						<select name="SearchOper" title="조건" class="type02">
							<option value="1">AND</option>
							<option value="2">OR</option>
							<option value="3">AND NOT</option>
						</select>
						<img src="http://www.dbpia.co.kr/img/kr/search/btn_plus.jpg"
						name="addKeyword" alt="검색창 추가" title="검색창 추가"
						style="cursor: pointer;">
					</li>
				</div>
				<li>
					<select name="SearchOption" title="범위" class="type01">
						<option value="0">키워드명</option>
						<option value="1">전체</option>
						<option value="2">논문명</option>
						<option value="3">목차+초록</option>
						<option value="4">저자</option>
						<option value="5">본문</option>
					</select> 
					<input type="text" name="SearchKeyword"
					onkeypress="return advancedKey(event);" title="검색어">
				</li>
			</ul>
		</div>

		<div class="title-text">
			<h4>검색조건</h4>
		</div>
		<div class="form-layout mb20">
			<dl class="write-style search-criteria">
				<dt class="search-criteria-cate">
					<span class="b dot-black">주제분류</span>
				</dt>
				<dd class="search-criteria-cate">
					<div class="pt05">
						<select id="left_category" name="left_category" size="10">
							<option	value="NA" depth="1" tcode="NA">인문학</option>
							<option value="NA00" depth="2" tcode="NA">－인문학일반</option>
							<option value="NA01" depth="2" tcode="NA">－역사학</option>
							<option value="NA02" depth="2" tcode="NA">－철학</option>
							<option value="NA03" depth="2" tcode="NA">－종교학/신학</option>
							<option value="NA04" depth="2" tcode="NA">－언어학</option>
							<option value="NA05" depth="2" tcode="NA">－문학</option>
							<option value="NA06" depth="2" tcode="NA">－한국어문학</option>
							<option value="NA07" depth="2" tcode="NA">－중국어문학</option>
							<option value="NA08" depth="2" tcode="NA">－일본어문학</option>
							<option value="NA09" depth="2" tcode="NA">－기타동양어문학</option>
							<option value="NA10" depth="2" tcode="NA">－영어문학</option>
							<option value="NA11" depth="2" tcode="NA">－프랑스어문학</option>
							<option value="NA12" depth="2" tcode="NA">－독일어문학</option>
							<option value="NA13" depth="2" tcode="NA">－스페인어문학</option>
							<option value="NA14" depth="2" tcode="NA">－러시아어문학</option>
							<option value="NA15" depth="2" tcode="NA">－서양고전어문학</option>
							<option value="NA16" depth="2" tcode="NA">－기타서양어문학</option>
							<option value="NB" depth="1" tcode="NB">사회과학</option>
							<option value="NB00" depth="2" tcode="NB">－사회과학일반</option>
							<option value="NB01" depth="2" tcode="NB">－경제/경영학</option>
							<option value="NB02" depth="2" tcode="NB">－관광학</option>
							<option value="NB03" depth="2" tcode="NB">－교육학</option>
							<option value="NB04" depth="2" tcode="NB">－군사학</option>
							<option value="NB05" depth="2" tcode="NB">－문헌정보학</option>
							<option value="NB06" depth="2" tcode="NB">－민속학</option>
							<option value="NB07" depth="2" tcode="NB">－법학</option>
							<option value="NB08" depth="2" tcode="NB">－사회/사회복지학</option>
							<option value="NB09" depth="2" tcode="NB">－신문방송학</option>
							<option value="NB10" depth="2" tcode="NB">－심리과학</option>
							<option value="NB11" depth="2" tcode="NB">－정치외교학</option>
							<option value="NB12" depth="2" tcode="NB">－지리/지역학</option>
							<option value="NB13" depth="2" tcode="NB">－행정학</option>
							<option value="NC" depth="1" tcode="NC">자연과학</option>
							<option value="NC00" depth="2" tcode="NC">－자연과학일반</option>
							<option value="NC01" depth="2" tcode="NC">－물리학</option>
							<option value="NC02" depth="2" tcode="NC">－생물학</option>
							<option value="NC03" depth="2" tcode="NC">－생활과학</option>
							<option value="NC04" depth="2" tcode="NC">－수학</option>
							<option value="NC05" depth="2" tcode="NC">－지구과학</option>
							<option value="NC06" depth="2" tcode="NC">－천문학</option>
							<option value="NC07" depth="2" tcode="NC">－통계학</option>
							<option value="NC08" depth="2" tcode="NC">－화학</option>
							<option value="ND" depth="1" tcode="ND">공학</option>
							<option value="ND00" depth="2" tcode="ND">－공학일반</option>
							<option value="ND01" depth="2" tcode="ND">－건축공학</option>
							<option value="ND02" depth="2" tcode="ND">－기계공학</option>
							<option value="ND03" depth="2" tcode="ND">－산업공학</option>
							<option value="ND04" depth="2" tcode="ND">－원자력공학</option>
							<option value="ND05" depth="2" tcode="ND">－자원공학</option>
							<option value="ND06" depth="2" tcode="ND">－재료공학</option>
							<option value="ND07" depth="2" tcode="ND">－전기/제어계측공학</option>
							<option value="ND08" depth="2" tcode="ND">－전자/정보통신/컴퓨터공학</option>
							<option value="ND09" depth="2" tcode="ND">－조선/해양공학</option>
							<option value="ND10" depth="2" tcode="ND">－토목/환경공학</option>
							<option value="ND11" depth="2" tcode="ND">－화학/생물공학</option>
							<option value="NE" depth="1" tcode="NE">의약학</option>
							<option value="NE00" depth="2" tcode="NE">－의학일반</option>
							<option value="NE01" depth="2" tcode="NE">－간호학</option>
							<option value="NE02" depth="2" tcode="NE">－수의학</option>
							<option value="NE03" depth="2" tcode="NE">－약학</option>
							<option value="NE04" depth="2" tcode="NE">－의학</option>
							<option value="NE05" depth="2" tcode="NE">－치의학</option>
							<option value="NE06" depth="2" tcode="NE">－한의학</option>
							<option value="NF" depth="1" tcode="NF">농수해양학</option>
							<option value="NF00" depth="2" tcode="NF">－농수해양일반</option>
							<option value="NF01" depth="2" tcode="NF">－농학</option>
							<option value="NF02" depth="2" tcode="NF">－수산학</option>
							<option value="NF03" depth="2" tcode="NF">－식품과학</option>
							<option value="NF04" depth="2" tcode="NF">－임학</option>
							<option value="NF05" depth="2" tcode="NF">－조경학</option>
							<option value="NF06" depth="2" tcode="NF">－축산학</option>
							<option value="NF07" depth="2" tcode="NF">－해상운송학</option>
							<option value="NG" depth="1" tcode="NG">예술체육</option>
							<option value="NG00" depth="2" tcode="NG">－예술체육일반</option>
							<option value="NG01" depth="2" tcode="NG">－건축</option>
							<option value="NG02" depth="2" tcode="NG">－디자인</option>
							<option value="NG03" depth="2" tcode="NG">－무용</option>
							<option value="NG04" depth="2" tcode="NG">－미술</option>
							<option value="NG05" depth="2" tcode="NG">－미용</option>
							<option value="NG06" depth="2" tcode="NG">－사진</option>
							<option value="NG07" depth="2" tcode="NG">－연극</option>
							<option value="NG08" depth="2" tcode="NG">－영화</option>
							<option value="NG09" depth="2" tcode="NG">－음악</option>
							<option value="NG10" depth="2" tcode="NG">－의상</option>
							<option value="NG11" depth="2" tcode="NG">－체육</option>
							<option value="NH" depth="1" tcode="NH">복합학</option>
							<option value="NH00" depth="2" tcode="NH">－복합학일반</option>
							<option value="NH01" depth="2" tcode="NH">－감성과학</option>
							<option value="NH02" depth="2" tcode="NH">－과학기술학/기술정책</option>
							<option value="NH03" depth="2" tcode="NH">－뇌과학</option>
							<option value="NH04" depth="2" tcode="NH">－인지과학</option>
							<option value="NI" depth="1" tcode="NI">교양</option>
							<option value="NI00" depth="2" tcode="NI">－교양일반</option>
							<option value="NI01" depth="2" tcode="NI">－자기계발</option>
							</select> 
							<img src="http://www.dbpia.co.kr/img/kr/search/sbtn_right_on.jpg"
							name="moveright" style="padding-bottom: 8px; cursor: pointer;"
							alt="뒤로 이동" title="뒤로 이동"> 
							<img src="http://www.dbpia.co.kr/img/kr/search/sbtn_left.jpg"
							name="moveleft" style="padding-bottom: 8px; cursor: pointer;"
							alt="앞으로 이동" title="앞으로 이동"> 
							<select id="right_category"	name="right_category" size="10"></select>
					</div>
				</dd>
			</dl>

			<dl class="write-style search-criteria">
				<dt>
					<span class="b dot-black">전자저널 유형</span>
				</dt>
				<dd>
					<input type="checkbox" id="pcatType_0" name="dptypecode"
						title="학술저널" value="025001" > <label for="pcatType_0">학술저널</label>

					<input type="checkbox" id="pcatType_1" name="dptypecode"
						title="학술대회자료" value="025002"> <label for="pcatType_1">학술대회자료</label>

					<input type="checkbox" id="pcatType_2" name="dptypecode"
						title="학술연구보고서" value="025004"> <label for="pcatType_2">학술연구보고서</label>

					<input type="checkbox" id="pcatType_3" name="dptypecode"
						title="전문잡지" value="025003"> <label for="pcatType_3">전문잡지</label>
				</dd>
			</dl>

			<dl class="write-style search-criteria">
				<dt class="search-criteria-year">
					<span class="b dot-black">발행연도</span>
				</dt>
				<dd class="search-criteria-year">
					<div>
						<input type="radio" id="year_01" name="PublishDate" value="11"
							title="전체" checked="checked"> <label for="year_01" class="blank">전체</label>
						<input type="radio" id="year_02" name="PublishDate" value="4" title="직접 선택"> 
							<label for="year_02" class="none">직접 선택</label> 
						<select name="PublishSttDate" title="발행연도" setdisplaycount="5" disabled="disabled">
							<option value="sel">선택</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
							<option value="1959">1959</option>
							<option value="1958">1958</option>
							<option value="1957">1957</option>
							<option value="1956">1956</option>
							<option value="1955">1955</option>
							<option value="1954">1954</option>
							<option value="1953">1953</option>
							<option value="1952">1952</option>
							<option value="1951">1951</option>
							<option value="1950">1950</option>
							<option value="1949">1949</option>
							<option value="1948">1948</option>
							<option value="1947">1947</option>
							<option value="1946">1946</option>
							<option value="1945">1945</option>
							<option value="1944">1944</option>
							<option value="1943">1943</option>
							<option value="1942">1942</option>
							<option value="1941">1941</option>
							<option value="1940">1940</option>
							<option value="1939">1939</option>
							<option value="1938">1938</option>
							<option value="1937">1937</option>
							<option value="1936">1936</option>
							<option value="1935">1935</option>
							<option value="1934">1934</option>
							<option value="1933">1933</option>
							<option value="1932">1932</option>
							<option value="1931">1931</option>
							<option value="1930">1930</option>
							<option value="1929">1929</option>
							<option value="1928">1928</option>
							<option value="1927">1927</option>
							<option value="1926">1926</option>
							<option value="1925">1925</option>
							<option value="1924">1924</option>
							<option value="1923">1923</option>
							<option value="1922">1922</option>
							<option value="1921">1921</option>
							<option value="1920">1920</option>
							<option value="1919">1919</option>
							<option value="1918">1918</option>
							<option value="1917">1917</option>
							<option value="1916">1916</option>
							<option value="1915">1915</option>
							<option value="1914">1914</option>
							<option value="1913">1913</option>
							<option value="1912">1912</option>
							<option value="1911">1911</option>
							<option value="1910">1910</option>
							<option value="1909">1909</option>
							<option value="1908">1908</option>
							<option value="1907">1907</option>
							<option value="1906">1906</option>
							<option value="1905">1905</option>
							<option value="1904">1904</option>
							<option value="1903">1903</option>
							<option value="1902">1902</option>
							<option value="1901">1901</option>
							<option value="1900">1900</option>
						</select>
						 - 
						<select name="PublishEndDate" title="발행연도" setdisplaycount="5"
							disabled="disabled">
							<option value="sel">선택</option>
							<option value="2018">2018</option>
							<option value="2017">2017</option>
							<option value="2016">2016</option>
							<option value="2015">2015</option>
							<option value="2014">2014</option>
							<option value="2013">2013</option>
							<option value="2012">2012</option>
							<option value="2011">2011</option>
							<option value="2010">2010</option>
							<option value="2009">2009</option>
							<option value="2008">2008</option>
							<option value="2007">2007</option>
							<option value="2006">2006</option>
							<option value="2005">2005</option>
							<option value="2004">2004</option>
							<option value="2003">2003</option>
							<option value="2002">2002</option>
							<option value="2001">2001</option>
							<option value="2000">2000</option>
							<option value="1999">1999</option>
							<option value="1998">1998</option>
							<option value="1997">1997</option>
							<option value="1996">1996</option>
							<option value="1995">1995</option>
							<option value="1994">1994</option>
							<option value="1993">1993</option>
							<option value="1992">1992</option>
							<option value="1991">1991</option>
							<option value="1990">1990</option>
							<option value="1989">1989</option>
							<option value="1988">1988</option>
							<option value="1987">1987</option>
							<option value="1986">1986</option>
							<option value="1985">1985</option>
							<option value="1984">1984</option>
							<option value="1983">1983</option>
							<option value="1982">1982</option>
							<option value="1981">1981</option>
							<option value="1980">1980</option>
							<option value="1979">1979</option>
							<option value="1978">1978</option>
							<option value="1977">1977</option>
							<option value="1975">1975</option>
							<option value="1974">1974</option>
							<option value="1973">1973</option>
							<option value="1972">1972</option>
							<option value="1971">1971</option>
							<option value="1970">1970</option>
							<option value="1969">1969</option>
							<option value="1968">1968</option>
							<option value="1967">1967</option>
							<option value="1966">1966</option>
							<option value="1965">1965</option>
							<option value="1964">1964</option>
							<option value="1963">1963</option>
							<option value="1962">1962</option>
							<option value="1961">1961</option>
							<option value="1960">1960</option>
							<option value="1959">1959</option>
							<option value="1958">1958</option>
							<option value="1957">1957</option>
							<option value="1956">1956</option>
							<option value="1955">1955</option>
							<option value="1954">1954</option>
							<option value="1953">1953</option>
							<option value="1952">1952</option>
							<option value="1951">1951</option>
							<option value="1950">1950</option>
							<option value="1949">1949</option>
							<option value="1948">1948</option>
							<option value="1947">1947</option>
							<option value="1946">1946</option>
							<option value="1945">1945</option>
							<option value="1944">1944</option>
							<option value="1943">1943</option>
							<option value="1942">1942</option>
							<option value="1941">1941</option>
							<option value="1940">1940</option>
							<option value="1939">1939</option>
							<option value="1938">1938</option>
							<option value="1937">1937</option>
							<option value="1936">1936</option>
							<option value="1935">1935</option>
							<option value="1934">1934</option>
							<option value="1933">1933</option>
							<option value="1932">1932</option>
							<option value="1931">1931</option>
							<option value="1930">1930</option>
							<option value="1929">1929</option>
							<option value="1928">1928</option>
							<option value="1927">1927</option>
							<option value="1926">1926</option>
							<option value="1925">1925</option>
							<option value="1924">1924</option>
							<option value="1923">1923</option>
							<option value="1922">1922</option>
							<option value="1921">1921</option>
							<option value="1920">1920</option>
							<option value="1919">1919</option>
							<option value="1918">1918</option>
							<option value="1917">1917</option>
							<option value="1916">1916</option>
							<option value="1915">1915</option>
							<option value="1914">1914</option>
							<option value="1913">1913</option>
							<option value="1912">1912</option>
							<option value="1911">1911</option>
							<option value="1910">1910</option>
							<option value="1909">1909</option>
							<option value="1908">1908</option>
							<option value="1907">1907</option>
							<option value="1906">1906</option>
							<option value="1905">1905</option>
							<option value="1904">1904</option>
							<option value="1903">1903</option>
							<option value="1902">1902</option>
							<option value="1901">1901</option>
							<option value="1900">1900</option>
						</select>
					</div>
					<div>
						<input type="radio" id="year_03" name="PublishDate" value="1"
							title="최근 1년"> <label for="year_03">최근 1년</label> <input
							type="radio" id="year_04" name="PublishDate" value="2"
							title="최근 3년"> <label for="year_04">최근 3년</label> <input
							type="radio" id="year_05" name="PublishDate" value="3"
							title="최근 5년"> <label for="year_05">최근 5년</label> <input
							type="radio" id="year_06" name="PublishDate" value="10"
							title="최근 10년"> <label for="year_06">최근 10년</label>
					</div>
				</dd>
			</dl>
		</div>

		<div class="text-center mb40">
			<a href="javascript:;" class="mr06"><img
				src="http://www.dbpia.co.kr/img/kr/search/btn_research02.jpg"
				name="doSearch" alt="검색" title="검색" style="cursor: pointer;"><span
				class="hidden">검색</span></a> <a href="javascript:;"><img
				src="http://www.dbpia.co.kr/img/kr/search/btn_insert_reset.jpg"
				name="searchReset" alt="검색 입력 초기화" title="검색 입력 초기화"
				style="cursor: pointer;"><span class="hidden">검색 입력 초기화</span></a>
		</div>
	</div>


</body>
</html>