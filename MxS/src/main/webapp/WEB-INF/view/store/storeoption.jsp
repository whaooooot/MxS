<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>옵션등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
.bright {
	float: right;
}
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

			<form:form class="well col-sm-10 col-md-10"  action="storeuploadfinish" modelAttribute="storedto" method="POST">
				<div class="row">
					<div class="col-sm-12 col-md-12">
												
						<hr/>
						<label>상품옵션1(색상)(,로구분)</label>
						<input class="form-control" placeholder="상품옵션" type="text">
						<label>상품옵션2(크기)(,로 구분)</label> 
						<input class="form-control"	placeholder="상품옵션" type="text"> 
						<hr/>
						
						<label>상품 수</label> 
						<input name="goodsQuan" class="form-control" placeholder="상품수" type="text"/>
						<label>상품 유의사항</label>
						<textarea name="goodsNote"  class="form-control" id="message" name="message"	rows="10"></textarea>
						
						<label>영화번호선택(리스트로변경)</label>
						<input name="movieNum" class="form-control" placeholder="영화번호입력" type="text"/>
						
						<br />
						<div class="bright">
							<input type="submit" class="btn btn-primary" value="상품올리기"/>						
						</div>
					</div>
				</div>
			</form:form>

		</div>
	</div>


	<div id="footer">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>




</body>
</html>


