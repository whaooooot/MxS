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
	function moviechoice(movieTitle){
		document.frm1.movieNum.value=movieTitle;
	}
</script>
<input type="hidden" name="movieNum">
	<dl>
		<c:forEach var="movie" items="${result}">
			<dd><a href="javascript:moviechoice('${movie.MOVIE_NUM}')">${movie.MOVIE_TITLE}</a></dd>
		</c:forEach>
	</dl>
</body>
</html>