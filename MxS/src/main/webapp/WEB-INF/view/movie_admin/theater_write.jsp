<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>극장등록</title>

<%@ include file="../include/header.jsp"%>
<script type="text/javascript" src="./js/common.js"></script>
<script>
	$(document).ready(function() {
		//데이터 전송 및 유효성 검사
		$("#btnTheaterSave").click(function() {
			var theaterName = $("#theaterName").val();
			var theaterArea = $("#theaterArea").val();
			if (theaterName == "") {
				alert("극장이름을 입력하세요");
				document.form1.theaterName.focus();
				return;
			}
			if (theaterArea == "") {
				alert("지역이름을 입력하세요");
				document.form1.theaterArea.focus();
				return;
			}
			document.form1.submit();
			alert("등록되었습니다.");
		});
		
		
		
		
		
	});
		//셀렉트박스의 영화 제목 선택했을 때 영화 번호가 input의 값으로 설정됨
	function setMovieNum(value){ 
		var ab = document.getElementById('movieSelectBox').value; 
		
		 document.getElementById('test').value =ab; 
		} 
	
	
	
</script>
</head>
<body>

<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>
	<div class="container">		
		<div class="row">

	<h2>극장등록</h2>

	<form:form name="form1" id="form1" commandName="theater" method="post"
		action="${path}/theater_insert">
		<table border=1>

			<tr>

				<td>존재하는 영화데이터</td>
				<td><select id="movieSelectBox"
					style="width: 80px;" onchange='setMovieNum(this.value);'>
					
						<option value="">선택</option>

						<c:forEach var="movie" items="${list}" varStatus="i">

							<option value="${movie.movieNum}">${movie.movieTitle}</option>

						</c:forEach>
	
				</select>
				<form:input id="test" path="movieNum" />
				</td>
					
			</tr>

			<tr>

				<td>극장지역</td>
				<td><form:input id="theaterArea" path="theaterArea" /></td>

			</tr>

			<tr>

				<td>극장이름</td>
				<td><form:input id="theaterName" path="theaterName" /></td>

			</tr>

			<tr>
				<td><button type="button" id="btnTheaterSave">확인</button> <input
					type="reset" name="resetbtn" value="초기화"></td>
			</tr>

		</table>

	</form:form>
</div>
</div>
<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
	





</body>
</html>