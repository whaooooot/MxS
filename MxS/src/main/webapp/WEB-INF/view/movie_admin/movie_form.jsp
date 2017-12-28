<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%
	request.setCharacterEncoding("EUC-KR");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>movie_form</title>


<%@ include file="../include/header.jsp" %>
<script type="text/javascript" src="./js/common.js"></script>
<script>
	$(document).ready(function() {
		
		// �巡�� ���� �⺻ ȿ��(�ٷκ���)�� ����
		$(".fileDrop").on("dragenter dragover", function(event) {
			event.preventDefault(); // �⺻ȿ���� ����
		});
		
		// ���� ������ ajax�� ���ε�
		// event : jQuery �̺�Ʈ, originalEvent : javascript �̺�Ʈ
		$(".fileDrop").on("drop", function(event) {
			event.preventDefault(); // �⺻ȿ���� ����
			// �巡�׵� ������ ����
			var files = event.originalEvent.dataTransfer.files;
			// ù��° ����
			var file = files[0];
			// �ֿܼ��� �������� Ȯ��
			// ajax�� ������ �� ��ü
			var formData = new FormData();
			// �� ��ü�� �����߰�, append("������", ��)
			formData.append("file", file);
			//ajax�� ���� ���ε� �� �������� ���� ���
			$.ajax({
				type: "post",
				url: "${path}/upload/uploadAjax",
				data: formData,
				dataType: "text",
				// processData: true=> get���, false => post���
				processData: false,
				// contentType: true => application/x-www-form-urlencoded, �⺻�ɼ�
				//				false => multipart/form-data, ��Ƽ��Ʈ
				contentType: false,
				success: function(data) {
					alert(data + "�� �ش� �����͸� ��� �Ͻðڽ��ϱ�?");
					console.log(data);
					
					var str = "";					
					// �̹��������̸� ����� �̹��� ���
					if(checkImageType(data)){ 
						str = "<div><a href='${path}/upload/displayFile?fileName="+getImageLink(data)+"'>";
						str += "<img src='${path}/upload/displayFile?fileName="+data+"'></a>";
					// �̹��� ������ �ƴϸ� �ٿ�ε�
					} else { 
						str = "<div><a href='${path}/upload/displayFile?fileName="+data+"'>"+getOriginalName(data)+"</a>";	
					}
						str += "<span data-src="+data+">[����]</span></div>";
					$(".uploadedList").append(str);
						
/* 					
					//���ϸ��� ��ũ�� ���
					// ÷�� ������ ���� �θ���
					var fileInfo = getFileInfo(data);
					// �����۸�ũ
					var html = "<div><a href='"+fileInfo.getLink+"'>"+fileInfo.fileName+"</a><br>";
					// hidden �±� �߰�
					html += "<span><input type='hidden' class='file' value='"+fileInfo.fullName+"'></span></div>";
					// uploadedList div�� �������� ��ũ�����ϸ� �߰�
					$("#uploadedList").append(html);
*/

					 

					//��� ������ ���� ������ ���ϸ��� input�� �߰�	 
					var fileInfo = getFileInfo(data);
					var fileName = fileInfo.fileName;
									
					/* document.getElementById("moviePoster").value += fileName + "/"; ���� �������� �� */
					document.getElementById("moviePoster").value = fileName;					
				
				}
			});
		});
		
		// ��µ� ����Ͽ��� ���� ����
						// �±�.on("�̺�Ʈ", "�ڼ��±�", "�̺�Ʈ�ڵ鷯")
		$(".uploadedList").on("click", "span", function(event){
			alert("�����Ǿ����ϴ�")
			var that = $(this); // ���⼭ this�� Ŭ���� span�±�
			$.ajax({
				url: "${path}/upload/deleteFile",
				type: "post",
				// data: "fileName="+$(this).attr("date-src") = {fileName:$(this).attr("data-src")}
				// �±�.attr("�Ӽ�")
				data: {fileName:$(this).attr("data-src")}, // json���
				dataType: "text",
				success: function(result){
					if( result == "deleted" ){
						// Ŭ���� span�±װ� ���� div�� ����
						that.parent("div").remove();
						
					}
				}
			});
		});
	
		//������ ���� �� ��ȿ�� �˻�
		$("#btnSave").click(function(){
			var movieTitle = $("#movieTitle").val();
			var movieTime = $("#movieTime").val();
			var movieGenr = $("#movieGenr").val();
			var movieDire = $("#movieDire").val();
			var movieActor = $("#movieActor").val();
			var movieGrade = $("#movieGrade").val();
			var movieCon = $("#movieCon").val();
			var movieCon = $("#movieDate").val();
			
			if(movieTitle == ""){
				alert("��ȭ������ �Է��ϼ���");
				document.form1.movieTitle.focus();
				return;
				}
			if(movieTime == ""){
				alert("�󿵽ð��� �Է��ϼ���");
				document.form1.movieTime.focus();
				return;
				}
			 if(movieGenr == ""){
				alert("��ȭ�帣�� �Է��ϼ���");
				document.form1.movieGenr.focus();
				return;
				} 
			 if(movieDire == ""){
					alert("�����̸��� �Է��ϼ���");
					document.form1.movieDire.focus();
					return;
				} 
			 if(movieActor == ""){
					alert("����̸��� �Է��ϼ���");
					document.form1.movieActor.focus();
					return;
				} 
			 if(movieGrade == ""){
					alert("��ȭ����� �Է��ϼ���");
					document.form1.movieGrade.focus();
					return;
				} 
			 if(movieCon == ""){
					alert("�ٰŸ��� �Է��ϼ���");
					document.form1.movieCon.focus();
					return;
				} 
			 
			 if(movieDate == ""){
					alert("������¥�� �Է��ϼ���");
					document.form1.movieDate.focus();
					return;
				}

			 
/*    		
 
 			/// ÷������ �̸��� form�� �߰�
			var that = $("#form1");
			var str = "";
			// �±׵�.each(�Լ�)
			// id�� uploadedList�� �±� ���ο� �ִ� hidden�±׵�
			$("#uploadedList .file").each(function(i){
				str += "<input type='text' name='files' value='"+$(this).val()+"'>";
			});
			// form�� hidden�±׵��� �߰�
			$("#form1").append(str);  
*/		


			
///////////////���� �Է��� �����͵��� ������ ���� 
			document.form1.submit();
			alert("��ϵǾ����ϴ�.");
			
		}); 
		
		//�Խñ� ������� �̵� 
		$("#btnList").click(function(){
			location.href="${path}/movie_select";
		});
	
	});
	
	
	// ���������̸� �����ϱ�
	function getOriginalName(fileName) {
		// �̹��� �����̸�
		if(checkImageType(fileName)) {
			return; // �Լ�����
		}
		// uuid�� ������ ���� ���� �̸��� ����
		var idx = fileName.indexOf("_")+1;
		return fileName.substr(idx);
	}
	
	// �̹������� ��ũ �����
	function getImageLink(fileName) {
		// �̹��������� �ƴϸ�
		if(!checkImageType(fileName)) { 
			return; // �Լ� ���� 
		}
		// �̹��� �����̸�
		var front = fileName.substr(0, 12); // �����ϰ�� ����
		var end = fileName.substr(14); // s_ ����
		console.log(front);
		console.log(end);
		console.log(fileName);
		return front+end;
	}
	
	// �̹������� ���� üũ�ϱ�
	function checkImageType(fileName) {
		// i : ignore case(��ҹ��� ����)
		var pattern = /jpg|gif|png|jpeg/i; // ����ǥ����
		return fileName.match(pattern); // ��Ģ�� ������ true
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




	<h2>��ȭ���</h2>

	<form:form name="form1" id="form1" commandName="movie" method="post" action="${path}/movie_insert">
		<table border=1>

			<tr>

				<td>��ȭ����</td>
				<td><form:input id="movieTitle" path="movieTitle" /></td>

			</tr>

			<tr>

				<td>��ȭ�帣</td>
				<td><form:input id="movieGenr" path="movieGenr" /></td>

			</tr>

			<tr>

				<td>�󿵽ð�</td>
				<td><form:input id="movieTime" path="movieTime" /></td>

			</tr>
			<tr>

				<td>�����̸�</td>
				<td><form:input id="movieDire" path="movieDire" /></td>

			</tr>
			<tr>

				<td>����̸�</td>
				<td><form:input id="movieActor" path="movieActor" /></td>

			</tr>
			<tr>

				<td>���</td>
				<td><form:input id="movieGrade" path="movieGrade" /></td>

			</tr>
			<tr>

				<td>�ٰŸ�</td>
				<td><form:textarea rows="4" cols="50" id="movieCon" path="movieCon" /></td>
				
			</tr>
			<tr>

				<td>������¥</td>
				<td><form:input id="movieDate" path="movieDate" /></td>


			</tr>
			<tr>

				<td>���ϸ�</td>
				<td><form:input id="moviePoster" path="moviePoster" /></td>


			</tr>			
			<tr>
				<td><button type="button" id="btnSave">Ȯ��</button>
				 <input	type="reset" name="resetbtn" value="�ʱ�ȭ"></td>
			</tr>

		</table>

		<button type="button" id="btnList">��ȭ�������</button>
		<hr>
			<h2>File Upload(Ajax)</h2>
			<h3>���ε��� �������̹����� drop �ϼ���</h3>
			<!-- ������ ���ε��� ���� -->
			<div class="fileDrop">���⿡ drop</div>
			<!-- ���ε�� ���� ��� -->
			<h3>���ε�� ����</h3>
			<div class="uploadedList"></div>

		
			
			
		<hr>
	</form:form>	
</body>
</html>