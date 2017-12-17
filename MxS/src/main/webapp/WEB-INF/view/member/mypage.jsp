<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="./css/mypage.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
	 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>

	<div class="container">
		<div class="row">

<div class="mycgv-info-wrap">
        <div class="sect-person-info">
           <div class="box-contents newtype">
              <div class="person-info">
                 <strong>박찬희님</strong>
                 <em>0912pch</em>
                 <span>닉네임 : <i>닉네임을 설정해주세요.</i> </span>
                 <button id="go_edit_page" type="button" title="새창열림">변경</button>
              </div>
           </div>
        </div>
        <hr/>
        <div class="cols-benefit-info">
           <div class="col-my-coupon">
              <h3>MY COUPON</h3>
             
              <ul>
                 
                 <li>
                    <strong>MxS 할인쿠폰</strong>
                    <span><em>0</em> 개</span>
                 </li>
                 <li>
                    <strong>영화관람권</strong>
                    <span><em>0</em> 개</span>
                 </li>
              </ul>
           </div>
           
                
                <div class="col-one-point">
                  <h3>CJ ONE POINT</h3>
              <ul>
                 <li>
                    <strong>CJ ONE 사용가능 포인트</strong>
                    <span><em class="txt-maroon">6,620</em> 점</span>
                 </li>
                
              </ul>
                
           </div>
         
                <div class="cols-point-wrap">
                
                </div>
            
        </div>
    </div>
    <div class="cols-content" id="menu">
    <div class="col-aside">
      
       <div class="snb">
        <h2>MY MxS 서브메뉴</h2>
        
        <div class="mypagemenu">
             <ul>
               <li class="on" >
                    <a href="/user/mycgv/?g=1" title="현재 선택">MY MxS HOME <i></i></a>
                </li>
               <li>
                    <a href="/user/mycgv/reserve/?g=1">나의 예매내역 <i></i></a>
             <div class="mypagemenu">
                    <ul>
                       <li>
                            <a href="/user/mycgv/reserve/receipt.aspx?g=1">영수증 출력</a>
                        </li>
                    </ul>
                    </div>
                </li>
               <li>
                   <a href="/user/mycgv/coupon/movie-ticket/list.aspx?g=1">관람권/할인쿠폰 관리 <i></i></a>
                       <div class="mypagemenu">
                   <ul>                      
                     
                       <li>
                            <a href="/user/mycgv/coupon/movie-ticket/list.aspx?g=1">MxS 영화관람권</a>
                        </li>
                       <li>
                            <a href="/user/mycgv/coupon/discount/list.aspx?g=1">MxS할인쿠폰</a>
                        </li>
                         
                   </ul>
                   </div>
               </li>
               <li>
                    <a href="/user/mycgv/myinfo/?g=1">회원정보<i></i></a>
                       <div class="mypagemenu">
                   <ul>

                         <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-cjone.aspx?g=1">개인정보 변경</a>
                        </li>

                       <li>
                            <a href="/user/mycgv/myinfo/?g=1">이용동의 설정</a>
                        </li>
                  
                       <li>
                            <a href="/user/mycgv/myinfo/edit-myinfo-Email-Sms.aspx?g=1">수신설정</a>
                        </li>
                       <li>
                            <a href="/user/mycgv/myinfo/leave-cjone.aspx?g=1">회원탈퇴</a>
                        </li>
                        
                   </ul>
                   </div>
               </li>
                 <li>
                    <a href="/user/mycgv/myinfo/edit-myinfo-myprofile.aspx?g=1">프로필 관리<i></i></a>
                </li>
               <li>
                    <a href="/user/mycgv/inquiry/qna/list.aspx?g=1">나의 문의내역 <i></i></a>
                       <div class="mypagemenu">
                   <ul>
                       <li>
                            <a href="/user/mycgv/inquiry/qna/list.aspx?g=1">1:1 문의</a>
                        </li>


                        <li>
                            <a href="/user/mycgv/inquiry/lost/list.aspx?g=1">분실물 문의</a>
                        </li>
                   </ul>
                   </div>
               </li>
                        <li class="my-event"><a href="/user/movielog/watched.aspx">내가 본 영화</a></li> 
              <!-- <li class="my-event"><a href="/user/mycgv/event/?g=1">나의 참여 이벤트</a></li> -->
           </ul>
           </div>
       </div>
    </div>
   <div class="col-detail" id="mycgv_contents">

