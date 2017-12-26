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
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>수정완료</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
.bright {
	float: right;
}

.button.-dark2 {
    color: #416dea;
  background: #161616;
}
.btn{transition:all 0.8s;-o-transition:all 0.8s;-moz-transition:all 0.8s;-webkit-transition:all 0.8s;border-radius:0px;margin-top:10px}
.btn-rounded{border-radius:50px}
.btn-round-tosquare:hover{border-radius:0px}
.btn-square-toround:hover{border-radius:50px}
.btn-bordered-success{color:#5CB85C;background:#FFFFFF;border:2px solid #5CB85C}
.btn-bordered-success:hover{color:#FFFFFF;background:#5CB85C;border:2px solid #FFFFFF}

.btn-bordered-opt{color:#da658e;background:#FFFFFF;border:2px solid #da658e}
.btn-bordered-opt:hover{color:#FFFFFF;background:#da658e;border:2px solid #FFFFFF}

.btn-bordered-admin{color:#58c9c7;background:#FFFFFF;border:2px solid #58c9c7}
.btn-bordered-admin:hover{color:#FFFFFF;background:#58c9c7;border:2px solid #FFFFFF}
</style>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>

<link href="./css/storeupload.css?ver=1" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="./js/storeupload.js"></script>


<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="http://www.expertphp.in/js/jquery.form.js"></script>

</head>

<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>

<body>

<hr/>

	<div class="container">
		<div class="row">

		<h1>상품 수정이 완료되었습니다.</h1>
		<a href="storeupload"  class="btn btn-bordered-success" >추가 상품 등록</a>		
		<a href="storeoption" class="btn btn-bordered-opt">추가 옵션 등록</a>
		<a href="storeadmin" class="btn btn-bordered-admin">스토어 관리자페이지로</a>
		
		
		</div>
	</div>


	<div id="footer">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>




</body>
</html>


