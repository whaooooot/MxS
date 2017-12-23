<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<%@ include file="../include/header.jsp"%>
<script>	
$(document).ready(function(){
	$("#btnList").click(function(){


			document.form1.action = "${path}/movie_select";
			document.form1.submit();
		
	});
});
</script>
<title>Insert title here</title>
</head>
<body>

	<hr>
	<h2></h2>
	<form id="form1" name="form1" method="post">

		<button type="button" id="btnList">영화목록으로2</button>
	</form>
	<hr>

</body>
</html>