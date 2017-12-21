<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*, javax.servlet.*, java.util.*, model.*" %>
<%@page import="org.springframework.context.*, org.springframework.context.support.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지/뉴스 고객센터</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="./css/customer.detail.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>
<body>
<br/>
	<div class="container">
		<div class="row">
		<div class="col-aside">
               <div class="snb">
                  <ul>
                     <li class=""><a href="customer_service">고객센터 메인<i></i></a></li>
                     <li class=""><a href="customer_qna">자주찾는 질문<i></i></a></li>
                     <li class="on"><a href="customer_notice" title="현재선택">공지/뉴스<i></i></a></li>
                     <li class=""><a href="customer_email">이메일 문의<i></i></a></li>
                  </ul>
               </div>
            </div>
   <div class="col-detail">
      <div class="customer_top">
         <h2 class="tit">공지/뉴스</h2>
         <p class="stit">CGV의 주요한 이슈 및 여러가지 소식들을 확인하실 수 있습니다.</p>
      </div>
      <div class="search_area">
         <input id="searchtext" type="text" class="c_input" title="검색어 입력" placeholder="검색어를 입력해 주세요" value="" style="width: 275px;">
         <button type="button" class="round inblack" title="검색하기" id="btn_search">
            <span>검색하기</span>
         </button>
      </div>

      <div class="tabbable">
         <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1" data-toggle="tab" title="선택된 탭메뉴">전체</a></li>
            <li class=""><a href="#tab2" data-toggle="tab">시스템 점검</a></li>
            <li class=""><a href="#tab3" data-toggle="tab">극장</a></li>
            <li class=""><a href="#tab4" data-toggle="tab">기타</a></li>
         </ul>
         <div class="tab-content">
            <div class="tab-pane active" id="tab1">
               <div class="search_result">
                  총 <span class="num">3747건</span>이 검색되었습니다.
               </div>
               <div class="tbl_area">
                  <table class="tbl_notice_list">
                     <caption>목록</caption>
                     <colgroup>
                        <col style="width:50px;">
                        <col style="width:120px;">
                        <col style="width:800px;">
                        <col style="width:120px;">
                        <col style="width:120px;">
                     </colgroup>
                     <thead>
                        <tr>
                           <th scope="col">번호</th>
                                <th scope="col">구분</th>
                           <th scope="col" class="tit">제목</th>
                           <th scope="col">등록일</th>
                           <th scope="col">조회수</th>
                        </tr>
                     </thead>
                     <tbody>
                     <c:forEach var="customerdto" items="${notice}">
                        <tr class="first">
                            <td>${customerdto.boardNum}</td>
                                  <td>[${customerdto.boardHead}]</td>
                            <td class="txt"><a href="#">${customerdto.boardTitle}</a></td>
                            <td>${customerdto.boardDate}</td>
                            <td class="num">${customerdto.readCount}</td>
                         </tr>
                     </c:forEach>
                     </tbody>
                  </table>
               </div>
            </div>
            <div class="tab-pane" id="tab2">2</div>
            <div class="tab-pane" id="tab3">3</div>
            <div class="tab-pane" id="tab4">4</div>

         </div>
      </div>
   </div>
</div>
</div>
</body>
<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
</html>