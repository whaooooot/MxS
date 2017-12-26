<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="./css/movie_common.css" type="text/css">

<style type="text/css">
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Movie Chart Page</title>
<%@ include file="../include/header.jsp"%>

<script type="text/javascript">

/* function checkboxArr(){
	var checkArr=[];
	$("input[name='chk1']:checked").each(function(i)){
		
		checkArr.push($(this).val());
		
	}
	
	$.ajax({
		url:'MovieChartPage1',
		type:'post',
		dataType:'text',
		data:{
			"valueArrTest" :checkArr
			}
	});
	});
} */


</script>


</head>

<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>

<body>



	<div class="container">
		<div class="row">
			<br />

			<div id="header">
			<%-- 	<jsp:include page="MovieFinder.jsp" flush="false" /> </div>--%>
			

	<form name="form1" method="post" action="${path}/MovieChartPage">
		<select name="searchOption">
			<!-- 검색조건을 검색처리후 결과화면에 보여주기위해  c:out 출력태그 사용, 삼항연산자 -->
			<option value="all"
				<c:out value="${map.searchOption == 'all'?'selected':''}"/>>영화제목+줄거리</option>
			<option value="movie_title"
				<c:out value="${map.searchOption == 'movie_title'?'selected':''}"/>>영화제목</option>
			<option value="movie_con"
				<c:out value="${map.searchOption == 'movie_con'?'selected':''}"/>>영화줄거리</option>

		
		</select> 
		<div>
		
			<input type="checkbox" id="chk" name="chk1" value="1"/>1<br />
			<input type="checkbox" id="chk" name="chk1" value="2"/>2<br />
			
		</div>
		
		<input name="keyword" value="${map.keyword}"> <input
			type="submit" value="조회">
		<button type="button" id="btnWrite">영화새로등록</button>
	</form>
		
	</div>	
		
		

			<div class="wrap-movie-chart">
				<!-- Heading Map Multi 차트 조회 카테고리 -->
				<div class="tit-heading-wrap">
					<h3>무비차트</h3>

					<div class="submenu">
						<ul>
							<li class="on"><a href="#" title="선택">현재상영작</a></li>
						

						</ul>
					</div>
				</div>
				<!-- //Heading Map Multi -->



				<div class="sect-movie-chart">
					<h4 class="hidden">무비차트 </h4>
					<ol>
					<c:forEach var="movie" items="${map.list}">
						<li>
							<!-- 영화1 -->
							<div class="box-image">
								<a href="${path}/movieDetail?movieNum=${movie.movieNum}"> <span class="thumb-image"> <img
										src="/MxS/img/upload/mxs/movie/upload/s_${movie.moviePoster}"
										alt="${movie.movieTitle} 포스터"/> <span
										class="ico-grade grade-15">${movie.movieGrade}</span>
								</span>
								</a>
							</div>


							<div class="box-contents">
								<a href="${path}/movieDetail?movieNum=${movie.movieNum}"> <strong
									class="title">${movie.movieTitle}</strong> <br />
								</a> <span class="txt-info"> <strong> <fmt:formatDate value="${movie.movieDate}"
                           pattern="yyyy년MM월dd일" /> <span>개봉</span>
										<br />

								</strong>
								</span> <span class="like">
									<button class="btn-like" value="80068">영화 찜하기</button> <br />
								<br /> <a class="link-reservation" href="#">예매</a>
								</span>
							</div>
						</li>
						<!-- 영화1 끝 -->
					</c:forEach>

					</ol>






					<button class="btn-more-fontbold">
						더보기 <i class="link-more">더보기</i>
					</button>


					<ol id="movie_more_container" style="display: none"
						class="list-more">
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