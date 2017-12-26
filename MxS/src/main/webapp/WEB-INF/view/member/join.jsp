<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="model.*" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">

#container{width:850px; height:800px; margin:0 auto;}
th{background:gray;}
h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4, .h5, .h6, strong, label {
    font-weight: 700;
    font-family: '나눔고딕','NanumGothic','맑은 고딕','Malgun Gothic','돋움',dotum,'Apple SD Gothic Neo',sans-serif;
}
.user_wrap .btn_wrap button.user.ok {
    display: inline-block;
    width: 123px;
    height: 45px;
    background-position: -150px -300px;
    vertical-align: middle;
    margin-left: 7px;
}

.user_wrap .btn_wrap button.user.cancel {
    display: inline-block;
    width: 123px;
    height: 45px;
    background-position: 0 -300px;
    vertical-align: middle;
    margin-left: 300px;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
function validate() {
        var id = document.getElementById('memberId');
        var idCheck = document.getElementById('idCheck');
        var pass = document.getElementById('memberPw');
        var pass1 = document.getElementById('memberPw1');
        var name = document.getElementById('memberName');
        var email = document.getElementById('memberEmail');
        var tel1 = document.getElementById('memberPhon1');
        var tel2 = document.getElementById('memberPhon2');
        var tel3 = document.getElementById('memberPhon3');
        var year = document.getElementById('memberBirthYear');
        var month = document.getElementById('memberBirthMonth');
        var day = document.getElementById('memberBirthDay');
        var zipNew = document.getElementById('memberZipNew');
        var roadAdd = document.getElementById('memberRoadAdd');
        var detailedAddress = document.getElementById('memberDetailedAddress');
        var check = document.getElementById('check');
        // 아이디 검사
        // 첫 글자는 반드시 영문 소문자, 4~12자로 이루어지고, 숫자가
        // 하나 이상 포함되어야 한다. 영문소문자와 숫자로만 이루어져야한다.
        // \d : [0-9]와 같다.       {n,m} : n에서 m까지 글자수
        if(!chk(/^[a-zA-Z][a-z\d]{4,12}$/, id, "첫글자는 영문 대/소문자, 4~12자 입력할것!"))
        	return false;
        if(!chk(/[0-9]/, id, "숫자 하나이상포함!"))
               return false;
        if(id.value==""){
			alert("아이디 중복확인을 하세요");
			return false;
		}
        if(check.value == "N"){
        	alert('중복 체크 하세요!');
        	return false;
        }
        
     	// 비밀번호 확인 검사
        if(pass.value == ""){
 			alert("비밀번호를 입력하세요!");
 			return false;
 		}
        if(!chk(/[a-zA-Z][a-z\d]/, pass, "영문 하나이상포함!"))
            return false;
        if(!chk(/[0-9]/, pass, "숫자 하나이상포함!"))
            return false;
        if(pass.value.length < 8 || pass.value.length > 12){
			alert("비밀번호 8~12이상 적어주세요.");
			return false;
		}
        if(pass.value!=pass1.value) {
               alert("비밀번호 확인!");
               return false;
        }
    	// 이름 검사
        // 2글자 이상, 한글만
        // 통과하지 못하면 한글로 2글자 이상을 넣으세요~ alert 출력!
        if(name.value == ""){
        	alert("이름을 입력하세요");
        	name.focus();
        	return false;
        }
        if(!chk(/^[가-힝]{2,}$/, name, "한글만 입력하세요!!!(2글자 이상)"))
        	return false;

  
    	
        if (year.value == "" || month.value == "" || day.value == "") {
        	alert("생년월일을 입력하세요");
        	 }
        if (!chk(/^[12][0-9]{3}$/, year, "연도 4자리 입력 (예시 : 2017)"))
            return false;
	    if (!chk(/^[01][0-9]{1}$/, month, "월 2자리 입력 (예시 : 12)"))
	            return false;
	    if (!chk(/^[0123][0-9]{1}$/, day, "날짜 2자리 입력 (예시 : 25)"))
	            return false;
   		
        // 이메일 검사
        // 4글자 이상(\w = [a-zA-Z0-9_], [\w-\.]) @가 나오고
        // 1글자 이상(주소). 글자 가 1~3번 반복됨
       	if(!chk(/^[\w]{4,}@[\w]+(\.[\w-]+){1,3}$/, email, "이메일 형식에 어긋납니다."))
               return false;
    	
// 전화번호 검사
        
        // 전화번호 앞자리는 2~3자리 숫자, 두번째 자리는 3~4자리 숫자
        // 세번째 자리는 4자리 숫자
        if (tel1.value == "" || tel2.value == "" || tel3.value == "") {
        	alert("번호를 입력하세요");
               }
        if (!chk(/^01(0|1|2[0-9])$/, tel1, "앞 번호 3자리 이상 입력"))
            return false;
   		 if (!chk(/^[0-9]{4}$/, tel2, "가운데 번호 4자리 입력"))
            return false;
        if (!chk(/^[0-9]{4}$/, tel3, "뒷 번호 4자리 이상 입력"))
	   		return false;
        if (zipNew.value == "") {
        	if (!chk(/^[0-9]{8}$/, zipNew, "우편번호를 입력하세요"))
                       return false;
        }
        if (roadAdd.value == "") {
        	alert("주소를 입력하세요");
                       return false;
        }
        if (detailedAddress.value == "") {
        	alert("상세주소를 입력하세요");
                       return false;
        }
        
}

        function chk(re, e, msg) {
               if (re.test(e.value)) {
                       return true;
               }
               alert(msg);
               e.value = "";
               e.focus();
               return false;
        }
        
        
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('memberZipNew').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('memberRoadAdd').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('memberDetailedAddress').focus();
            }
        }).open();
    }
    
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){	
		$("#idCheck").bind('click', function() {
			var chk =/^[a-zA-Z][a-z\d]{4,12}$/g;
			var eg = /[0-9]/g;
			$.ajax({
		       url : "idcheck",
		       dataType : "text",
		       type : "post",
		       data : $('.memberId').serializeArray(),
		       beforeSend : function(){
		    	   if($("#memberId").val() == ""){
		    		   alert("아이디를 입력하세요.");
		    		   return false;
		    	   }else{
		    	       if(!chk.test($('.memberId').val())) {
		    		   		alert("첫글자는 영문 대/소문자, 4~12자 입력할것!");
		    		   		$("#memberId").val("");
		    		   	 	$("#memberId").focus();
		    	        	return false;
		    	   		}
		    	       if(!eg.test($('.memberId').val())){
		    	    	   	alert("숫자 하나이상포함!");
		                	return false;
		    	       }

		    	   }
		    	   
		       },
		       success : function(data) {
		          if(data == "N"){
		        	  $("#idChecked").text("아이디가 중복됩니다.\n다시시도하세요.");
		        	  $("#memberId").val("");
		        	  $("#memberId").focus();
		        	  return;
		          }else{
		        	  $("#idChecked").text("사용 가능한 아이디 입니다.");
		        	  $("#check").val("Y");
		        	  $("#memberPw").focus();
		          }
			    },
	            error : function(request, status, error) {
	                alert("code:" + request.status + "\n" + "error:" + error);
	             }
		});
				return false;
	});
});
</script>

