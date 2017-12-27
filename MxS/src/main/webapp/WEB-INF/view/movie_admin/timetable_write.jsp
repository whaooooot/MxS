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
	//셀렉트박스의 영화 제목 선택했을 때 영화 번호가 input의 값으로 설정됨
	function setMovieNum(value) {
		var ab = document.getElementById('movieSelectBox').value;
		document.getElementById('test').value = ab;
	}
	$(function() {
		var select = "<option>:: 선택 ::</option>";
		$("#product").change(function() {
			if ($("#product").val() == "") { // select의 value가 ""이면, "선택" 메뉴만 보여줌.
				$("#sub").find("option").remove().end().append(select);
			} else {
				comboChange($(this).val());
			}
		});
		function comboChange() {
			$.ajax({
				type : "post",
				url : "${contextPath}/servlet/product/getSub.do",
				datatype : "json",
				data : $("#productForm").serialize(),
				success : function(data) {
					if (data.SUB_LIST.length > 0) {
						$("#sub").find("option").remove().end().append(select);
						$.each(data.SUB_LIST, function(key, value) {
							$("#sub").append("<option>" + value + "</option>");
						});
					} else {
						$("#sub").find("option").remove().end().append(
								"<option>-- No sub --</option>");
						return;
					}
				},
				error : function(x, o, e) {
					var msg = "페이지 호출 중 에러 발생 \n" + x.status + " : " + o
							+ " : " + e;
					alert(msg);
				}
			});
		}
	});
</script>
</head>
<body>
	<h2>시간표등록</h2>

	<form:form name="form1" id="form1" commandName="theater" method="post"
		action="${path}/timetable_insert">
		<table border=1>


			<tr>

				<td>존재하는 영화데이터</td>
				<td><form id="productForm">
						<select name="product" id="product" style="width: 80px;"
							onchange='setMovieNum(this.value);'>

							<option value="">영화선택</option>

							<c:forEach var="movie" items="${list}" varStatus="i">

								<option value="${movie.movieNum}">${movie.movieTitle}</option>

							</c:forEach>
						</select> <select name="sub" id="sub">

							<option>:: 선택 ::</option>

						</select>
					</form></td>

			</tr>
			<form:input id="test" path="movieNum" />
			<tr>

				<td>극장 데이터</td>
				<td><select id="theaterSelectBox" style="width: 80px;"
					onchange=''>

						<option value="">극장선택</option>

						<c:forEach var="movie" items="${list}" varStatus="i">

							<option value="${movie.movieNum}">${movie.movieTitle}</option>

						</c:forEach>

				</select> <form:input id="test" path="movieNum" /></td>

			</tr>

			<tr>

				<td>상영시작</td>
				<td><form:input id="timeStart" path="timeStart" /></td>

			</tr>

			<tr>

				<td>상영종료</td>
				<td><form:input id="timeEnd" path="timeEnd" /></td>

			</tr>


			<tr>
				<td><button type="button" id="btnTimeTableSave">확인</button> <input
					type="reset" name="resetbtn" value="초기화"></td>
			</tr>

		</table>

	</form:form>






</body>
</html>