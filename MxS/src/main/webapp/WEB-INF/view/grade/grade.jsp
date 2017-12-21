<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*, javax.servlet.*, java.util.*, model.*" %>
<%@page import="org.springframework.context.*, org.springframework.context.support.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 쓴 평점</title>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="./css/grade.css" rel="stylesheet">
</head>
 	<div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>
<div class="G_container">
	<div class="title_heading">
		<h1><strong>평점</strong></h1>
		<div class="submenu">
            <ul>
                <li class="on"><a href="#" title="현재 선택">일반평점 </a></li> &nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="#" class="required-login" data-url="#">내가 쓴 평점</a></li>
            </ul>
        </div>
	</div>
	<!-- 평점 설명 -->
	<div class="heading">
		<a class="goto-link"><h5> 실관람객 평점 </h5></a>
		<p class="txt-write">관람일 포함 7일 이내 관람평을 남기시면 <strong>20P</strong>가 적립됩니다. 
			<a class="link-gradewrite" href="javascript:void(0);"><span>평점작성</span></a><!-- js: 팝업 설정하기 -->
			<a class="link-reviewwrite" href="#"><span>내 평점</span></a>
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
					<strong>1000</strong> 명의
				</span>
				<em>실관람객이</em> 평가해 주셨습니다.
			<p>
		</div>
	</div>
	<!-- 선택 정렬 메뉴 -->
	<ul class="sort" id="sortTab">
		<li class="on" id="sortTab1"><a href="#">최신순<span class="arrow-down"></span></a></li>
		<li id="sortTab2"><a href="#">추천순<span class="arrow-down"></span></a></li>
	</ul>
	<div class="row">
        <!-- 관람평 --><!-- box -->
        <%-- <c:forEach var="grade" items="${result}"> --%>
		<div class="col-md-4">
			<div class="artist-data pull-left">
				<div class="artst-pic pull-left">
					<a href="#">
						<img src="http://placehold.it/122x122" alt="프로필" class="img-responsive" />
					</a>
				</div>
				<div class="artst-prfle pull-right">
					<div class="art-title">
						<span class="artst-sub"><span class="byname">회원 아이디 시발</span></span>
					</div>
					<div class="art-content">
						<span class="contents">평점내용</span> 
					</div>
					<div class="counter-tab">
						<span class="daysago">등록일</span> 
						<div class="counter_like">&nbsp; | <a href="#"><i class="glyphicon glyphicon-heart"></i></a> 0123</div>
					</div>
				</div>
				<!-- hash 해시 태그 삭제 -->
			</div>
		</div>
		<%-- </c:forEach> --%>
		<!-- //관람평 --><!-- // box -->
		<!-- 관람평 --><!-- box -->
        <%-- <c:forEach var="grade" items="${result}"> --%>
		<div class="col-md-4">
			<div class="artist-data pull-left">
				<div class="artst-pic pull-left">
					<a href="#">
						<img src="http://placehold.it/122x122" alt="프로필" class="img-responsive" />
					</a>
				</div>
				<div class="artst-prfle pull-right">
					<div class="art-title">
						<span class="artst-sub"><span class="byname">회원 아이디 시발</span></span>
					</div>
					<div class="art-content">
						<span class="contents">주요 배우들 목소리 톤이 너무 과해요... 연기가 오글거리는 것도 있고 씨지도 너무 티나고, 생각보다 기대이하였습니다..</span> 
					</div>
					<div class="counter-tab">
						<span class="daysago">등록일</span> 
						<div class="counter_like">&nbsp; | <a href="#"><i class="glyphicon glyphicon-heart"></i></a> 0123</div>
					</div>
				</div>
				<!-- hash 해시 태그 삭제 -->
			</div>
		</div>
		<%-- </c:forEach> --%>
		<!-- //관람평 --><!-- // box -->
		<!-- 관람평 --><!-- box -->
        <%-- <c:forEach var="grade" items="${result}"> --%>
		<div class="col-md-4">
			<div class="artist-data pull-left">
				<div class="artst-pic pull-left">
					<a href="#">
						<img src="http://placehold.it/122x122" alt="프로필" class="img-responsive" />
					</a>
				</div>
				<div class="artst-prfle pull-right">
					<div class="art-title">
						<span class="artst-sub"><span class="byname">회원 아이디 시발</span></span>
					</div>
					<div class="art-content">
						<span class="contents">평점내용</span> 
					</div>
					<div class="counter-tab">
						<span class="daysago">등록일</span> 
						<div class="counter_like">&nbsp; | <a href="#"><i class="glyphicon glyphicon-heart"></i></a> 0123</div>
					</div>
				</div>
				<!-- hash 해시 태그 삭제 -->
			</div>
		</div>
		<%-- </c:forEach> --%>
		<!-- //관람평 --><!-- // box -->
	</div>
</div>
</body>
 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
 </div>
</html>