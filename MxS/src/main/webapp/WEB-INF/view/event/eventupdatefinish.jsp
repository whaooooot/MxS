<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("utf-8"); %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>이벤트등록완료</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<style type="text/css">
	
	.button.-dark2 {
	  color: #416dea;
	  background: #161616;
	}
	.btn{transition:all 0.8s;-o-transition:all 0.8s;-moz-transition:all 0.8s;-webkit-transition:all 0.8s;border-radius:0px;margin-top:10px}
	.btn-rounded{border-radius:50px}
	.btn-round-tosquare:hover{border-radius:0px}
	.btn-square-toround:hover{border-radius:50px}
	
	.btn-success{color:#5CB85C;background:#FFFFFF;border:2px solid #5CB85C}
	.btn-success:hover{color:#FFFFFF;background:#5CB85C;border:2px solid #FFFFFF}
		
	.btn-main{color:#58c9c7;background:#FFFFFF;border:2px solid #58c9c7}
	.btn-main:hover{color:#FFFFFF;background:#58c9c7;border:2px solid #FFFFFF}
	</style>
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	
	<link href="./css/eventupload.css?ver=1" rel="stylesheet" type="text/css">

	<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"	rel="stylesheet">


</head>

<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>

<body>

<hr/>

	<div class="container">
		<div class="row">

		<h1>이벤트 수정이 완료되었습니다.</h1>
		<a href="eventupload"  class="btn btn-success" >추가 상품 등록</a>		
		<a href="event" class="btn btn-main">이벤트 페이지로</a>
		
		</div>
	</div>

	<div id="footer">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>

</body>
</html>


