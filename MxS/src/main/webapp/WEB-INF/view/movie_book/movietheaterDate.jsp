<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function timeeTable1(timeStart){
		document.frm1.timeeTable1.value=timeStart;
	}
</script>
</head>
<body>
<input type="text" name="timeeTable1">
<c:forEach  var="timeeTable" items="${result}"> 
	${timeeTable.getScreenName()}
	<c:forEach var="timeeTable1" items="${timeeTable.getTimeStarts()}"><br/>
		<a href="javascript:timeeTable1('${timeeTable.getScreenName()}-${timeeTable1.getTimeStart()}')">${timeeTable1.getTimeStart()}</a>
	</c:forEach>
</c:forEach>

</body>
</html>