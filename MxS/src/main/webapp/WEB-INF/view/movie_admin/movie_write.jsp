<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화등록</title>


<%@ include file="../include/header.jsp" %>
<script type="text/javascript" src="./js/common.js"></script>
<script>
	$(document).ready(function() {
		
		// 드래그 영역 기본 효과(바로보기)를 제한
		$(".fileDrop").on("dragenter dragover", function(event) {
			event.preventDefault(); // 기본효과를 제한
		});
		
		// 파일 여러개 ajax로 업로드
		// event : jQuery 이벤트, originalEvent : javascript 이벤트
		$(".fileDrop").on("drop", function(event) {
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
					alert(data + "에 해당 포스터를 등록 하시겠습니까?");
					console.log(data);
					
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
						
/* 					
					//파일명을 링크로 출력
					// 첨부 파일의 정보 부르기
					var fileInfo = getFileInfo(data);
					// 하이퍼링크
					var html = "<div><a href='"+fileInfo.getLink+"'>"+fileInfo.fileName+"</a><br>";
					// hidden 태그 추가
					html += "<span><input type='hidden' class='file' value='"+fileInfo.fullName+"'></span></div>";
					// uploadedList div에 원본파일 링크된파일명 추가
					$("#uploadedList").append(html);
*/

					 

					//디비 저장을 위해 생성된 파일명을 input에 추가	 
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
	
		//데이터 전송 및 유효성 검사
		$("#btnMovieSave").click(function(){
			var movieTitle = $("#movieTitle").val();
			var movieTime = $("#movieTime").val();
			var movieGenr = $("#movieGenr").val();
			var movieDire = $("#movieDire").val();
			var movieActor = $("#movieActor").val();
			var movieGrade = $("#movieGrade").val();
			var movieCon = $("#movieCon").val();
			var movieCon = $("#movieDate").val();
			
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
			 
			 if(movieDate == ""){
					alert("개봉날짜를 입력하세요");
					document.form1.movieDate.focus();
					return;
				}
			 if(moviePoster == ""){
					alert("포스터를 입력하세요");
					document.form1.moviePoster.focus();
					return;
				}
			 
/*    		
 
 			/// 첨부파일 이름을 form에 추가
			var that = $("#form1");
			var str = "";
			// 태그들.each(함수)
			// id가 uploadedList인 태그 내부에 있는 hidden태그들
			$("#uploadedList .file").each(function(i){
				str += "<input type='text' name='files' value='"+$(this).val()+"'>";
			});
			// form에 hidden태그들을 추가
			$("#form1").append(str);  
*/		


			
///////////////폼에 입력한 데이터들을 서버로 전송 
			document.form1.submit();
			alert("등록되었습니다.");
			
		}); 
		
		//게시글 목록으로 이동 
		$("#btnList").click(function(){
			location.href="${path}/movie_list";
		});
	
	});
	
	
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




	<h2>영화등록</h2>

	<form:form name="form1" id="form1" commandName="movie" method="post" action="${path}/movie_insert">
		<table border=1>

			<tr>

				<td>영화제목</td>
				<td><form:input id="movieTitle" path="movieTitle" /></td>

			</tr>

			<tr>

				<td>영화장르</td>
				<td><form:input id="movieGenr" path="movieGenr" /></td>

			</tr>

			<tr>

				<td>상영시간</td>
				<td><form:input id="movieTime" path="movieTime" /></td>

			</tr>
			<tr>

				<td>감독이름</td>
				<td><form:input id="movieDire" path="movieDire" /></td>

			</tr>
			<tr>

				<td>배우이름</td>
				<td><form:input id="movieActor" path="movieActor" /></td>

			</tr>
			<tr>

				<td>등급</td>
				<td><form:input id="movieGrade" path="movieGrade" /></td>

			</tr>
			<tr>

				<td>줄거리</td>
				<td><form:textarea rows="4" cols="50" id="movieCon" path="movieCon" /></td>
				
			</tr>
			<tr>

				<td>개봉날짜</td>
				<td><form:input id="movieDate" path="movieDate" /></td>


			</tr>
			<tr>

				<td>파일명</td>
				<td><form:input id="moviePoster" path="moviePoster" /></td>


			</tr>			
			<tr>
				<td><button type="button" id="btnMovieSave">확인</button>
				 <input	type="reset" name="resetbtn" value="초기화"></td>
			</tr>

		</table>
		
		<button type="button" id="btnList">영화목록으로</button>
		<hr>
			<h2>File Upload(Ajax)</h2>
			<h3>업로드할 포스터이미지를 drop 하세요</h3>
			<!-- 파일을 업로드할 영역 -->
			<div class="fileDrop">여기에 drop</div>
			<!-- 업로드된 파일 목록 -->
			<h3>업로드된 파일</h3>
			<div class="uploadedList"></div>

		
			
			
		<hr>
	</form:form>	
</body>
</html>