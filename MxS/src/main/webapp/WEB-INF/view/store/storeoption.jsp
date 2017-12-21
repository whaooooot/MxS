<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import = "java.util.*" %>	
<%@ page import = "model.*" %>	
<% 
request.setCharacterEncoding("utf-8");
List<StoreoptDTO> listopt = (List<StoreoptDTO>)request.getAttribute("result");%>

<!DOCTYPE html>
<html>
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

<link href="./css/storeupload.css" rel="stylesheet"
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

									<% 
									for(StoreoptDTO d : listopt){
									out.print(d.getGoodsNum());
									out.print(d.getGoodsOpt());
									}
									%>
									
							
									




<hr/>

	<div class="container">
		<div class="row">
		
			
		
		<hr/>
		
		

			<form:form class="well col-sm-10 col-md-10"  action="storeoptionfinish" modelAttribute="storeoptdto" method="POST">
				<div class="row">
					<div class="col-sm-12 col-md-12">
									
						<label>상품번호선택(리스트로변경)</label>
						<input name="goodsNum"  class="form-control" placeholder="상품번호입력" type="text"/>
						
						<hr/>
						<label>상품옵션</label>
						<input name="goodsOpt"  class="form-control" placeholder="상품옵션" type="text">
		
						<hr/>
											
						<br />
						<div class="bright">
							<input type="submit" class="btn btn-primary" value="옵션 추가"/>						
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


