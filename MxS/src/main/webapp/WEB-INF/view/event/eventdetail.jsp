<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
	
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import = "java.util.*" %>	
<%@ page import = "model.*" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">   
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link href="./css/EventDetail.css" rel="stylesheet" type="text/css">
</head>
<div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>
<div class="container" >
<!-- Contents Area -->
		
		<div id="contents" >
        <!-- Contents Start -->
			
<!--이벤트 상세 영역 시작-->
	
	<div class="tbl-viw-head">
	    <h3>
	    <em class="txt-lightblue">${detail.eventType}</em>${detail.eventTit}
	    </h3> 
	    
	    <em class="date">
	        <span>기간: </span>
	        <fmt:formatDate value="${detail.eventStt}" pattern="yyyy.MM.dd"
	         /> ~ <fmt:formatDate value="${detail.eventEnd}" pattern="yyyy.MM.dd" />
	    </em>
	</div>

	<div class="tbl-viw-content">
	    
		<div style="text-align:center">
		${detail.eventCon}</div>
	    
	</div>
	
	    <div class="dir-prev">
	    	<strong><input type="button" value="☜ 목록" onclick="history.back()"></strong>
	   		<form:form method="get" action="eventupdate" accept-charset="utf-8" modelAttribute="eventdto">
			<input type="hidden" name="eventNo" value="${detail.eventNo}">									
			<input type="hidden" name="movieNo" value="${detail.movieNo}">										
			<input type="hidden" name="eventTit" value="${detail.eventTit}">
			<input type="hidden" name="eventCon" value="${detail.eventCon}">
			<input type="hidden" name="eventFile" value="${detail.eventFile}">	
			<input type="hidden" name="eventType" value="${detail.eventType}">
			<input type="hidden" name="eventStt" value="${detail.eventStt}">
			<input type="hidden" name="eventEnd" value="${detail.eventEnd}">
			
			
			<input type="submit" class="btn icon-btn btn-success" value="수정하기" /> 
			</form:form>
	    </div>
	    
	    

		</div>
		<!-- /contents End -->
	</div>
	<!-- /contaniner End -->
	
	<div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
   
</body>
</html>