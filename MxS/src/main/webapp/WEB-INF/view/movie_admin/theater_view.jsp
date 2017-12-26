<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>극장 수정</title>
<%@ include file="../include/header.jsp"%>

<script>
	$(document).ready(function() {
		$("#btnUpdete").click(function() {
			/* var title = document.form1.title.value; ==> name속성으로 처리할 경우 */

			var movieTitle = $("#movieTitle").val();
			var movieTime = $("#movieTime").val();


			if (theaterName == "") {
				alert("극장이름을 입력하세요");
				document.form1.theaterName.focus();
				return;
			}
			if (theaterArea == "") {
				alert("지역을 입력하세요");
				document.form1.theaterArea.focus();
				return;
			}

		 	if (confirm("수정하시겠습니까?")) {
/*   			window.opener.document.form1.action = "${path}/theater_update";
			window.opener.document.form1.submit();   */
 				
			document.form1.action = "${path}/theater_update";
			document.form1.submit();  
				
			 } 

		});

		//  게시글 삭제
		$("#btnDelete").click(function() {

			if (confirm("삭제하시겠습니까?")) {
				
				//opener.window.location = "${path}/theater_delete";
				document.form1.action = "${path}/theater_delete";
				document.form1.submit();
				
				
			}
		});

		//게시글 목록으로 이동 
		$("#btnList").click(function() {
			location.href = "${path}/movie_list";
		});

	});
</script>
<style>


</style>
</head>
<body>
	<h2>극장 수정</h2>
	<form id="form1" name="form1" method="post">

		<div>
			극장이름 <input name="theaterName" id="theaterName" 
				value="${theater.theaterName}" placeholder="극장이름을 입력해주세요">
		</div>
		<div>
			극장지역 <input name="theaterArea" id="theaterArea" 
				value="${theater.theaterArea}" placeholder="지역을 입력해주세요">
		</div>

		<div style="width: 650px; text-align: left;">
			<!-- 영화번호를 hidden으로 처리 -->
			<input type="hidden" name="movieNum" value="${theater.movieNum}">
			<input type="hidden" name="theaterNum" value="${theater.theaterNum}">
			<button type="button" id="close" onclick="javascript:self.close();">닫기</button>
			<button type="button" id="btnUpdete">수정</button>
			<button type="button" id="btnDelete">삭제</button>
		</div>
		
	</form>
</body>
</html>