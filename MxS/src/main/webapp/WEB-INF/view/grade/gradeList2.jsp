<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내가 쓴 평점</title>
<link href="../css/gradeList.css" rel="stylesheet">
</head>
<body>
<div class="container">
	<div class="cols-content">
		<div class="col-detail">
			<!-- list box 리스트 박스 -->
			<div class="warp-my-reviewlist">
				<ul class="point_col1">
					<li>
						<div class="sect-viw-rated">
							<!-- 포스터 관람 등급 -->
							<div class="box-image">
								<a title="영화 상세 이동" href="#">
									<span class="thumb-image">
										<img alt="(아이 앰 히스 레저) 포스터" src="http://img.cgv.co.kr/Movie/Thumbnail/Poster/000079/79793/79793_185.jpg">
										<!-- <span class="ico-grade grade-12">12세 이상</span> -->
									</span> 
								</a>
							</div><!-- //포스터 관람 등급 -->
							<!-- content 내용 -->
							<div class="box-contents">
								<div class="title"> 
									<strong>아이 앰 히스 레저</strong>
								</div>
								<ul class="writerinfo">
									<!-- 실관람객 마크 dev_css82
										<li class="see_list" style=display: id="lisee_list79793"><span class="round red on"><span class="position"><em class="see">실관람객</em></span></span></li>
									-->
									<li class="mylist_user_id" id="eggArea_79793"><!-- <span class='egg-icon good'></span> -->
										<span id="eggSpan_79793" class="egg-icon good"></span>회원 닉네임</li>                                    
									<li id="liRegistDate79793">2017.09.26 (영화 관람일)</li>
									<li><button type="button" class="btn-delete btn-del" data="19284950" midx="79793">삭제</button></li>
								</ul>
								<!-- dv_css82
									<div class="point" id="divPoint79793">
										<span class="point-off"><span id="spanPoint79793" style="width: 99%" class="point-on"></span></span><em id="emPointValue79793">0<span>9.9점/10점 만점</span></em>
									</div>
  								-->
								<p id="pCommentText79793">한 줄 관람평</p> 
								<!-- 수정 및 좋아요 -->    
								<div class="edit_wrap">
									<ul>
										<li class="btn_edit"><a href="javascript:void(0);" class="write_point" title="수정하기" data-commentidx="19284950" data-movieidx="79793" data-movietitle="아이 앰 히스 레저">수정하기</a></li>
										<li class="point_like" data-ismygood="False" data-commentidx="19284950" data-movieidx="79793">
											<a class="btn_point_like"><span><img src="http://img.cgv.co.kr/R2014/images/point/ico_point_default.png" alt="like" class="like_red"></span>
											<span id="idLikeValue">0</span></a>
											<!-- 좋아요 누르면 빨간색 이미지로 변경되도록 해주세요
												<img src="http://img.cgv.co.kr/R2014/images/point/ico_point_like.png" alt="like" class="like_red" />
											-->
										</li>
									</ul>
								</div><!-- //수정 및 좋아요 -->                           
							</div><!-- //content 내용 -->
						</div>
					</li>      
				</ul>
			</div><!-- //list box 리스트 박스 -->
			<!--?xml version="1.0" encoding="utf-8"?-->
        </div>
    </div>
</div>
</body>
</html>