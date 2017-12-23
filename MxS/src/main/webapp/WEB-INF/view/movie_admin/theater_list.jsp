<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>극장목록</title>
<%@ include file="../include/header.jsp"%>
<script>
	$(document).ready(function() {
		$("#btnWrite").click(function() {
			// 페이지 주소 변경(이동)
			location.href = "${path}/theater_write";
		});
	});
</script>
</head>
<body>
	<h2>극장 목록</h2>

	<form name="form1" method="post" action="${path}/theater_list">
		<select name="searchOption">
			<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
			<option value="all"
				<c:out value="${map.searchOption == 'all'?'selected':''}"/>>극장이름+지역</option>
			<option value="theater_name"
				<c:out value="${map.searchOption == 'theater_name'?'selected':''}"/>>극장이름</option>
			<option value="theater_area"
				<c:out value="${map.searchOption == 'theater_area'?'selected':''}"/>>지역</option>

		</select> <input name="keyword" value="${map.keyword}"> <input
			type="submit" value="조회">
		<button type="button" id="btnWrite">글쓰기</button>
	</form>

	<table border="1" width="600px">
		<colgroup>
			<col width="10%" />
			<col width="15%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th>번호</th>
				<th>극장이름</th>
				<th>극장지역</th>

			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(map.list) > 0}">
					<c:forEach var="theater" items="${map.list}">
						<tr>
							<td>${theater.theaterNum}</td>
							<td>${theater.theaterName}</td>
							<td>${theater.theaterArea}</td>

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
	<input type="hidden" name="movieNum" value="${theater.movieNum}">
</body>
</html>