<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상영관 등록</title>

<%@ include file="../include/header.jsp"%>
    <script src="http://code.jquery.com/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="./js/common.js"></script>
<script>
	$(document).ready(function() {
		//데이터 전송 및 유효성 검사
		$("#btnScreenSave").click(function() {
			var screenName = $("#screenName").val();

			var seatRow = $("#seatRow").val();
			var seatCol = $("#seatCol").val();
			if (screenName == "") {
				alert("상영관이름을 입력하세요");
				document.form1.screenName.focus();
				return;
			}

			if (seatRow == "") {
				alert("좌석행을 입력하세요");
				document.form1.seatRow.focus();
				return;
			}
			if (seatCol == "") {
				alert("좌석열 입력하세요");
				document.form1.seatCol.focus();
				return;
			}
			document.form1.submit();
			alert("등록되었습니다.");
		});

		
		

		
	});


	
	//테이블생성2
	function setSeat(row, col) {
		var tag = "<table border='1'>";
		var row = parseInt(row);
		var col = parseInt(col);
		var z= 1;
		for (j = 1; j <= row; j++) {
			tag += "<tr>";
			for (i = 1; i <= col; i++) {
				tag += "<td><input onClick='chk(this.value,"+z+");' class='chk' id='chk"+z+"' name='chk[]' type='button' value="+j+"."+i+"></td>";
				
				z++;
			}
			tag += "</tr>";
		}
		tag += "</table>";
		area.innerHTML = tag;
	}
	
	//생성된좌석클릭해서 통로 값 받기
	function chk(val, z) {//클릭한 값 input에 출력
		var aisle = document.getElementById("aisle").value;
		var idx = aisle.indexOf(val);
		var z = parseInt(z);
		
		
		if(idx == -1){
			document.getElementById("aisle").value += "/" +val;
			$("#chk"+z).css("background-color", "yellow");
		}else{
				aisle = aisle.replace("/"+val, "");
				document.getElementById("aisle").value = aisle;
				$("#chk"+z).css("background-color", "gray");
		}
	}
	

	

	
	
	
</script>
</head>
<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>
<body>

<div class="container">		
		<div class="row">
	<h2>상영관등록</h2>
<%-- 	<%int movieNum = (int)request.getAttribute("movieNum"); 
	int theaterNum = (int)request.getAttribute("theaterNum");
	System.out.println("movieNum:"+movieNum);
	System.out.println("theaterNum:"+theaterNum);
	%> --%>


	<form:form name="form1" id="form1" commandName="screen" method="post"
		action="${path}/screen_insert">
		<table border=1>




			<tr>

				<td>상영관이름</td>
				<td><form:input id="screenName" path="screenName" /></td>

			</tr>


			<tr>

				<td>좌석행</td>
				<td><form:input id="seatRow" path="seatRow" /></td>

			</tr>
			<tr>

				<td>좌석열</td>
				<td><form:input id="seatCol" path="seatCol" /></td>

			</tr>

			<tr>

				<td>통로</td>
 				<td><form:input id="aisle" path="aisle" /></td>

			</tr>
			<tr>
			<td>
			<form:hidden id="movieNum" path="movieNum" value="${movieNum}" />
			
			<form:hidden id="theaterNum" path="theaterNum" value="${theaterNum}"/></td>
			</tr>
			
			<tr>

				<td><button type="button" id="btnScreenSave">확인</button> <input
					type="reset" name="resetbtn" value="초기화"></td>
			</tr>

		</table>

	</form:form>
	<button onclick="setSeat(seatRow.value, seatCol.value)">좌석생성</button>
	<div id="area"></div>




	
</div>
</div>


</body>
<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
</html>