<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./css/mypointadd.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="col-detail" id="mycgv_contents">
       
  <input type="hidden" id="isUSER" name="isUSER" value="N">
<div class="tit-mycgv">
   <h3>MsX 포인트</h3>
</div>
<div class="tit-mycgv">
   <h4>매점이용 포인트 적립</h4>
</div>

<div class="sect-register onepoint">
    <p>
        <strong>매점이용 포인트 적립</strong>
        <span>영수증에 표기되어있는 적립번호와 인증번호를 입력해 주세요.</span><br>
        <span>MsX샵은 현장에서만 적립이 가능하며, 홈페이지/모바일을 통한 사후 적립은 불가합니다.</span>
    </p>
    <form id="form1" method="post" novalidate="novalidate">
        <div class="box-polaroid">
           <div class="box-inner">
                <label for="code1"><strong>적립번호</strong></label>
                <input type="text" class="num only-number" id="code1" name="code1" maxlength="4" length="4" required="required" title="첫번째 4자리" data-title="적립번호 첫번째자리를 " data-message="정상적으로 입력해 주세요.">
                <input type="text" class="num only-number" id="code2" name="code2" maxlength="4" length="4" required="required" title="두번째 4자리" data-title="적립번호 두번째자리를 " data-message="정상적으로 입력해 주세요.">
                <input type="text" class="num only-number" id="code3" name="code3" maxlength="4" length="4" required="required" title="세번째 4자리" data-title="적립번호 세번째자리를 " data-message="정상적으로 입력해 주세요.">
                <input type="text" class="num only-number" id="code4" name="code4" maxlength="4" length="4" required="required" title="네번째 4자리" data-title="적립번호 네번째자리를 " data-message="정상적으로 입력해 주세요.">
                <label for="password"><strong>인증번호</strong></label>
                <input type="password" id="password" name="password" maxlength="3" length="3" required="required" data-title="인증번호를 " data-message="정상적으로 입력해 주세요.">
                <button type="submit" class="round inred"><span>적립하기</span></button>
            </div>
        </div>
    </form>
</div>
<div class="tit-mycgv">
   <h4>매점&amp;MsX샵 포인트 적립내역</h4>
</div>
<div class="sect-use-expense">
    <form name="aspnetForm" method="post" action="./cafeteria.aspx?g=1" id="aspnetForm" novalidate="novalidate">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTIwOTYxMTk4NDBkZAuFCCf4Am/CybC1Dj7qLSToRAzp">
</div>

<div>

   <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="96C7E7A3">
</div>
    <div class="box-polaroid">
        <div class="box-inner">
            <strong class="period">조회기간</strong>
            <span id="period_wrap"><button data-period="2" data-type="w" class="round gray"><span>2주일</span></button><button data-period="1" data-type="m" class="round gray"><span>1개월</span></button><button data-period="3" data-type="m" class="round gray"><span>3개월</span></button><button data-period="6" data-type="m" class="round gray"><span>6개월</span></button><button data-period="12" data-type="m" class="round gray"><span>12개월</span></button><button data-period="24" data-type="m" class="round gray"><span>24개월</span></button></span>
            <p>
                <label for="startdate">시작일 입력</label><input type="text" id="startdate" name="startdate" value="2017-11-11" datepicker="datepicker" date="date" class="hasDatepicker" readonly="readonly"><button type="button" class="ui-datepicker-trigger" title="월이동:PageUp/PageDown, 일이동:Ctrl+방향키"><span>시작일 선택</span></button> ~
                <label for="enddate">종료일 입력</label><input type="text" id="enddate" name="enddate" value="2017-12-11" datepicker="datepicker" date="date" class="hasDatepicker" readonly="readonly"><button type="button" class="ui-datepicker-trigger" title="월이동:PageUp/PageDown, 일이동:Ctrl+방향키"><span>종료일 선택</span></button>
                <button type="button" id="btn_search" class="round inblack"><span>조회하기</span></button>
            </p>
        </div>
    </div>
    </form>
</div>
<div class="tbl-data">
    <table summary="보유한 매점&amp;씨네샵에 대한 번호, 적립포인트를 나타내고 있습니다.">
        <caption>매점&amp;MsX샵 포인트 적립내역</caption>
      <colgroup>
          <col width="*">
          <col width="20%">
          <col width="17%">
          <col width="17%">
          <col width="15%">
      </colgroup>
        <thead>
            <tr>
                <th scope="col">상품명(적립번호)</th>
                <th scope="col">구매극장</th>
                <th scope="col">구매시간</th>
                <th scope="col">적립시간</th>
                <th scope="col">적립(예정)/사용포인트</th>
            </tr>
        </thead>
        <tbody>
            
            
            <tr>
                <td colspan="6" class="nodata">매점상품 포인트 적립내역이 존재하지 않습니다.</td>
            </tr>
            
        </tbody>
    </table>
</div>


<!-- 매점이용 누적포인트 -->
<div class="sect-point-use marginT60">
    <div class="box-polaroid">
        <div class="box-inner">
            <strong>매점&amp;씨네샵 이용 누적 포인트</strong>
            <span><strong>0</strong>점</span>
        </div>
    </div>
</div>

<!-- CGV 예매 관련 정책 안내 Box Type -->
<div class="sect-box-descri">
   <h4>CGV 예매 관련 정책 안내</h4>
   <!-- Box Moudle -->
   <div class="box-polaroid">
       <div class="box-inner">
           <ul>
               <li>
                  <dl>
                     <dt>이용안내</dt>
                     <dd>
                        <ul>
                           <li>매점 상품 구매금액의 2%가 CJ ONE포인트로 적립됩니다.</li>
                           <li>적립일 기준으로 익일 포인트가 가용됩니다.</li>
                           <li>상품 구매 후 48시간 이내 적립에 한해 유효합니다.</li>
                           <li>1일 최대 3회 적립 가능합니다.</li>
                        </ul>
                     </dd>
                  </dl>
               </li>
           </ul>
       </div>
   </div>
   <!-- //Box Moudle -->
</div>
<!-- //CGV 예매 관련 정책 안내 Box Type -->
<form name="targetform" id="targetform" method="post" action="https://www.cgv.co.kr/user/mycgv/cjone-point/cafeteria-proc.aspx" novalidate="novalidate">
   <input type="hidden" name="coupon1No" id="coupon1No">
    <input type="hidden" name="coupon2No" id="coupon2No">
    <input type="hidden" name="coupon3No" id="coupon3No">
    <input type="hidden" name="coupon4No" id="coupon4No">

    <input type="hidden" name="passwordNo" id="passwordNo">
</form>


   </div>
</body>
</html>