<div class="sect-mycgv-reserve movielog col4">
    <div class="box-polaroid">
        <div class="box-inner wishlist">
            <a href="http://www.cgv.co.kr/user/movielog/" title="위시리스트">
                <h3>위시리스트</h3>
                <span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?</span>
            </a>
        </div>
        <div class="box-inner watched">
            <a href="http://www.cgv.co.kr/user/movielog/watched.aspx" title="내가 본 영화">
                <h3>내가 본 영화</h3>
                <span>관람한 영화들을 한번에 <br>모아 보고 싶다면?</span>
            </a>
        </div>
        <div class="box-inner mvdiary">
            <a href="http://www.cgv.co.kr/user/movielog/diary.aspx" title="무비다이어리">
                <h3>무비다이어리</h3>
                <span>관람 후 내 감상평을 적어 <br>추억하고 싶다면?</span>
            </a>
        </div>
        <div class="box-inner photi">
            <a href="http://phototicket.cgv.co.kr" target="_blank">
                <h3>포토티켓</h3>
                <span>단 하나뿐인 나만의<br>티켓을 간직하고 싶다면?</span>
            </a>
        </div>
    </div>
</div>
<div class="tit-mycgv">
   <h3>MY 예매내역</h3>
   <p><em>0건</em> <a href="/user/mycgv/reserve/">예매내역 더보기</a></p>
   <span>예매번호로만 티켓을 찾을 수 있으니 반드시 확인 부탁드립니다.</span>
</div>

<form name="aspnetForm" method="post" action="./" id="aspnetForm" novalidate="novalidate">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="">
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKMjAzNjI1MTIzN2Rkb61/wKC2wl92h7iknOS3c2nC6AQ=">
</div>

<div>

   <input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="F268F2D4">
   <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION" value="/wEdAANEBwag/p6Cyp7NqgHffiIrAAaiyC+ogOIlg3pscMtiP2lKUwCIH8TI/sjrTPJzW34iVv8t0sMzGIw9AmgL9DZ3cbnRDQ==">
</div>
    <!-- MY 예매내역 -->
    <input type="hidden" id="hidCancelReserveNo" name="hidCancelReserveNo">
    <div class="sect-base-booking">
       <div class="box-polaroid">
           <div class="box-inner">
                
                
                    
                    <div class="lst-item">
                     고객님의 최근 예매내역이 존재하지 않습니다.
                  </div>
                    
           </div>
       </div>
    </div>
</form>
<!-- //MY 예매내역 -->

<!-- MY 참여이력 -->
<div class="sect-mycgv-part">
    <div class="box-polaroid type1">
      <!--  <div class="box-inner">
            <div class="tit-mycgv">
            <h3>MY 참여이벤트</h3>
            <p><em>0건</em> <a href="/user/mycgv/event/">MY 참여이벤트 더보기</a></p>
         </div>
         <div class="col-myevt">
                
                    <ol><li>고객님의 이벤트 참여내역이 존재하지 않습니다.</li></ol>
                
         </div>
        </div>-->
        <div class="box-inner">
            <div class="tit-mycgv">
            <h3>MY Q&amp;A</h3>
            <p><em>0건</em> <a href="/user/mycgv/inquiry/qna/list.aspx">MY Q&amp;A 더보기</a></p>
         </div>
         <div class="col-myqna">
                <div class="mypagemenu">
                    <ul><li>고객님의 1:1 문의내역이 존재하지 않습니다.</li></ul>
                </div>
         </div>
        </div>
    </div>
</div>
<!-- //MY 참여이력 -->
<form name="targetform" id="targetform" method="post" novalidate="novalidate">
   <input type="hidden" name="reverse_no" id="reverse_no">
</form>

   </div>
</div>
</div>
</div>
</body>
	 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
</html>