</head>
<body>
<form:form commandName="member" action="success" onsubmit="return validate();">
<div id="container" class="width-fixed">
	<div class="user_wrap" id="userWrap">
		<h2 class="mb35">가입정보입력<span class="ml10"><span class="c_purple text-sub">(*표시 항목 필수입력)</span></span>
			<span class="step step2"></span>
		</h2>
		<div id="userJoinContainer" class="form-style">
			
			<table border = "2" class="form-table" summary="정보입력">
				<caption class="blind2">회원정보입력 표 : 아이디, 비밀번호, 비밀번호 확인,  이름, 성별 , 생년월일, 이메일, 전화번호, 등 <br/>회원가입에 필요한 정보를 입력할 수 있습니다.</caption>
				<colgroup>
					<col width="181">
					<col width="">
				</colgroup>
				<tr>
					<th scope="row" id="th_joininput_info_id"><label for="inputtext1">*아이디</label></th>
					<td headers="th_joininput_info_id">
						<input type = "hidden" id = "check" value="N"/>
						<form:input path="memberId" value = "" id="memberId" class = "memberId" maxlength="12"/>
						<button type="button" id="idCheck">중복확인</button><span class="text-sub ml10">첫글자는 영문 대/소문자, 4~12자 입력하세요.</span><div class="idChecked" id = "idChecked">아이디를 입력하세요</div>
						
						<div class = "yoo"></div>
					</td>
				</tr>
				<tr>
					<th scope="row" id="th_joininput_info_password"><label for="inputtext2">*비밀번호</label></th>
					<td headers="th_joininput_info_password">
						<form:password path="memberPw" maxlength="12" value="" />
						<span class="text-sub" style="margin-left:85px;">영문, 숫자 조합 8자리 이상</span>
					</td>
				</tr>
				<tr>
					<th scope="row" id="th_joininput_info_passwordconfirm"><label for="inputtext3">*비밀번호 확인</label></th>
					<td headers="th_joininput_info_passwordconfirm">
						<input type = password id="memberPw1" maxlength="16" value="" />
					</td>
				</tr>
				<tr>
					<th scope="row" id="th_joininput_info_name"><label for="inputtext4">*이름</label></th>
					<td headers="th_joininput_info_name">
						<form:input path="memberName" maxlength="15" value="" />
						<label for="inputtext4" style="margin-left:80px;">*성별</label>
						<form:radiobutton path="memberGender" value="M" label="남자" style="margin-left:20px;" checked="checked"/>
						<form:radiobutton path="memberGender" value="F" label="여자" style="margin-left:10px;"/>
					</td>
				</tr>
				<tr>
					<th scope="row" id="th_joininput_info_birthday">*생년월일</th>
					<td headers="th_joininput_info_birthday">
						<form:input path="memberBirthYear" value="" maxlength="4"/>
						<span class="text-sub ml5 mr8">년</span>
						<form:input path="memberBirthMonth" value=""  maxlength="2" />
						<span class="text-sub ml5 mr8">월</span>
						<form:input path="memberBirthDay" value="" maxlength="2" />
						<span class="text-sub ml5 mr8">일</span>
					</td>
				</tr>
				<tr>
					<th scope="row" id="th_joininput_info_email"><label for="inputtext9">*이메일</label></th>
					<td headers="th_joininput_info_email">
						<form:input path="memberEmail" maxlength="30" value="" />
					</td>
				</tr>
				<tr>
					<th scope="row" id="th_joininput_info_mobile">*휴대폰</th>
					<td headers="th_joininput_info_mobile">
						<form:input path="memberPhon1" name="mobile1" id = "memberPhon1" validate="number" allowtype="number" class="w67"  maxlength="3"/>
						<span class="text-sub ml2 mr2">-</span>
						<form:input path="memberPhon2" name="mobile2" id = "memberPhon2" validate="number" allowtype="number"  maxlength="4"/>
						<span class="text-sub ml2 mr2">-</span>
						<form:input path="memberPhon3" name="mobile3" id = "memberPhon3" validate="number" allowtype="number"  maxlength="4"/>
					</td>
				</tr>
				<tr>
					<th scope="row" id="th_joininput_info_address">주소</th>
					<td headers="th_joininput_info_address">
						<input type="hidden" title="주소" name="zipCode" value="" />
						<div class="mb5 clearfix">
							<span class="text-sub pt5 pr10 pull-left" id="zipCodeNew"><form:input path = "memberZipNew" id = "memberZipNew" size="2" value = "" /></span>
							<button type="button" class="img_btn user input_address" onclick = "sample6_execDaumPostcode();">우편번호 검색</button>
						</div>

						<div>
							<p class="text-sub_st2" id="roadAddr">도로명주소 : <form:input path = "memberRoadAdd" id = "memberRoadAdd" size="47" value = "" /></p>
							<p class="text-sub_st2" id="detailedAddress">상세주소 : <form:input path = "memberDetailedAddress" id = "memberDetailedAddress" size="50" value = "" /></p>
						</div>
						<!-- <div>
							<input type="text" title="주소" name="addr02" style="width: 300px;" readonly="readonly">
							<span class="text-sub ml10">상세 주소 정보는 받지 않습니다.</span>
						</div> -->
					</td>
				</tr>
				
				
			</table>
			<input type="hidden" name="auth_Gubun" value="null" />
		</div>
		<!-- 마케팅 활용을 위한 개인정보 수집 이용 안내 -->
		<h2 class="mb35 mt50">마케팅 활용을 위한 개인정보 수집 이용 안내</h2>
		<div class="personal_information_wrap">
			<div id="" class="form-style">
				<table border = "2" class="form-table">
					<caption class="blind2">개인정보 수집 및 마케팅 활용을 위한 개인정보 수집 목적, 수집 항목, 보유 및 이용 기간, 동유여부</caption>
					<colgroup>
						<col width="35%">
						<col width="20%">
						<col width="30%">
						<col width="">
					</colgroup>
					<thead>
						<tr>
							<th scope="col" id="th_privacy_info_purpose">수집 목적</th>
							<th scope="col" id="th_privacy_info_item" >수집 항목</th>
							<th scope="col" id="th_privacy_info_term" >보유 및 이용 기간</th>
							<th scope="col" id="th_privacy_info_agree" >동의여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td headers="th_privacy_info_purpose" class="pl20">
									당사 신규 상품/서비스 안내 및 권유.<br>
									사은/할인 행사 등 각종 이벤트 정보 등의 안내 및 권유
							</td>
							<td headers="th_privacy_info_item">
									이메일, 휴대폰번호
							</td>
							<td headers="th_privacy_info_term">
									회원 탈퇴 시 혹은 이용 목적 달성 시까지
							</td>
							<td headers="th_privacy_info_agree" class="ml20">
								<label for="marketingRuleAgreeY"><form:radiobutton path="memberSet" value="Y"/><strong>동의</strong></label>
								<label for="marketingRuleAgreeN"><form:radiobutton path="memberSet" value="N" checked="checked"/><strong>동의 안함</strong></label>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<br/>
		<!-- //마케팅 활용을 위한 개인정보 수집 이용 안내 -->
		<div class="btn_wrap text-center mt50">
			<button type="button" class="img_btn user cancel mr7" onClick="history.back();" >취소</button>
			<button type="submit" class="img_btn user ok ml7" id="userJoinOk">확인</button>
		</div>
	</div> <!-- user_wrap -->
</div>
</form:form>
</body>
</html>