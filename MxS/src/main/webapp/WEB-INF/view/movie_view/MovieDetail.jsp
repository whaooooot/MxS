<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>




<head>

<style type="text/css">
</style>
<link rel="stylesheet" href="./css/movie_common.css"  type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<title>Movie Detail Page</title>
<%@ include file="../include/header.jsp"%>
</head>

 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>

<div class="container">
		<div class="row">

	<!-- 실컨텐츠 시작 -->
	<div class="wrap-movie-detail" id="select_main">


		<div class="tit-heading-wrap">
			<h3>영화상세</h3>
		</div>
		<div class="sect-base-movie">
			<h3>
				<strong>${movie.movieTitle}</strong>
			</h3>
			<div class="box-image">
				<a
					href="/MxS/img/upload/mxs/movie/upload/s_${movie.moviePoster}"
					title="포스터 크게 보기 새창" target="_blank"> <span class="thumb-image">
						<img
						src="/MxS/img/upload/mxs/movie/upload/s_${movie.moviePoster}"
						alt="스타워즈: 라스트 제다이 포스터 새창" /> <span
						class="ico-posterdetail">포스터 크게 보기</span> <span
						class="ico-grade grade-12">${movie.movieGrade}</span>
				</span>
				</a>
			</div>
			<div class="box-contents">
				<div class="title">
					<strong>${movie.movieTitle}</strong>

				</div>


				<div class="spec">
					<dl>
						<dt>감독 :&nbsp;</dt>
						<dd>


							${movie.movieDire}

						</dd>

						<dd></dd>

						<dt>&nbsp;/ 배우 :&nbsp;</dt>
						<dd class="on">

								${movie.movieActor}

						</dd>




						<dt>장르 :${movie.movieGenr}</dt>
						<dd></dd>
						<dt>&nbsp;/ 기본 :&nbsp;</dt>
						<dd class="on">${movie.movieGrade},&nbsp;${movie.movieTime}</dd>
						<dt>개봉 :&nbsp;</dt>
						<dd class="on"><fmt:formatDate value="${movie.movieDate}"
				pattern="yyyy-MM-dd a HH:mm:ss" /></dd>
						<dt>줄거리 :&nbsp;</dt>
						<dd>${movie.movieCon}</dd>


					</dl>
				</div>

				<span class="like">
					<button class="btn-like" value="79893">영화 찜하기</button> <a
					class="link-reservation"
					href="#">예매</a>

				</span>
			</div>
		</div>
		<!-- .sect-base -->


		<div class="cols-content" id="menu">
			<div class="col-detail">
				<!-- 메뉴가 선택되면 a 에 title="선택" 이라고 넣는다 -->
				<!-- 리본메뉴 -->
				<ul class="tab-menu">
					<li class="on"><a title="현재 선택됨" 
						href="Trailer">트레일러 </a></li>
					<li class="last"><a
						href="/movies/detail-view/show-times.aspx?midx=79893#menu">상영시간표</a></li>
				</ul>
				<!-- 리본메뉴 끝 -->

            </div>

				<!-- .sect-graph -->



				<!-- .sect-review -->
				<!-- add_css -->








			</div>
</div>

</div>
</div>

	<!-- 실컨텐츠 끝 -->

 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>



</body>
</html>