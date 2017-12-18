<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="./css/movie_common.css"  type="text/css">

<style type="text/css">

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie Chart Page</title>

</head>

	 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
   
<body>



<div class="container">
		<div class="row">
		<br/>
		
		 <div id="header">
      <jsp:include page="MovieFinder.jsp" flush="false" />
   </div>

	<div class="wrap-movie-chart">
		<!-- Heading Map Multi 차트 조회 카테고리 -->
		<div class="tit-heading-wrap">
			<h3>무비차트</h3>

			<div class="submenu">
				<ul>
					<li class="on"><a href="#" title="선택">현재상영작</a></li>
					<li><a href="#">상영예정작</a></li>

				</ul>
			</div>
		</div>
		<!-- //Heading Map Multi -->


		<!-- Sorting 정렬 -->
		<div class="sect-sorting">
			<label for="order_type" class="hidden">정렬</label> <select
				id="order_type" name="order-type">
				<option title="현재 선택됨" selected value="1">예매율순</option>
				<option value="2">평점순</option>
				<option value="3">관람객순</option>
			</select>
			<button type="button" class="round gray">
				<span>GO</span>
			</button>
		</div>
		<!-- //Sorting -->

		<div class="sect-movie-chart">
			<h4 class="hidden">무비차트 - 예매율순</h4>
			<ol>

				<li>
					<!-- 영화1 -->
					<div class="box-image">
						<strong class="rank">No.1</strong> <a
							href="MovieDetail"> <span
							class="thumb-image"> <img
								src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80068/80068_185.jpg"
								alt="꾼 포스터" onerror="errorImage(this)" /> <span
								class="ico-grade grade-15">15세 이상</span>
						</span>

						</a> <span class="screentype"> </span>
					</div>


					<div class="box-contents">
						<a href="/movies/detail-view/?midx=80068"> <strong
							class="title">꾼</strong> <br />
						</a> <span class="txt-info"> <strong> 2017.11.22 <span>개봉</span>
								<br />

						</strong>
						</span> <span class="like">
							<button class="btn-like" value="80068">영화 찜하기</button> <br /><br /> <a class="link-reservation"
							href="/ticket/?MOVIE_CD=20014078&MOVIE_CD_GROUP=20014078">예매</a>
						</span>
					</div>
				</li>
				<!-- 영화1 끝 -->

				<li>
					<!-- 영화2 -->
					<div class="box-image">
						<strong class="rank">No.2</strong> <a
							href="MovieDetail"> <span
							class="thumb-image"> <img
								src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80290/80290_185.jpg"
								alt="오리엔트 특급 살인 포스터" onerror="errorImage(this)" /> <span
								class="ico-grade grade-12">12세 이상</span>
						</span>

						</a> <span class="screentype"> </span>
					</div>

					<div class="box-contents">
						<a href="MovieDetail"> <strong
							class="title">오리엔트 특급 살인</strong><br />
						</a> <span class="txt-info"> <strong> 2017.11.29 <span>개봉</span><br />

						</strong>
						</span> <span class="like">
							<button class="btn-like" value="80290">영화 찜하기</button><br /><br /><a class="link-reservation"
							href="/ticket/?MOVIE_CD=20014605&MOVIE_CD_GROUP=20014605">예매</a>
						</span>
					</div>
				</li>
				<!-- 영화2 끝 -->

				<li>
					<!-- 영화3 -->
					<div class="box-image">
						<strong class="rank">No.3</strong> <a
							href="/movies/detail-view/?midx=80088"> <span
							class="thumb-image"> <img
								src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80088/80088_185.jpg"
								alt="기억의 밤 포스터" onerror="errorImage(this)" /> <span
								class="ico-grade grade-15">15세 이상</span>
						</span>
						
						
						</a> <span class="screentype"> </span>
					</div>

					<div class="box-contents">
						<a href="/movies/detail-view/?midx=80088"> <strong
							class="title">기억의 밤</strong><br />
						</a> <span class="txt-info"> <strong> 2017.11.29 <span>개봉</span><br />

						</strong>
						</span> <span class="like">
							<button class="btn-like" value="80088">영화 찜하기</button><br /><br /><a class="link-reservation"
							href="/ticket/?MOVIE_CD=20014208&MOVIE_CD_GROUP=20014208">예매</a>
						</span>
					</div>
				</li>
				<!-- 영화3 끝 -->

			</ol>

			<ol>

				<li>
					<!-- 영화4 -->
					<div class="box-image">
						<strong class="rank">No.4</strong> <a
							href="/movies/detail-view/?midx=80005"> <span
							class="thumb-image"> <img
								src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80005/80005_185.jpg"
								alt="반드시 잡는다 포스터" onerror="errorImage(this)" /> <span
								class="ico-grade grade-15">15세 이상</span>
						</span>
						</a> <span class="screentype"> </span>
					</div>

					<div class="box-contents">
						<a href="/movies/detail-view/?midx=80005"> <strong
							class="title">반드시 잡는다</strong><br />
						</a> <span class="txt-info"> <strong> 2017.11.29 <span>개봉</span><br />

						</strong>
						</span> <span class="like">
							<button class="btn-like" value="80005">영화 찜하기</button><br /><br /><a class="link-reservation"
							href="/ticket/?MOVIE_CD=20013910&MOVIE_CD_GROUP=20013910">예매</a>


						</span>
					</div>
				</li>
				<!-- 영화4끝 -->

				<li>
					<!-- 영화5 -->
					<div class="box-image">
						<strong class="rank">No.5</strong> <a
							href="/movies/detail-view/?midx=80085"> <span
							class="thumb-image"> <img
								src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80085/80085_185.jpg"
								alt="저스티스 리그 포스터" onerror="errorImage(this)" /> <span
								class="ico-grade grade-12">12세 이상</span>
						</span>
						</a> <span class="screentype"> 

						</span>
					</div>

					<div class="box-contents">
						<a href="/movies/detail-view/?midx=80085"> <strong
							class="title">저스티스 리그</strong><br />
						</a> <span class="txt-info"> <strong> 2017.11.15 <span>개봉</span><br />

						</strong>
						</span> <span class="like">
							<button class="btn-like" value="80085">영화 찜하기</button><br /><br /><a class="link-reservation"
							href="/ticket/?MOVIE_CD=20014204&MOVIE_CD_GROUP=20014204">예매</a>

						</span>
					</div>
				</li>
				<!-- 영화5 끝 -->

				<li>
					<!-- 영화6 -->
					<div class="box-image">
						<strong class="rank">No.6</strong> <a
							href="/movies/detail-view/?midx=80117"> <span
							class="thumb-image"> <img
								src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80117/80117_185.jpg"
								alt="러빙 빈센트 포스터" onerror="errorImage(this)" /> <span
								class="ico-grade grade-15">15세 이상</span>
						</span>
						</a> <span class="screentype">

						</span>
					</div>

					<div class="box-contents">
						<a href="/movies/detail-view/?midx=80117"> <strong
							class="title">러빙 빈센트</strong><br />
						</a> <span class="txt-info"> <strong> 2017.11.09 <span>개봉</span><br />

						</strong>
						</span> <span class="like">
							<button class="btn-like" value="80117">영화 찜하기</button> <br /><br /><a class="link-reservation"
							href="/ticket/?MOVIE_CD=20014290&MOVIE_CD_GROUP=20014290">예매</a>

						</span>
					</div>
				</li>
				<!-- 영화6 끝 -->

				<li>
					<!-- 영화7 -->
					<div class="box-image">
						<strong class="rank">No.7</strong> <a
							href="/movies/detail-view/?midx=80106"> <span
							class="thumb-image"> <img
								src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000080/80106/80106_185.jpg"
								alt="해피 데스데이 포스터" onerror="errorImage(this)" /> <span
								class="ico-grade grade-15">15세 이상</span>
						</span>
						</a> <span class="screentype"> </span>
					</div>

					<div class="box-contents">
						<a href="/movies/detail-view/?midx=80106"> <strong
							class="title">해피 데스데이</strong><br />
						</a> <span class="txt-info"> <strong> 2017.11.08 <span>개봉</span><br />

						</strong>
						</span> <span class="like">
							<button class="btn-like" value="80106">영화 찜하기</button><br /><br /> <a class="link-reservation"
							href="/ticket/?MOVIE_CD=20014271&MOVIE_CD_GROUP=20014271">예매</a>

						</span>
					</div>
				</li>
				<!-- 영화7 끝 -->
				
			
			</ol>
			
			
			
			
			

			<button class="btn-more-fontbold">
				더보기 <i class="link-more">더보기</i>
			</button>


			<ol id="movie_more_container" style="display: none" class="list-more">
				<li></li>
			</ol>

			<!-- 무비차트 광고배너 -->
<!-- 						<div class="chart-ad">
				<div class="box-com">
					<iframe
						src='http://ad.cgv.co.kr/NetInsight/html/CGV/CGV_201401/sub@Movie_Chart'
						width='160' height='300' frameborder='0' scrolling='no'
						topmargin='0' leftmargin='0' marginwidth='0' marginheight='0'
						ID='Movie_Chart' NAME='Movie_Chart'></iframe>
				</div>
				<div class="chart_ad_desc">
					<dl>
						<dt>
							<img src="http://img.cgv.co.kr/R2014/images/ad/ico_ad1.png"
								alt="ad" /> <span id="ad_txt1"></span>
						</dt>
						<dd>
							<span id="ad_txt2"></span>
						</dd>
					</dl>
				</div>
			</div> -->
			<!-- //무비차트 광고배너 -->

		</div>
	</div>
	<!-- .sect-moviechart -->

</div>
</div>
 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>

</body>
</html>