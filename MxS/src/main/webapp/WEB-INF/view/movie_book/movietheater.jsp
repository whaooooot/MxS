<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	function theaterName(theaterName){
		document.frm1.theaterNum.value=theaterName;
	}
</script>
<input type="hidden" name="theaterNum">
<dl>
<c:forEach var="theater" items="${result}">
	<dd><a href="javascript:theaterName('${theater.THEATER_NUM}')">${theater.THEATER_NAME}</a></dd>
</c:forEach>
</dl>
</body>
</html>