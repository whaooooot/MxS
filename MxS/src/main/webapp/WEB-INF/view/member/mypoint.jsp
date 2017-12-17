<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="./css/mypoint.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
	 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>
<div class="col-detail" id="mycgv_contents">
       
  <input type="hidden" id="isUSER" name="isUSER" value="N">
    <div class="tit-mycgv">
       <h3>MsX 포인트</h3>
   </div>


    <div class="tit-mycgv">
       <h4>MsX 이용 / MsX 포인트 적립 및 사용내역</h4>
   </div>

    <!-- CJ ONE 포인트 상세 내역 Table Start -->
    <div class="tbl-breakdown">
        <table>
            <caption>MsX 포인트 상세 내역</caption>
            <colgroup>
                <col span="2" width="50%">
            </colgroup>
            <thead>
                <tr>
                   <th scope="col">구분</th>
                   <th scope="col">내용</th>
                </tr>
            </thead>
            <tbody>

                <tr class="tooltip_list">
                   <th scope="row">
                  <strong>MsX 사용가능 포인트</strong>
                  
               </th>

                   <td>6,620 점</td>
                </tr>
                
                <tr class="tooltip_list">
                   <th scope="row" class="dotted">
                  <strong>- 매표 구매 누적 포인트</strong>
                  <a href="#" class="mycgv_tooltip"></a>
                        <div class="tooltip_con tc3"><span></span></div>
               </th>
                   <td class="dotted">5,400 점</td>                  
                </tr>   
               <tr class="tooltip_list">
                   <th scope="row" class="dotted">
                  <strong>- 매점 &amp; MsX 구매 누적 포인트</strong>
                  <a href="#" class="mycgv_tooltip"></a>
                        <div class="tooltip_con tc4"><span></span></div>
               </th>

                   <td class="dotted">0 점</td>
                </tr>       
                <tr class="tooltip_list">
                   <th scope="row" class="dotted">
                  <strong>- 이벤트 누적 포인트</strong>
                  <a href="#" class="mycgv_tooltip"></a>
                        <div class="tooltip_con tc5"><span></span></div>
               </th>
                   <td class="dotted">0 점</td>
                </tr>
                <tr class="tooltip_list">
                   <th scope="row" class="dotted">
                  <strong>기타 포인트</strong>
                  <a href="#" class="mycgv_tooltip"></a>
                        <div class="tooltip_con tc6"><span></span></div>
               </th>
                   <td class="dotted">0 점</td>
                </tr>

            </tbody>
        </table>
        <p class="common_p">※ 매표/매점 구매 누적 포인트는 <span class="col_red">관람 후 2-3일 후</span>에 반영됩니다.</p>
        <p class="common_p">※ 포인트 조회 시 표시되는 적립일은 VIP 선정기준 적립일이며 MsX 가용일자와 상이할 수 있습니다.</p>
        <p class="common_p">※ 자세한 포인트 적립 및 사용내역은 MsX에서 확인하시기 바랍니다.<a href="http://www.cjone.com/cjmweb/my-one/point.do" target="_blank"><span class="col_red">[CJ ONE 포인트 조회]</span></a></p>

    </div>
    <!-- CJ ONE 포인트 상세 내역 Table End -->
    
       <div class="tit-mycgv marginT30">
   
   </div>
   

<div class="sect-use-expense">
    <form name="aspnetForm" method="post" action="./pointlist.aspx?g=1" id="aspnetForm" novalidate="novalidate">
<div>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwULLTE2NDU3MDcxNTZkZHCufti+N9ztQn4LS1j5rU/gm4+b">
</div>

<div>

   <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="821B55D4">
</div>
    <div class="box-polaroid">
        <div class="box-inner">
            <strong class="period">조회기간</strong>
            <span id="period_wrap"><button data-period="2" data-type="w" class="round gray"><span>2주일</span></button><button data-period="1" data-type="m" class="round gray"><span>1개월</span></button><button data-period="3" data-type="m" class="round gray"><span>3개월</span></button></span>
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
      <table summary="상품명, 구매극장, 결제금액, 적립일, 적립금액 표기">
         <caption>MsX 영화 관람권 사용내역 리스트</caption>
         <colgroup>
            <col width="18%">
            <col width="18%">
            <col width="18%">
            <col width="18%">
         </colgroup>
         <thead>
            <tr>
               <th scope="col">구매 구분</th>
               <th scope="col">구매 극장</th>
               <th scope="col">적립일</th>
               <th scope="col">적립</th>
            </tr>
         </thead>
         <tbody>

                
                
                <tr>
                    <td colspan="4" class="nodata">내역이 존재하지 않습니다.</td>
                </tr>
                



            
         </tbody>
      </table>
   </div>
    <!--?xml version="1.0" encoding="utf-8"?-->
<div class="paging">
</div>

    <!-- CGV 예매 관련 정책 안내 Box Type -->
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
                              <li>MsX 카드 등록 및 분실신고, 비밀번호 변경 등 자세한 사항은 MsX 홈페이지에서 하실 수 있습니다.</li>
                              <li>전체 MsX 포인트 적립 및 사용내역, 보너스 포인트, 선물포인트, 소멸포인트 정보는 MsX 홈페이지에서 조회하실 수 있습니다.<br>
                              <a href="http://www.cjone.com/cjmweb/my-one/card.do" target="_blank" class="round gray on"><span>MsX 바로가기</span></a></li>
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
</body>

	 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
</html>