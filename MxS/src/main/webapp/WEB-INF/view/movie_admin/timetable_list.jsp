<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시간표 목록</title>
<%@ include file="../include/header.jsp"%>
<script>
$(document).ready(function() {
	$("#btnTimeTableWrite").click(function() {
		// 페이지 주소 변경(이동)
		location.href = "${path}/timetable_write";
	});
});	
//데이터 수정창 띄우기 
    
   function open_pop(theaterNum){
       var url = 'theater_view?theaterNum='+theaterNum;
       
       window.open(url,'theater_view','width=500, height=250'); 
   }
   
</script>
</head>

<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>

<body>

<div class="container">		
		<div class="row">
	<%String movieNum = request.getParameter("movieNum"); 
	String theaterNum = request.getParameter("theaterNum");
	String screenName = request.getParameter("screenName");
	%>
	<h2>시간표 목록</h2>
  	<form name="form2" method="post" action="${path}/timetable_write">
		
		<input type="hidden" name="movieNum" value="<%=movieNum%>">
		<input type="hidden" name="theaterNum" value="<%=theaterNum%>">
		<input type="hidden" name="screenName" value="<%=screenName%>">
		<input type="submit" id="btnTimeTableWrite" value="시간표새로등록">
	</form>  



	<table border="1" width="600px">
		<colgroup>
			<col width="10%" />
			<col width="15%" />
			<col width="20%" />
			<col width="10%" />
			<col width="10%" />
		</colgroup>
		<thead>
			<tr>
				<th>시작시간</th>
				<th>종료시간</th>
				<th>극장번호</th>
				<th>영화번호</th>
				<th>상영관</th>
				
				

			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach var="timetable" items="${list}">
						<tr>
							<td>${timetable.timeStart}</td>
							<td>${timetable.timeEnd}</td>
							<td>${timetable.theaterNum}</td>
							<td>${timetable.movieNum}</td>
							<td>${timetable.screenName}</td>
							

			
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	<a href="${path}/movie_list">영화목록으로</a>
	
	</div>
	</div>
	<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
</html>