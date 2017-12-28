<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>자주 찾는 질문 | 고객센터</title>
<link href="./css/customerDetail.css" rel="stylesheet" type="text/css">
<style type="text/css">
.col-aside{display: inline-block; vertical-align:top; margin: 25px 30px 0 365px; height: 500px;}
.col-aside li{padding: 10px ; border-top: solid 1px #ccc; display: block;}
.col-aside a{color:#000;}
.col-aside a:hover{color: #fff; text-decoration: none; background-color: #f7ca55;}
.on{background-color: #f7ca55;}
.on a{color: #fff;}
</style>
</head>
<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>
<body>
<br>
	<div id="contaniner">
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
		<!-- Contents Area -->
		<div id="contents">
		<div class="customer_top">
					<h2 class="tit">자주찾는 질문</h2>
					<p class="stit">
						회원님들께서 가장 자주하시는 질문을 모았습니다. <br>궁금하신 내용에 대해 검색해보세요.
					</p>
				</div>
			<!-- Contents Start -->
			<!-- 상세 시작-->
			<div class="tbl-viw-head">
				<h3>
					<em class="txt-lightblue">${qna.boardTitle}</em>
				</h3>
				<em class="date"> <span>등록일 </span> ${qna.boardDate} 
					<%-- <span class="count">조회수 </span> ${count} --%>
				</em>
			</div>
			<div class="tbl-viw-content">
				<div>
					${qna.boardCon}
				</div>
			</div>
			<div class="tbl-viw-nav">
				<div class="dir-prev">
					<a href="javascript:history.back();"><strong>목록으로</strong></a>
				</div>
			</div>
		</div>
		<!-- /contents End -->
		</div>
	</div>
	<!-- /contaniner End -->
</body>
<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
</html>