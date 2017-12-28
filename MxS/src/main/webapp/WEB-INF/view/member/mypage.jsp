<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="./css/mypage.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
.row{
width: 1200px;
}
.mycgv-info-wrap {
    width: 1200px;
    height: 280px;
    padding: 30px 40px 0 58px;
    background-color: #f2f0e5;
    
}
.mycgv-info-wrap .cols-benefit-info > [class^='col-'] {
/*     float: right; */
    width: 350px;
    height: 130px;
    padding-left: 30px;
    border-left: 1px solid #8c7651;
    
}

.snb{
	width: 1200px;
}
.snb ul{
padding-left: 15px;
}

.mypagemenu{
width: 160px;
margin-right: 30px;
}


/* 위시 */
.sect-mycgv-reserve.movielog.col4 .box-inner {
    width: 240px!important;
    padding-left: 200px;
    text-align: center;
    line-height: 16px;
    padding: 0;
    float:left;

}
.sect-mycgv-reserve .box-polaroid {
    overflow: hidden;
    background-color: #f2f0e5;
    border: 1px solid #333;
    width: 980px;
    height: 120px;
    
}
.cols-content .col-detail {
    position: relative;
    width: 800px;
    float: left;
    margin-left: 10px;
}

/* 예매 내역 */
.cols-content .tit-mycgv {
    position: relative;
    line-height: 34px;
    width: 980px;
    padding: 10px;
}

/*my Q&A*/
[class|="sect-mycgv"][class$="part"] .box-polaroid.type1 .box-inner {
    float: none;
    width: 980px;
    height: auto;
    padding: 29px 30px;
    padding-left: 10px;
}
[class|="sect-mycgv"][class$="part"] .box-polaroid .box-inner li:first-child {
    border-top: 2px solid #d6d4ca;
    width: 900px;
    padding: 26px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
// 관람권
$(function(){	
		$("#myticket").bind('click', function() {
			$.ajax({
		       url : "myticket",
		       dataType : "html",
		       type : "post",
		       success : function(data) {
		    	   $("#mycgv_contents").html(data);
			    },
	            error : function(request, status, error) {
	                alert("code:" + request.status + "\n" + "error:" + error);
	             }
		});
				return false;
	});
});


// 쿠폰
$(function(){	
		$("#coupon").bind('click', function() {
			$.ajax({
		       url : "mycoupon",
		       dataType : "html",
		       type : "post",
		       success : function(data) {
		    	   $("#mycgv_contents").html(data);
			    },
	            error : function(request, status, error) {
	                alert("code:" + request.status + "\n" + "error:" + error);
	             }
		});
				return false;
	});
});

//포인트 적립
$(function(){	
		$("#mypointadd").bind('click', function() {
			$.ajax({
		       url : "mypointadd",
		       dataType : "html",
		       type : "post",
		       success : function(data) {
		    	   $("#mycgv_contents").html(data);
			    },
	            error : function(request, status, error) {
	                alert("code:" + request.status + "\n" + "error:" + error);
	             }
		});
				return false;
	});
});

//포인트 사용
$(function(){	
		$("#mypoint").bind('click', function() {
			$.ajax({
		       url : "mypoint",
		       dataType : "html",
		       type : "post",
		       success : function(data) {
		    	   $("#mycgv_contents").html(data);
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
	 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
   
 
<body>

<br/>

	<div class="container">
		<div class="row">
<div class="mycgv-info-wrap">
        <div class="sect-person-info">
           <div class="box-contents newtype">
              <div class="person-info">
                 <strong><%= session.getAttribute("id") %></strong>
                 <em><%= session.getAttribute("name") %></em>
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
                  <h3>MxS POINT</h3>
              <ul>
                 <li>
                    <strong>MxS 사용가능 포인트</strong>
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
       <h2 id = "submenu">MY MxS 서브메뉴</h2>
        <div class="mypagemenu">
             <ul>
               <li class="on" >
                    <a title="현재 선택">MY MxS HOME <i></i></a>
                </li>
               <li>
                    <a>나의 예매/상품구매 내역 <i></i></a>
           		  <div class="mypagemenu">
                    <ul>
                       <li>
                            <a href ="paylist?num=<%=session.getAttribute("idnum")%>">예매/상품내역</a>
                        </li>
                    </ul>
                    </div>
                </li>
               <li>
                   <a href="">관람권/할인쿠폰 관리 <i></i></a>
                       <div class="mypagemenu">
                   <ul>                      
                     
                       <li>
                            <a id = "myticket">MxS 영화관람권</a>
                        </li>
                       <li>
                            <a id = "coupon">MxS 할인쿠폰</a>
                        </li>
                         
                   </ul>
                   </div>
               </li>
               <li>
                   <a href="">MxS 포인트 관리 <i></i></a>
                       <div class="mypagemenu">
                   <ul>                      
                     
                       <li>
                            <a id = "mypointadd">포인트 적립 내역</a>
                        </li>
                       <li>
                            <a id = "mypoint">포인트 사용 내역</a>
                        </li>
                         
                   </ul>
                   </div>
               </li>
               <li>
                    <a href="">회원정보<i></i></a>
                       <div class="mypagemenu">
                   <ul>

                         <li>
                            <a id = "memberchange">개인정보 변경</a>
                        </li>
                       <li>
                            <a id = "memberdelete">회원탈퇴</a>
                        </li>
                        
                   </ul>
                   </div>
               </li>
               <li>
                    <a href="">나의 문의내역 <i></i></a>
                       <div class="mypagemenu">
                   <ul>
                       <li>
                            <a href="">1:1 문의</a>
                        </li>
                   </ul>
                   </div>
               </li>
                        <li class="my-event"><a href="">내가 본 영화</a></li> 
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
   <h3>MY 예매/상품구매 내역</h3>
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
                   		  <h3>상품 결제번호: ${paylist.payNum} /  구매번호:  ${paylist.gpayNum}  /  카드번호: ${paylist.payCard} / 할인수단: ${paylist.payDcpoint}  / 구매총금액: ${paylist.payPrice}   </h3>
                   		 
                   		  
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