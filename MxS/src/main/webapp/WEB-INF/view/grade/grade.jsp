<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*, javax.servlet.*, java.util.*, model.*" %>
<%@page import="org.springframework.context.*, org.springframework.context.support.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>평점 | 영화</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="./css/grade.css" rel="stylesheet">
<style type="text/css">
ul{
	list-style: none;
}
.gradelist li {
	font-size: 12px;
	display: inline-block;
	padding-left: 100px;
}
.gradelist li:first-child {
	padding-left: 0px;
}
</style>
<!-- //평점 작성 -->
<script type="text/javascript">
	function gradePop(val){
		alert(val);
		var url = 'gradeWrite?movie='+ val;
		var popupOption = 'directories=no, toolbar=no, location=no, menubar=no, status=no, scrollbars=no, resizable=no, left=400, top=200, width=730, height=450';
	    window.open("gradeWrite", "평점 작성", popupOption);
	}
</script>
</head>
<% String movie = request.getParameter("movieNum"); %>
 	<div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>
<div class="G_container">
	<div class="title_heading">
		<h1><strong>평점</strong></h1>
		<div class="submenu">
            <ul>
             	<li><a href="#" class="required-login" data-url="#">내가 쓴 평점</a></li>
                <li>
                	<form:form method="post" action="gradeWrite">
						<input type="hidden" name="movieNum" value="<%= movie %>">
						<input type="submit" value="평점작성">
					</form:form>
				</li>
            </ul>
        </div>
		
	<!-- 평점 설명 -->
	<div class="heading">
		<a class="goto-link"><h5> 실관람객 평점 </h5></a>
		<p class="txt-write">관람일 포함 7일 이내 관람평을 남기시면 <strong>20P</strong>가 적립됩니다. 
			<%-- <a class="link-gradewrite" href="javascript:gradePop(<%= movie %>);"><span>평점작성</span></a><!-- js: 팝업 설정하기 -->
				 <a class="link-reviewwrite" href="#"><span>내 평점</span></a>
			 --%>
		</p>
	</div>
	<!-- 실관람객 -->
	<div class="spectator">
		<div class="percentBox">
			<span class="percent">
				<strong>100</strong> %
			</span>
		</div>
		<div class="personBox">
			<p>
				<span class="personNum">
					<strong>${count}</strong> 명의
				</span>
				<em>실관람객이</em> 평가해 주셨습니다.
			<p>
		</div>
	</div>
	<!-- 선택 정렬 메뉴 -->
	<ul class="sort" id="sortTab">
		<li class="on" id="sortTab1"><a href="#">최신순<span class="arrow-down"></span></a></li>
		<!-- <li id="sortTab2"><a href="#">추천순<span class="arrow-down"></span></a></li> -->
	</ul>
	<div class="row">
        <!-- 관람평 --><!-- box -->
       <c:forEach var="grade" items="${result}">
		<div class="col-md-4" id="col-md-4">
			<div class="artist-data pull-left">
				<div class="artst-pic pull-left">
					<a href="#">
						<img src="http://placehold.it/122x122" alt="프로필" class="img-responsive" />
					</a>
				</div>
				<div class="artst-prfle pull-right">
					<div class="art-title">
						<span class="artst-sub">
							<span class="byname">${grade.MEMBER_ID}</span>
						</span>	
					</div>
					<div class="art-content">
						<span class="contents">${grade.SCORE_CON}</span> 
					</div>
					<div class="counter-tab">
						<span class="daysago">${grade.SCORE_DATE}</span> 
						<div class="counter_like">&nbsp; | <a href="#"><i class="glyphicon glyphicon-heart"></i></a></div>
					</div>
				</div>
				<!-- hash 해시 태그 삭제 -->
			</div>
		</div>
	</c:forEach>
	</div>
</div>
</div>
</body>
 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
 </div>
</html>