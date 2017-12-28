<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

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
</head>

<div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>


<body>

<hr/>

	<div class="container">
		<div class="row">

		<h1>회원가입이 완료되었습니다.</h1>	
		<a href="index" class="btn btn-bordered-admin">메인으로</a>
		
		
		</div>
	</div>



</body>


<div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
</html>