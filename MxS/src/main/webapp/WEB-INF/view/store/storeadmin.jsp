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
<title>관리자페이지</title>
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


.btn-bordered-movie{color:#88c3f5;background:#FFFFFF;border:2px solid #88c3f5}
.btn-bordered-movie:hover{color:#FFFFFF;background:#88c3f5;border:2px solid #FFFFFF}

.btn-bordered-movie2{color:#aeca30;background:#FFFFFF;border:2px solid #aeca30}
.btn-bordered-movie2:hover{color:#FFFFFF;background:#aeca30;border:2px solid #FFFFFF}

.btn-bordered-movie3{color:#a248c2;background:#FFFFFF;border:2px solid #a248c2}
.btn-bordered-movie3:hover{color:#FFFFFF;background:#a248c2;border:2px solid #FFFFFF}

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

		<h1>관리자페이지입니다.</h1>
		<a href="storeupload"  class="btn btn-bordered-success" >상품 등록</a>		
		<a href="storeoption" class="btn btn-bordered-opt">옵션 등록</a>		
		<a href="movie_list" class="btn btn-bordered-movie">영화관리</a>
		<a href="movie_write" class="btn btn-bordered-movie2">영화등록</a>
		<a href="theater_write" class="btn btn-bordered-movie3">극장등록</a>
		
		
		
		</div>
	</div>


	<div id="footer">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>




</body>
</html>


