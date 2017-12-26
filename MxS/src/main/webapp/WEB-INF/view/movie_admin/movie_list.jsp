<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화목록</title>
<%@ include file="../include/header.jsp"%>
<script>
$(document).ready(function() {
	$("#btnWrite").click(function() {
		// 페이지 주소 변경(이동)
		location.href = "${path}/movie_write";
	});
	
	// 해당 레코드 버튼 클릭시 값 가져오기
	 $(".checkBtn").click(function(){
			var str = ""
			var tdArr = new Array(); // 배열 선언
            var checkBtn = $(this);
            
            // checkBtn.parent() : checkBtn의 부모는 <td>이다.
            // checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
            var tr = checkBtn.parent().parent();
            var td = tr.children();
			// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
			console.log("클릭한 Row의 모든 데이터 : " + tr.text());
            
			// td.eq(index)를 통해 값을 가져올 수도 있다.
            var movieNum = td.eq(0).text();
            var movieTitle = td.eq(1).text();
	
			//선택한 영화에 해당하는 극장데이터 가져오기
			$.ajax({
						type : "POST",
						url : "${path}/theater_list",
						dataType : "html",
						data: "movieNum="+movieNum, 
						success : function(result) {
							$('#listTheater').html(result);
						}
					});
					return false;
				});
	
	
});
</script>
</head>
<body>
	<h2>영화 목록</h2>

	<form name="form1" method="post" action="${path}/movie_list">
		<select name="searchOption">
			<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
			<option value="all"
				<c:out value="${map.searchOption == 'all'?'selected':''}"/>>영화제목+줄거리</option>
			<option value="movie_title"
				<c:out value="${map.searchOption == 'movie_title'?'selected':''}"/>>영화재목</option>
			<option value="movie_con"
				<c:out value="${map.searchOption == 'movie_con'?'selected':''}"/>>영화줄거리</option>


		</select> <input name="keyword" value="${map.keyword}"> <input
			type="submit" value="조회">
		<button type="button" id="btnWrite">영화새로등록</button>
	</form>

	<table id="example-table-1" border="1" width="600px">
		<colgroup>
			<col width="10%" />
			<col width="*" />
			<col width="*" />
			<col width="15%" />
			<col width="25%" />
			<col width="10%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">영화번호</th>
				<th scope="col">영화제목</th>
				<th scope="col">포스터</th>
				<th scope="col">영화장르</th>
				<th scope="col">개봉날짜</th>
				<th scope="col">극장선택</th>

			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(map.list) > 0}">
					<c:forEach var="movie" items="${map.list}">
						<tr>

							<td>${movie.movieNum}</td>
							<td><a href="${path}/movie_view?movieNum=${movie.movieNum}">${movie.movieTitle}</a></td>

							<td>
								<div class="box-image">
									<a href="${path}/movie_view?movieNum=${movie.movieNum}"> <span
										class="thumb-image"> <img
											src="/MxS/img/upload/mxs/movie/upload/s_${movie.moviePoster}" />

											<span class="ico-grade grade-15">${movie.movieGrade}</span>

									</span>

									</a>
								</div>

							</td>

							<td>${movie.movieGenr}</td>
							<td><fmt:formatDate value="${movie.movieDate}"
									pattern="yyyy년MM월dd일" /></td>
							<td><input type="button" class="checkBtn" value="선택" /></td>
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

	<div id="listTheater"></div><!-- 극장리스트 출력 -->


</body>
</html>