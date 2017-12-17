<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script charset="UTF-8" type="text/javascript" src="http://t1.daumcdn.net/cssjs/postcode/1513129253770/171213.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
 
                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
 
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipNew').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('roadAdd').value = fullRoadAddr;
                window.close();
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    //예상되는 도로명 주소에 조합형 주소를 추가한다.
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    document.getElementById('guide').innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
 
                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
 
                } else {
                    document.getElementById('guide').innerHTML = '';
                }
                
            }
        }).open();
    }
    
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
/*$(function(){   
      $("#idCheck").bind('click', function() {
//           alert($("#memberId").val()); 
          var memberId = $("#memberId").val();
          $.ajax({
               type: "POST", 
               url: "idCheck",
               dataType: "json",
               data : $('.memberId').serializeArray(),
               success: function(result){
                  $('.idChecked').html(result);
                 //$('.text-sub ml10').html(result);
               }
              }); 
         return false;
      });
});
*/
$(function(){   
      $("#idCheck").bind('click', function() {
            $.ajax({
             url : "idcheck",
             dataType : "html",
             type : "post",
             data : $('.memberId').serializeArray(),
             success : function(result) {
                $('.idChecked').html(result);
          },
            error : function(request, status, error) {
                alert("code:" + request.status + "\n" + "error:" + error);
             }
      });
            return false;
   });
});


/*




function validate() {
        var id = document.getElementById('memberId');
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
        // 아이디 검사
        // 첫 글자는 반드시 영문 소문자, 4~12자로 이루어지고, 숫자가
        // 하나 이상 포함되어야 한다. 영문소문자와 숫자로만 이루어져야한다.
        // \d : [0-9]와 같다.       {n,m} : n에서 m까지 글자수
        if(!chk(/^[a-zA-Z][a-z\d]{3,11}$/, id, "첫글자는 영문 대/소문자, 4~12자 입력할것!"))
               return false;
        if(!chk(/[0-9]/, id, "숫자 하나이상포함!"))
               return false;
        if(id.value==""){
         alert("아이디 중복확인을 하세요");
         return false;
      }
        
        // 비밀번호 확인 검사
        if(pass.value == ""){
          alert("비밀번호를 입력하세요!");
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
           return false;
        }
       
        if (year.value == "" || month.value == "" || day.value == "") {
           alert("생년월일을 입력하세요");
           if (!chk(/^[0-9]{4}$/, year, "연도 4자리 입력 (예시 : 2017)"))
                       return false;
               if (!chk(/^[0-9]{2}$/, month, "월 2자리 입력 (예시 : 12)"))
                       return false;
               if (!chk(/^[0-9]{2}$/, day, "날짜 2자리 입력 (예시 : 29)"))
                       return false;
               }
         
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
               if (!chk(/^01(0|1[0-9])$/, tel1, "앞 번호 3자리 이상 입력"))
                       return false;
               if (!chk(/^[0-9]{3,}$/, tel2, "전화 번호 3자리 이상 입력"))
                       return false;
               if (!chk(/^[0-9]{4}$/, tel3, "뒷 번호 4자리 입력"))
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
        }*/
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
         <form:input path="memberNum" value=""/>
         <input type="hidden" id="childrenGubun" name="childrenGubun" value="null">
         
         <table border = "2" class="form-table" summary="정보입력">
            <caption class="blind2">회원정보입력 표 : 아이디, 비밀번호, 비밀번호 확인,  이름, 성별 , 생년월일, 이메일, 전화번호, 등 <br/>회원가입에 필요한 정보를 입력할 수 있습니다.</caption>
            <colgroup>
               <col width="181">
               <col width="">
            </colgroup>
            <tr>
               <th scope="row" id="th_joininput_info_id"><label for="inputtext1">*아이디</label></th>
               <td headers="th_joininput_info_id">
                  <form:input path="memberId" value = "" id="memberId" class = "memberId" maxlength="12"/>
                  <button type="button" id="idCheck">중복확인</button><div class="idChecked" id = "idChecked">아이디를 입력하세요</div>
                  <span class="text-sub ml10">영문이나 숫자 혹은 그 조합 8~12자리</span>
               </td>
            </tr>
            <tr>
               <th scope="row" id="th_joininput_info_password"><label for="inputtext2">*비밀번호</label></th>
               <td headers="th_joininput_info_password">
                  <form:password path="memberPw" maxlength="16" value="" onkeyup="passwordLengthCheck(this)"/>
                  <span class="text-sub" style="margin-left:85px;">영문, 숫자, 특수문자 중 2가지 이상 조합 10자리 이상</span>
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
                  <form:input path="memberPhon1" name="mobile1" validate="number" allowtype="number" class="w67"  maxlength="3"/>
                  <span class="text-sub ml2 mr2">-</span>
                  <form:input path="memberPhon2" name="mobile2" validate="number" allowtype="number"  maxlength="4"/>
                  <span class="text-sub ml2 mr2">-</span>
                  <form:input path="memberPhon3" name="mobile3" validate="number" allowtype="number"  maxlength="4"/>
               </td>
            </tr>
            <tr>
               <th scope="row" id="th_joininput_info_address">주소</th>
               <td headers="th_joininput_info_address">
                  <input type="hidden" title="주소" name="zipCode" value="" />
                  <div class="mb5 clearfix">
                     <span class="text-sub pt5 pr10 pull-left" id="zipCodeNew"><input type = "text" id = "zipNew" size="2"></span>
                     <button type="button" class="img_btn user input_address" onclick = "sample4_execDaumPostcode()">우편번호 검색</button>
                  </div>

                  <div>
                     <p class="text-sub_st2" id="roadAddr">도로명주소 : <input type = "text" id = "roadAdd" size="47"></p>
                     <p class="text-sub_st2" id="detailedAddress">상세주소 : <input type = "text" id = detailedAddress size="50"></p>
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
         <button type="button" class="img_btn user cancel mr7" onclick="showMenu('user-join')" >취소</button>
         <button type="submit" class="img_btn user ok ml7" id="userJoinOk">확인</button>
      </div>
   </div> <!-- user_wrap -->
</div>
</form:form>
</body>
</html>