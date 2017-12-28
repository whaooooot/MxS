<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./css/myticket.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">

</script>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="row">
<div class="col-detail" id="mycgv_contents">
       

    <div class="tit-mycgv">
       <h3>관람권/할인쿠폰 관리</h3>
   </div>
    <div class="set-btn">
        <a href="./register.aspx" class="round inblack"><span>MsX 영화관람권 등록</span></a>
    </div>
    <div class="tit-mycgv">
       <h4>MsX 영화관람권 보유(등록) 내역</h4>
   </div>

    <div class="tbl-data">
        <table summary="CGV 영화관람권 보유(등록) 내역 리스트">
            <caption>MsX 영화관람권 보유(등록) 내역</caption>
            <colgroup>
              <col width="*">
              <col width="25%">             
              <col width="20%">
                <col width="25%">
          </colgroup>
            <thead>
                <tr>
                    <th scope="col">관람권(번호)</th>
                    <th scope="col">분류</th>                   
                    <th scope="col">유효기간</th>
                    <th scope="col">설명</th>
                </tr>
            </thead>
            <tbody>
                
                
                <tr>
                    <td colspan="5" class="nodata">MsX 영화관람권 보유(등록)내역이 존재하지 않습니다.</td>
                </tr>
                
            </tbody>
        </table>
    </div>
      
    
    
    <div class="layer-wrap" id="discountCoupon" style="top:262px; display: none;"><div class="popwrap" style="width:554px;margin-top:0px;margin-left:-190px">
   <h1>MsX영화관람권</h1>
   <div class="pop-contents">
   <!-- Contents Addon -->
      <div class="coupon-view-cont">
         <div class="view-hd">
            <img class="img-coupon" src="http://img.cgv.co.kr/R2014/images/common/mycgv_ticket/img_ticket1.jpg" alt="">  
            <h2 class="view-tit" title=""><span id="namesub"></span></h2>
            <div class="view-txt">(<span id="nosub"></span>)</div>
         </div>

         <div class="view-bd">
            <h3 class="view-stit">관람권설명</h3>
            <ul>
               <li><span id="descriptionsub"></span></li>
            </ul>
         </div>
         
      </div>
   <!-- //Contents Addon -->
   </div>
   <button type="button" class="btn-close">결제내역 팝업 닫기</button>
</div></div>


    <div class="tit-mycgv">
       <h4>MsX 영화관람권 사용내역</h4>
   </div>

    <form id="form1" method="get" novalidate="novalidate">
        <div class="sect-use-expense">
            <div class="box-polaroid">
               <div class="box-inner">
                    <strong class="period">조회기간</strong>
                    <span id="period_wrap"><button data-period="2" data-type="w" class="round gray"><span>2주일</span></button><button data-period="1" data-type="m" class="round gray"><span>1개월</span></button><button data-period="3" data-type="m" class="round gray"><span>3개월</span></button></span>
                    <span>3개월 이전의 내역은 자동 삭제됩니다.</span>
                    <p>
                       <label for="startdate">시작일 입력</label><input type="text" id="startdate" name="startdate" value="2017-11-07" datepicker="datepicker" class="hasDatepicker" readonly="readonly"><button type="button" class="ui-datepicker-trigger" title="월이동:PageUp/PageDown, 일이동:Ctrl+방향키"><span>시작일 선택</span></button> ~ 
                       <label for="enddate">종료일 입력</label><input type="text" id="enddate" name="enddate" value="2017-12-07" datepicker="datepicker" class="hasDatepicker" readonly="readonly"><button type="button" class="ui-datepicker-trigger" title="월이동:PageUp/PageDown, 일이동:Ctrl+방향키"><span>종료일 선택</span></button>
                       <button type="submit" class="round inblack"><span>조회하기</span></button> <!-- type="submit" 확인요청 -->
                   </p>
                </div>
            </div>
        </div>
    </form>

    <div class="tbl-data">
        <table summary=" CGV 영화관람권 사용내역 리스트">
            <caption> MsX 영화관람권 사용내역</caption>
            <colgroup>
              <col width="*">
              <col width="26%">
              <col width="12%">
              <col width="12%">
              <col width="12%">
              <col width="12%">
          </colgroup>
            <thead>
                <tr>
                    <th scope="col">관람권 이름</th>
                    <th scope="col">영화관람권 번호</th>
                    <th scope="col">분류</th>
                    <th scope="col">기타</th>
                    <th scope="col">상태</th>
                    <th scope="col">사용일</th>
                </tr>
            </thead>
            <tbody>
                
                
                <tr>
                    <td colspan="6" class="nodata">MsX 영화관람권 사용내역이 존재하지 않습니다.</td>
                </tr>
                
            </tbody>
        </table>
    </div>

    

    <!-- MsX 예매 관련 정책 안내 Box Type -->
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
                              <li>MsX 영화관람권은 금액권이 아닙니다. (조조영화/청소년 관람 시 차액환급 불가) </li>
                              <li>MsX 영화관람권 이용 시 추가금액 결제 후 특별관 영화 관람은 불가합니다. </li>
                              <li>특정영화 관람권일 경우, 지정영화 상영기간 또는 사용기간 중에만 사용이 가능 합니다. </li>
                              <li>MsX극장 현장 매표소와 MsX홈페이지 인터넷 예매 시 사용 가능하며, 스크래치 부분을 개봉 또는 훼손 시  현장 사용이<br>불가능합니다.</li>
                           </ul>
                           <ul>
                              <li>영화 예매 시에는 다른 결제수단(신용카드, 예매쿠폰, 계좌이체 등)과 병행하여 사용이 가능합니다.<br>(단, 2매 이상 구매하실 경우에 한합니다. 2장 예매 시 1매는 영화예매권으로 결제, 다른 1장은 타 결제수단으로 결제)</li>
                              <li>MsX 예매 후 예매취소는 MsX 상영시간 20분 전까지 가능합니다.</li>
                              <li>취소 시 현금 환불은 되지 않으며, 기존 MsX 영화관람권으로 사용기간 중에 재사용 하실 수 있습니다.<br>(단, 현장취소 시 기존의 MsX 영화관람권으로 재사용이 가능하며, 현장 구매 티켓은 환불이 불가능하며 현장 교환만 가능합니다.)</li>
                           </ul>
                           <ul>
                              <li><strong>MsX 영화관람권은 현금으로 환불이 되지 않습니다.</strong></li>
                              <li>MsX 일반관에서 상영하는 영화의 입장권 1매로 교환하실 수 있습니다.<br>(Gold Class, Euro Class, Sweet Box, STARIUM, Kidsplex, CINE de CHEF, IMAX , V-seat 상영관 이용관 이용불가 및 3D, 4D 영화 제외)</li>
                              <li>MsX 영화관람권으로 예매 시, 포인트 적립은 되지 않습니다.</li>
                              <li><strong>MsX 영화관람권 앞면에 기재된 사용기한까지(관람일 기준) 사용하실 수 있습니다.</strong></li>
                              <li>유효기간이 경과한 미사용 쿠폰(관람권)의 경우, 지난 3개월 내역만 보유(등록)내역에서 확인하실 수 있습니다.</li>
                              <li>기타 문의사항이 있으실 경우, 1544-1122 또는 홈페이지 고객의 말씀을 통해 문의하여 주시기 바랍니다.</li>
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
   </div>
   
   </div>
   </div>
</body>
</html>