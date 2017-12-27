<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상영관목록</title>
<%@ include file="../include/header.jsp"%>
<script>
/* $(document).ready(function() {
	$("#btnScreenWrite").click(function() {
		// 페이지 주소 변경(이동)
		location.href = "${path}/screen_write";
	});
});	 */
</script>
</head>
<body>
	<%String movieNum = request.getParameter("movieNum"); 
	String theaterNum = request.getParameter("theaterNum");
	%>
								
	<h2>상영관 목록</h2>


	<form name="form1" method="post" action="${path}/screen_write">
		
		<input type="hidden" name="movieNum" value="<%=movieNum%>">
		<input type="hidden" name="theaterNum" value="<%=theaterNum%>">
		<input type="submit" id="btnScreenWrite" value="상영관새로등록">
	</form>
	
<form name="form1" method="post" action="${path}/timetable_list">
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
				<th>상영관이름</th>
				<th>상영관 좌석수</th>
				<th>좌석행</th>
				<th>좌석열</th>
				<th>시간표관리</th>
				

			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach var="screen" items="${list}">

						<tr>
							<td>${screen.screenName}</td>
							<td>${screen.screenSeat}</td>
							<td>${screen.seatRow}</td>
							<td>${screen.seatCol}</td>
							<td>
							<input type="hidden" name="movieNum" value="${screen.movieNum}">
							<input type="hidden" name="theaterNum" value="${screen.theaterNum}}">
							<input type="hidden" name="screenName" value="${screen.screenName}">
							<input type="submit" name="toTimetable" value="toTimetable">
							</td>
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
</form>
</body>
</html>