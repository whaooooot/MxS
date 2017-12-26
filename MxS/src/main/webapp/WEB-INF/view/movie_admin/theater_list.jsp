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
		$("#btnTheaterWrite").click(function() {
			// 페이지 주소 변경(이동)
			location.href = "${path}/theater_write";
		
		
		});
		
		// 해당 레코드 버튼 클릭시 값 가져오기
		 $(".screenCheckBtn").click(function(){

				var str = ""
				var tdArr = new Array(); // 배열 선언

	            var screenCheckBtn = $(this);
	            
	            // checkBtn.parent() : checkBtn의 부모는 <td>이다.
	            // checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
	            var tr = screenCheckBtn.parent().parent();
	            var td = tr.children();

				// tr.text()는 클릭된 Row 즉 tr에 있는 모든 값을 가져온다.
				console.log("클릭한 Row의 모든 데이터 : " + tr.text());
	            
				// td.eq(index)를 통해 값을 가져오기
	            
	            var theaterNum = td.eq(0).text();
	            var movieNum = td.eq(4).text();
		
				//선택한 극장에 해당하는 시간표데이터 가져오기
				$.ajax({
							type : "POST",
							url : "${path}/screen_list",
							dataType : "html",
							data: "theaterNum="+theaterNum&"movieNum="+movieNum, 
							success : function(result) {
								$('#listScreen').html(result);
							}
						});
						return false;

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
	<h2>극장 목록</h2>


	<form name="form1" method="post" action="${path}/theater_write">

		<button type="button" id="btnTheaterWrite">극장새로등록</button>
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
				<th>극장번호</th>
				<th>극장이름</th>
				<th>극장지역</th>
				<th>상영관선택</th>
				<th>영화번호</th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) > 0}">
					<c:forEach var="theater" items="${list}">
						<tr>
							<td>${theater.theaterNum}</td>
							<td><span onclick="open_pop(${theater.theaterNum});">${theater.theaterName}</span></td>
							<td>${theater.theaterArea}</td>
							<td><input type="button" class="screenCheckBtn" value="선택" />
							</td>
							<td>
							${theater.movieNum}
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
	<div id="listScreen"></div><!-- 상영관리스트 출력 -->
</body>
</html>