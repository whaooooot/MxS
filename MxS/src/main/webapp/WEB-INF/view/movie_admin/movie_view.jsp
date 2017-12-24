<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="repository.MovieSessionRepository"%>
<%@ page import="model.*"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 상세</title>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript" src="./js/common.js"></script>
<script>	
$(document).ready(function(){
	$("#btnUpdete").click(function(){
		/* var title = document.form1.title.value; ==> name속성으로 처리할 경우 */
		
		
		var movieTitle = $("#movieTitle").val();
		var movieTime = $("#movieTime").val();
		var movieGenr = $("#movieGenr").val();
		var movieDire = $("#movieDire").val();
		var movieActor = $("#movieActor").val();
		var movieGrade = $("#movieGrade").val();
		var movieCon = $("#movieCon").val();
		
		
		if(movieTitle == ""){
			alert("영화제목을 입력하세요");
			document.form1.movieTitle.focus();
			return;
		}
		if(movieTime == ""){
			alert("상영시간을 입력하세요");
			document.form1.movieTime.focus();
			return;
		}
		 if(movieGenr == ""){
			alert("영화장르를 입력하세요");
			document.form1.movieGenr.focus();
			return;
		} 
		 if(movieDire == ""){
				alert("감독이름을 입력하세요");
				document.form1.movieDire.focus();
				return;
		} 
		 if(movieActor == ""){
				alert("배우이름을 입력하세요");
				document.form1.movieActor.focus();
				return;
		} 
		 if(movieGrade == ""){
				alert("영화등급을 입력하세요");
				document.form1.movieGrade.focus();
				return;
		} 
		 if(movieCon == ""){
				alert("줄거리를 입력하세요");
				document.form1.movieCon.focus();
				return;
		} 


					 
		if(confirm("수정하시겠습니까?")){
				document.form1.action = "${path}/movie_update";
				document.form1.submit();
		} 
	 
	});
	
	// 6. 파일 업로드 드래그
	$(".fileDrop").on("dragenter dragover", function(event){
		event.preventDefault(); // 기본효과 제한
	});
	$(".fileDrop").on("drop", function(event){
		event.preventDefault(); // 기본효과를 제한
		// 드래그된 파일의 정보
		var files = event.originalEvent.dataTransfer.files;
		// 첫번째 파일
		var file = files[0];
		// 콘솔에서 파일정보 확인
		// ajax로 전달할 폼 객체
		var formData = new FormData();
		// 폼 객체에 파일추가, append("변수명", 값)
		formData.append("file", file);
		//ajax를 통해 업로드 및 페이지에 정보 출력
		$.ajax({
			type: "post",
			url: "${path}/upload/uploadAjax",
			data: formData,
			dataType: "text",
			// processData: true=> get방식, false => post방식
			processData: false,
			// contentType: true => application/x-www-form-urlencoded, 기본옵션
			//				false => multipart/form-data, 멀티파트
			contentType: false,
			success: function(data) {
				alert(data + "에 해당 포스터로 수정 하시겠습니까?");
				console.log(data);
				// 첨부 파일의 정보
				var str = "";					
				// 이미지파일이면 썸네일 이미지 출력
				if(checkImageType(data)){ 
					str = "<div><a href='${path}/upload/displayFile?fileName="+getImageLink(data)+"'>";
					str += "<img src='${path}/upload/displayFile?fileName="+data+"'></a>";
				// 이미지 파일이 아니면 다운로드
				} else { 
					str = "<div><a href='${path}/upload/displayFile?fileName="+data+"'>"+getOriginalName(data)+"</a>";	
				}
					str += "<span data-src="+data+">[삭제]</span></div>";
				$(".uploadedList").append(str);
				
				var fileInfo = getFileInfo(data);
				var fileName = fileInfo.fileName;
								
				/* document.getElementById("moviePoster").value += fileName + "/"; 파일 여러개일 때 */
				document.getElementById("moviePoster").value = fileName;
				
			}
		});
	});
		// 출력된 썸네일에서 파일 삭제
		// 태그.on("이벤트", "자손태그", "이벤트핸들러")
		$(".uploadedList").on("click", "span", function(event){
			alert("삭제되었습니다")
			var that = $(this); // 여기서 this는 클릭한 span태그
			$.ajax({
				url: "${path}/upload/deleteFile",
				type: "post",
				// data: "fileName="+$(this).attr("date-src") = {fileName:$(this).attr("data-src")}
				// 태그.attr("속성")
				data: {fileName:$(this).attr("data-src")}, // json방식
				dataType: "text",
				success: function(result){
					if( result == "deleted" ){
						// 클릭한 span태그가 속한 div를 제거
						that.parent("div").remove();
						
					}
				}
			});
		});
	
	
	
		//  게시글 삭제
		$("#btnDelete").click(function(){
	
			if(confirm("삭제하시겠습니까?")){
				document.form1.action = "${path}/movie_delete";
				document.form1.submit();
			}
		});
		
		
		//게시글 목록으로 이동 
		$("#btnList").click(function(){
			location.href="${path}/movie_list";
		});
		// 4. 첨부파일 목록 불러오기
		/* listAttach(); */
		


});
	

		// 첨부파일 목록
		// $(객체) $("태그") $("#id") $(".class")
		function listAttach(){
			$.ajax({
				type: "post",
				url: "${path}/getAttach/${movie.movieNum}",
				success: function(list){
					$(list).each(function(){
					// each문 내부의 this : 각 step에 해당되는 값을 의미	
					var fileInfo = getFileInfo(this);
					var html = "<div><a href='"+fileInfo.getLink+"'>"+fileInfo.fileName+"</a>&nbsp;&nbsp;";
					// href="#" null link, 하이퍼링크로 이동하지 않는다.
					html += "<a href='#' class='fileDel' data-src='"+this+"'>[삭제]</a></div>"
					$(".uploadedList").append(html);
					});
				}
			});
		}


		// 원본파일이름 추출하기
		function getOriginalName(fileName) {
			// 이미지 파일이면
			if(checkImageType(fileName)) {
				return; // 함수종료
			}
			// uuid를 제외한 원래 파일 이름을 리턴
			var idx = fileName.indexOf("_")+1;
			return fileName.substr(idx);
		}
		
		// 이미지파일 링크 만들기
		function getImageLink(fileName) {
			// 이미지파일이 아니면
			if(!checkImageType(fileName)) { 
				return; // 함수 종료 
			}
			// 이미지 파일이면
			var front = fileName.substr(0, 12); // 연원일경로 추출
			var end = fileName.substr(14); // s_ 제거
			console.log(front);
			console.log(end);
			console.log(fileName);
			return front+end;
		}
		
		// 이미지파일 형식 체크하기
		function checkImageType(fileName) {
			// i : ignore case(대소문자 무관)
			var pattern = /jpg|gif|png|jpeg/i; // 정규표현식
			return fileName.match(pattern); // 규칙이 맞으면 true
		}




