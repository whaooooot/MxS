<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style type="text/css">

</style>
<link rel="stylesheet" href="./css/movie_common.css"  type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
input.goorade {
    color: #fff;
    background-color: #e71a0f;
    border: none;
    padding: 10px;
</style>
<title>Movie Detail Page</title>
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
				<strong>스타워즈: 라스트 제다이</strong>
			</h3>
			<div class="box-image">
				<a
					href="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79893/79893_1000.jpg"
					title="포스터 크게 보기 새창" target="_blank"> <span class="thumb-image">
						<img
						src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79893/79893_185.jpg"
						alt="스타워즈: 라스트 제다이 포스터 새창" onerror="errorImage(this)" /> <span
						class="ico-posterdetail">포스터 크게 보기</span> <span
						class="ico-grade grade-12"> 12세 이상</span>
				</span>
				</a>
			</div>
			<div class="box-contents">
				<div class="title">
					<strong>스타워즈: 라스트 제다이</strong>

					<p>Star Wars: The Last Jedi</p>
				</div>


				<div class="spec">
					<dl>
						<dt>감독 :&nbsp;</dt>
						<dd>


							<a href="/movies/persons/?pidx=113788">라이언 존슨</a>

						</dd>

						<dd></dd>

						<dt>&nbsp;/ 배우 :&nbsp;</dt>
						<dd class="on">


							<a href="/movies/persons/?pidx=11914">마크 해밀</a> ,&nbsp; <a
								href="/movies/persons/?pidx=115764">아담 드라이버</a> ,&nbsp; <a
								href="/movies/persons/?pidx=6368">캐리 피셔</a> ,&nbsp; <a
								href="/movies/persons/?pidx=116032">데이지 리들리</a> ,&nbsp; <a
								href="/movies/persons/?pidx=116031">존 보예가</a> ,&nbsp; <a
								href="/movies/persons/?pidx=106692">오스카 아이삭</a> ,&nbsp; <a
								href="/movies/persons/?pidx=116033">그웬돌린 크리스티</a>

						</dd>




						<dt>장르 :&nbsp;액션,&nbsp;SF,&nbsp;어드벤처,&nbsp;환타지</dt>
						<dd></dd>
						<dt>&nbsp;/ 기본 :&nbsp;</dt>
						<dd class="on">12세 이상,&nbsp;152분,&nbsp;미국</dd>
						<dt>개봉 :&nbsp;</dt>
						<dd class="on">2017.12.14</dd>




					</dl>
				</div>

				<span class="like">
					<button class="btn-like" value="79893">영화 찜하기</button> <a
					class="link-reservation"
					href="/ticket/?MOVIE_CD=20014990&MOVIE_CD_GROUP=20013560">예매</a>

				</span>
			</div>
		</div>
		<!-- .sect-base -->


		<div class="cols-content" id="menu">
			<div class="col-detail">
				<!-- 메뉴가 선택되면 a 에 title="선택" 이라고 넣는다 -->
				<!-- 리본메뉴 -->
				<ul class="tab-menu">
					<li class="grade">
						<form:form method="post" action="grade">
							<input type="hidden" name="movieNum" value="1">
							<input type="submit" value=" 평점 " class="goorade">
						</form:form> 
					</li>
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