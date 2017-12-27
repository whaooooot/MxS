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
			var screenSeat = $("#screenSeat").val();
			var seatRow = $("#seatRow").val();
			var seatCol = $("#seatCol").val();
			if (screenName == "") {
				alert("상영관이름을 입력하세요");
				document.form1.screenName.focus();
				return;
			}
			if (screenSeat == "") {
				alert("좌석수를 입력하세요");
				document.form1.screenSeat.focus();
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
		//좌석선택값 받기 체크박스
/* 		$(".btn").click(function() {
			var chk = document.getElementsByName("chk[]");
			var len = chk.length;
			var checkRow = ''; //체크된 체크박스의 value를 담기위한 변수
			var checkCnt = 0; //체크된 체크박스의 개수
			var checkLast = ''; //체크된 체크박스 중 마지막 체크박스의 인덱스를 담기위한 변수

			var rowid = ''; //체크된 체크박스의 모든 value 값답기     
			var cnt = 0;

			for (var i = 0; i < len; i++) {
				if (chk[i].checked == true) {
					checkCnt++;
					checkLast = i;
				}
			}

			for (var i = 0; i < len; i++) {
				if (chk[i].checked == true) {
					checkRow = chk[i].value;

					if (checkCnt == 1) {
						rowid += "'" + checkRow + "'"; // 한개 'value'의 형태 (뒤에 ,(콤마)가 붙지않게)

					} else { //체크된 체크박스의 개수가 여러 개 일때                                        
						if (i == checkLast) {
							rowid += "'" + checkRow + "'"; //체크된 체크박스 중 마지막 체크박스일 때 
						} else {
							rowid += "'" + checkRow + "',";
						}

					}
					cnt++;
					checkRow = '';
				}

				

			}
			alert(rowid); //'value1', 'value2', 'value3' 의 형태로 출력
		}); */
		
		

		
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
<body>
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

				<td>좌석수</td>
				<td><form:input id="screenSeat" path="screenSeat" /></td>

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




	



</body>
</html>