</script>
<style>
	.fileDrop {
		width:400px;
		height: 200px;
		border: 1px dotted blue;
	}
	
	small {
		margin-left: 3px;
		font-weight: bold;
		color: gray;
	}
</style>
</head>
<body>
	<h2>영화 상세</h2>
	<form id="form1" name="form1" method="post">
	
		<div>
			<!-- 원하는 날짜형식으로 출력하기 위해 fmt태그 사용 -->
			개봉날짜 :
			<fmt:formatDate value="${movie.movieDate}"
				pattern="yyyy-MM-dd a HH:mm:ss" />
			<!-- 날짜 형식 => yyyy 4자리연도, MM 월, dd 일, a 오전/오후, HH 24시간제, hh 12시간제, mm 분, ss 초 -->
		</div>
		<div>
			영화제목 <input name="movieTitle" id="movieTitle" size="80" value="${movie.movieTitle}"
				placeholder="영화제목을 입력해주세요">
		</div>
		<div>
			상영시간 <input name="movieTime" id="movieTime" size="80" value="${movie.movieTime}"
				placeholder="상영시간을 입력해주세요">
		</div>
		
		<div>
			영화장르 <input name="movieGenr" id="movieGenr" size="80" value="${movie.movieGenr}"
				placeholder="장르를 입력해주세요">
		</div>
		<div>
			감독이름 <input name="movieDire" id="movieDire" value="${movie.movieDire}"
				placeholder="감독이름을 입력해주세요">
		</div>
		<div>
			배우이름 <input name="movieActor" id="movieActor" value="${movie.movieActor}"
				placeholder="배우이름을 입력해주세요">
		</div>
		<div>
			관람등급 <input name="movieGrade" id="movieGrade" value="${movie.movieGrade}"
				placeholder="관람등급을 입력해주세요">
		</div>
		<div>
			줄거리
			<textarea name="movieCon" id="movieCon" rows="4" cols="80"
				placeholder="줄거리를 입력해주세요">${movie.movieCon}</textarea>
		</div>
		<div>
			포스터 파일명 <input name="moviePoster" id="moviePoster" value="${movie.moviePoster}">
		</div>

		<div style="width: 650px; text-align: center;">
			<!-- 영화번호를 hidden으로 처리 -->
			<input type="hidden" name="movieNum" value="${movie.movieNum}">
		
			<button type="button" id="btnList">영화목록으로</button>
			<button type="button" id="btnUpdete">수정</button>
			<button type="button" id="btnDelete">삭제</button>
		</div>
				<!-- 첨부파일 목록 -->
		<hr>
			<h2>File Upload(Ajax)</h2>
			<h3>수정할 포스터이미지를 drop 하세요</h3>
			<!-- 파일을 업로드할 영역 -->
			<div class="fileDrop">여기에 drop하라능</div>
			<!-- 업로드된 파일 목록 -->
			<h3>수정할 파일 목록</h3>
			<div class="uploadedList"></div>

		
			
			
		<hr>
	</form>
</body>
</html>