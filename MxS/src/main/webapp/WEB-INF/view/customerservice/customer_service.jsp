<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*, javax.servlet.*, java.util.*, model.*" %>
<%@page import="org.springframework.context.*, org.springframework.context.support.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 | 고객센터</title>
<link rel="stylesheet" media="all" type="text/css" href="./css/customer.css" />
<style type="text/css">
.container {
    margin-right: auto;
    margin-left: auto;
    padding-left: 15px;
    padding-right: 15px;
}
</style>
</head>
 	<div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>
<br/>
		<div class="container">
		<div class="row">
	 <div class="cols-content">
            <div class="col-aside">
               <div class="snb">
                  <ul>
                     <li class="on"><a href="customer_service" title="현재선택">고객센터 메인<i></i></a></li>
                     <li class=""><a href="customer_qna">자주찾는 질문<i></i></a></li>
                     <li class=""><a href="customer_notice">공지/뉴스<i></i></a></li>
                     <li class=""><a href="customer_email">이메일 문의<i></i></a></li>
                  </ul>
               </div>
            </div>
            <div class="col-detail">
               <div class="c_check_warp">
                  <div class="c_box qna_search">
                     <strong class="c_tit search_tit">자주찾는 질문 빠른검색</strong>
                     <legend><label for="searchtext"></label></legend>
                     <div class="search_box">
                        <input id="searchtext" type="text" title="검색어 입력" placeholder="검색어를 입력해 주세요.">
                        <button type="button" class="btn_search" title="검색하기" id="btn_search">검색</button>
                     </div>
                     <div class="c_qu">
                        <a href="#none">관람권</a>                       
                         <a href="#none">홈페이지</a>
                        <a href="#none">예매</a>                       
                        <a href="#none">환불</a>                        
                        <a href="#none"></a>                       
                     </div>
               </div>
               <div class="c_box emaile_inquiry" style="cursor:pointer;">
                  <strong class="c_tit email_tit">이메일 문의</strong>
                  <span class="c_txt">24시간 365일 언제든지 문의해주세요.</span>
                  <a class="round red" href="customer_email"><span style="padding:0 20px;">문의하기</span></a>
               </div>
               <div class="c_box my_advice" style="cursor:pointer;">
                  <strong class="c_tit advice_tit">내 상담 내역 확인</strong>
                  <span class="c_txt">문의하신 내용을 확인하실 수 있습니다.</span>
                  <a class="round gray" href="/user/mycgv/inquiry/qna/list.aspx?g=1#contaniner" target="_blank" title="새창열기"><span style="padding:0 20px;">문의내역 조회</span></a>
               </div>
            </div>
            <div class="customer_notice_area">
               <div class="service_area">
                  <span class="tit">자주찾는 서비스</span>
                  <ul class="list">
                     <!-- 로그아웃일 경우에만 링크  -->
                     <li><a href="#" target="_blank" title="새창열기">아이디/<br>비밀번호 찾기</a></li>
                     <!-- 로그아웃일 경우에만 링크  -->
                     <li><a href="#" target="_blank" title="새창열기">예매/<br>취소내역 확인</a></li>
                     <li><a href="#" target="_blank" title="새창열기">멤버십포인트<br>사용안내</a></li>
                     <!-- 로그아웃일 경우에만 링크  -->
                     <li><a href="#" target="_blank" title="새창열기">관람권<br>할인쿠폰 등록</a></li>
                  </ul>
               </div>
               <div class="notice_area">
                  <a href="customer_notice"><span class="tit">공지/뉴스</span></a>
                  <ul class="txt">
                     <c:forEach var="customerdto" items="${customer}">
							<li><a href="#">[${customerdto.boardHead}] ${customerdto.boardTitle}</a><span class="day">${customerdto.boardDate}</span></li>
					</c:forEach>
                  </ul>
                  <a href="#" class="more">공지/뉴스 더보기</a>
               </div>
               ${notice}
            </div>
            <ul class="tel_inquiry">
               <li>MXS 고객센터 : 2222-1122 <span class="time">(09:00~21:00)</span></li>
            </ul>
            </div>
         </div>
         <!-- //Contents End -->
 </div>
 </div>
      <!-- //Contents Area -->
<!--       <script type="text/javascript">
              $(function () {
                  $('#btn_search').on('click', function () {
                      if ($('#searchtext').val() == "") {
                          alert("검색어를 입력해 주세요.");
                          $('#searchtext').focus();
                          return false;
                      } else {
                          Search();
                      }
                  });
               
               $('#searchtext').keypress(function(event){
                  if(event.which == 13){
                     if ($('#searchtext').val() == "") {
                        alert("검색어를 입력해 주세요.");
                        $('#searchtext').focus();
                        return false;
                     } else {
                        Search();
                     }
                  }
               });
      
                  function Search() {
                      location.href = "/support/faq/default.aspx?searchtext=" + escape($("#searchtext").val());
                      //return false;
                  }
      
                  $('.c_qu').children('a').on("click", function () {
                      location.href = "/support/faq/default.aspx?searchtext=" + escape($(this).html());
                      //return false;
                  });
      
                  $('.emaile_inquiry').on('click', function () {
                      location.href = "/support/qna/default.aspx";
                  });
      
                  $('.my_advice').on('click', function () {
                      var openNewWindow = window.open("/user/mycgv/inquiry/qna/list.aspx?g=1#contaniner", "_blank");
                      if (openNewWindow)
                          openNewWindow.submit();
                      else
                          alert("팝업이 허용되어 있지 않습니다.");
                      //openNewWindow.focus();
                      return false;
      
                  });
      
              });
      </script> -->
</body>

 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
 </div>
</html>