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
<title>Insert title here</title>
<link href="./css/customerDetail.css" rel="stylesheet" type="text/css">
</head>
<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>
<body>
<br>
	<div id="contaniner">
		<!-- Contents Area -->
		<div id="contents">
			<!-- Contents Start -->
			<!-- 상세 시작-->
			<div class="tbl-viw-head">
				<h3>
					<em class="txt-lightblue">${notice.boardTitle}</em>
				</h3>
				<em class="date"> <span>등록일 </span> ${notice.boardDate} 
					<span class="count">조회수 </span> ${notice.readCount}
				</em>
			</div>
			<div class="tbl-viw-content">
				<div style="text-align: center">
					${notice.boardCon}
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
	<!-- /contaniner End -->
</body>
<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
</html>