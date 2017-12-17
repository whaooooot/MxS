<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./css/mycoupon.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

	 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
   
<body>

	<div class="container">
		<div class="row">
<div class="col-detail" id="mycgv_contents">
       
    <div class="tit-mycgv">
   <h3>MsX 할인쿠폰 내역</h3>
</div>
<div class="set-btn">
    <a href="./register.aspx" class="round inblack"><span>MsX 할인쿠폰 등록</span></a>
</div>
<div class="tit-mycgv">
   <h4>MsX 할인쿠폰 보유(등록) 내역</h4>
</div>
<!--쿠폰종류 탭 활성화시 button 클래스에 on을 넣어주세요 작업다 완료시 이 주석은 제거해주세요-->
<div class="sort_coupon">
<input type="hidden" id="isTown" name="isTown" value="1">
<input type="hidden" id="isType" name="isType" value=""> 
</div>
<div class="tbl-data">
    <table summary="할인쿠폰(쿠폰번호)에 따른 유효기간 및 등록일 표기">
        <caption>MsX 할인쿠폰 보유(등록) 내역 리스트</caption>
      <colgroup>
          <col width="25%">
          <col width="25%">
          <col width="25%">
          <col width="*">
      </colgroup>
        <thead>
            <tr>
                <th scope="col">쿠폰이름</th>
                <th scope="col">사용기간</th>
                <th scope="col">사용가능경로</th>
                <th scope="col">쿠폰정보</th>
            </tr>
        </thead>
        <tbody>
            
            
            <tr>
                <td colspan="4" class="nodata">MsX 할인쿠폰 보유(등록)내역이 존재하지 않습니다.</td>
            </tr>
            
        </tbody>
    </table>
</div>

<div class="layer-wrap" id="discountCoupon" style="top:262px; display: none;"><div class="popwrap" style="width:554px;margin-top:0px;margin-left:-190px">
   <h1>MsX할인쿠폰</h1>
   <div class="pop-contents">
   <!-- Contents Addon -->
      <div class="coupon-view-cont">
         <div class="view-hd">
            <img class="img-coupon" src="http://img.cgv.co.kr/R2014/images/common/mycgv_coupon/img_coupon1.jpg" alt="">
            <h2 class="view-tit" title=""><span id="namesub"></span></h2>
            <div class="view-txt"><span id="nosub"></span></div>
         </div>

         <div class="view-bd">
            <h3 class="view-stit">할인설명</h3>
            <ul>
               <li><span id="descriptionsub"></span></li>
            </ul>
         </div>
         
      </div>
   <!-- //Contents Addon -->
   </div>
   <button type="button" class="btn-close">결제내역 팝업 닫기</button>
</div></div>

<div class="paged">
<!--?xml version="1.0" encoding="utf-8"?-->
<div class="paging">
</div>
</div>
<div class="tit-mycgv">
   <h4>MsX 할인쿠폰 사용내역</h4>
</div>
<form id="form1" method="get" novalidate="novalidate">
    <div class="sect-use-expense">
        <div class="box-polaroid">
           <div class="box-inner">
                <strong class="period">조회기간</strong>
                <span id="period_wrap"><button data-period="2" data-type="w" class="round gray"><span>2주일</span></button><button data-period="1" data-type="m" class="round gray"><span>1개월</span></button><button data-period="3" data-type="m" class="round gray"><span>3개월</span></button></span>
                <span>3개월 이전의 내역은 자동 삭제됩니다.</span>
                <p>
                   <label for="startdate">시작일 입력</label><input type="text" id="startdate" name="startdate" value="2017-11-11" datepicker="datepicker" class="hasDatepicker" readonly="readonly"><button type="button" class="ui-datepicker-trigger" title="월이동:PageUp/PageDown, 일이동:Ctrl+방향키"><span>시작일 선택</span></button> ~ 
                   <label for="enddate">종료일 입력</label><input type="text" id="enddate" name="enddate" value="2017-12-11" datepicker="datepicker" class="hasDatepicker" readonly="readonly"><button type="button" class="ui-datepicker-trigger" title="월이동:PageUp/PageDown, 일이동:Ctrl+방향키"><span>종료일 선택</span></button>
                   <button type="submit" class="round inblack"><span>조회하기</span></button> <!-- type="submit" 확인요청 -->
               </p>
            </div>
        </div>
    </div>
</form>
<div class="tbl-data">
    <table summary="영화관람권, 번호, 분류, 사용일 표기">
        <caption>MsX 기프트콘 사용내역 리스트</caption>
      <colgroup>
          <col width="*">
          <col width="25%">
          <col width="12%">
            <col width="25%">
      </colgroup>
        <thead>
            <tr>
                <th scope="col">쿠폰이름</th>
                <th scope="col">쿠폰번호</th>
                <th scope="col">사용일</th>
                <th scope="col">관람극장</th>
            </tr>
        </thead>
        <tbody>
            
            
            <tr>
                <td colspan="4" class="nodata">MsX 할인쿠폰 사용내역이 존재하지 않습니다.</td>
            </tr>
            
        </tbody>
    </table>
</div>
<div class="sect-box-descri">
   <h4>MsX 예매 관련 정책 안내</h4>
   <!-- Box Moudle -->
   <div class="box-polaroid">
       <div class="box-inner">
           <ul>
               <li>
                  <dl>
                     <dt>이용안내</dt>
                     <dd>
                        <ul>
                           <li>등록하신 쿠폰은 홈페이지 예매 시, 결제수단 &gt; 할인/무료/ 포인트 &gt; 할인쿠폰에서 사용 가능합니다.</li>
                           <li>특정 영화/극장 전용 쿠폰일 경우, 지정 영화 및 극장에서 명시된 사용기간 내에만 사용이 가능합니다.</li>
                        <li>온라인 전용으로 발행된 쿠폰의 경우에는 현장 사용이 불가능합니다.</li>
                        <li>영화 예매 시에는 다른 결제수단(신용카드, 예매쿠폰, 계좌이체 등)과 병행하여 사용이 가능합니다.</li>
                                <li>MsX홈페이지 예매 후 예매취소는 MsX홈페이지에서 상영시간 20분 전까지 가능합니다.</li>
                                <li>취소 시 현금 환불은 되지 않으며,기존 쿠폰으로 유효기간 중에서 재 사용하실 수 있습니다.</li>
                                <li>유효기간이 경과한 미사용 쿠폰(관람권)의 경우, 지난 3개월 내역만 보유(등록)내역에서 확인하실 수 있습니다.</li>
                                <li>기타 할인쿠폰에 대한 문의사항이 있으실 경우, 1544-1122 또는 홈페이지를 이용해 주시기 바랍니다.</li>
                        </ul>
                     </dd>
                  </dl>
               </li>
           </ul>
       </div>
   </div>
   <!-- //Box Moudle -->
</div>
<!--?xml version="1.0" encoding="utf-8"?-->
<div class="paging">
</div>
   </div>
   </div>
   </div>
</body>

	 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
   
</html>