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
<body>
	<h2>시간표 목록</h2>


	<form name="form1" method="post" action="${path}/timetable_write">

		<button type="button" id="btnTimeTableWrite">시간표새로등록</button>
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

</html>