<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>시간표 등록</title>

<%@ include file="../include/header.jsp"%>
<script type="text/javascript" src="./js/common.js"></script>
<script>
	$(document).ready(function() {
		//데이터 전송 및 유효성 검사
		$("#btnTimeTableSave").click(function() {
			var timeStart = $("#timeStart").val();
			var timeEnd = $("#timeEnd").val();
			if (timeStart == "") {
				alert("시작시간을 입력하세요");
				document.form1.timeStart.focus();
				return;
			}
			if (timeEnd == "") {
				alert("종료시간을 입력하세요");
				document.form1.timeEnd.focus();
				return;
			}
			document.form1.submit();
			alert("등록되었습니다.");
		});
	});
</script>
</head>
<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>
<body>

<div class="container">		
		<div class="row">
	<h2>시간표등록</h2>

	<form name="form1" id="form1" method="post" action="${path}/timetable_insert">
		<table border=1>
		<tr>
		<td>
			작성형식
		</td>
		<td>
		yyyy/mm/dd hh:mm
		</td>
		</tr>
		
			<tr>
				<td>
				<input type="hidden" id="movieNum" name="movieNum" value="${movieNum}" />
				
				<input type="hidden" id="theaterNum" name="theaterNum" value="${theaterNum}"/>
				<input type="hidden" id="screenName" name="screenName" value="${screenName}"/></td>
			</tr>

			


			<tr>

				<td>상영시작</td>
				<td><input type="text" id="timeStart" name="timeStart" /></td>
				

			</tr>

			<tr>

				<td>상영종료</td>
				<td><input type="text" id="timeEnd" name="timeEnd" /></td>

			</tr>


			<tr>
				<td><button id="btnTimeTableSave">확인</button> <input
					type="reset" name="resetbtn" value="초기화"></td>
			</tr>

		</table>

	</form>


</div>
</div>



</body>
<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
</html>