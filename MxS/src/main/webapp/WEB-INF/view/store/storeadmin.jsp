<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>스토어관리자</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

<link href="./css/store.css?ver=1" rel="stylesheet" type="text/css">



</head>






<body>

	 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
   
	<div class="container">
		<div class="row">
			<h1>스토어관리자상단</h1>
		</div>
		<div class="row">
			<h2>인기상품</h2>




			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-expanded="false"> <span
						class="glyphicon glyphicon-shopping-cart"></span> 3 - Items<span
						class="caret"></span></a>
					<ul class="dropdown-menu dropdown-cart" role="menu">
						<li><span class="item"> <span class="item-left">
									<img src="http://lorempixel.com/50/50/" alt="" /> <span
									class="item-info"> <span>Item name</span> <span>23$</span>
								</span>
							</span> <span class="item-right">
									<button class="btn btn-xs btn-danger pull-right">x</button>
							</span>
						</span></li>
						<li><span class="item"> <span class="item-left">
									<img src="http://lorempixel.com/50/50/" alt="" /> <span
									class="item-info"> <span>Item name</span> <span>23$</span>
								</span>
							</span> <span class="item-right">
									<button class="btn btn-xs btn-danger pull-right">x</button>
							</span>
						</span></li>
						<li><span class="item"> <span class="item-left">
									<img src="http://lorempixel.com/50/50/" alt="" /> <span
									class="item-info"> <span>Item name</span> <span>23$</span>
								</span>
							</span> <span class="item-right">
									<button class="btn btn-xs btn-danger pull-right">x</button>
							</span>
						</span></li>
						<li><span class="item"> <span class="item-left">
									<img src="http://lorempixel.com/50/50/" alt="" /> <span
									class="item-info"> <span>Item name</span> <span>23$</span>
								</span>
							</span> <span class="item-right">
									<button class="btn btn-xs btn-danger pull-right">x</button>
							</span>
						</span></li>
						<li class="divider"></li>
						<li><a class="text-center" href="">View Cart</a></li>
					</ul></li>
			</ul>



		</div>

		<div class='row'>
			<div class='col-md-14'>
				<div class="carousel slide media-carousel" id="media">
					<div class="carousel-inner">
						<div class="item  active">
							<div class="row">
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
									<h3>어밴져스 텀블러</h3>
									<p>가격:30000원</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">Open</a>
									</p>
								</div>
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="http://harangmall.kr/web/product/big/201608/333_shop1_652509.jpg"></a>
									<h3>아이언맨 텀블러</h3>
									<p>가격:30000원</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">Open</a>
									</p>
								</div>
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="http://maniaczone.com/web/product/medium/201601/5780_shop1_772902.jpg"></a>
									<h3>배트맨 피규어</h3>
									<p>가격:30000원</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">Open</a>
									</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="http://placehold.it/150x150"></a>
									<h3>Header Name</h3>
									<p>Description</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">Open</a>
									</p>
								</div>
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="http://placehold.it/150x150"></a>
									<h3>Header Name</h3>
									<p>Description</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">Open</a>
									</p>
								</div>
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="http://placehold.it/150x150"></a>
									<h3>Header Name</h3>
									<p>Description</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">Open</a>
									</p>
								</div>
							</div>
						</div>
					</div>
					<a data-slide="prev" href="#media" class="left carousel-control">
						< </a> <a data-slide="next" href="#media"
						class="right carousel-control"> > </a>
				</div>
			</div>
		</div>

		<div class="row">
			<h2>스토어관리자하단</h2>
		</div>

		<div class="row">
			<div class="col-md-4">
				<h2>굿즈목록</h2>
			</div>

			<div class="col-md-4">&nbsp;</div>


			<div class="col-md-4">
				<h3>상세검색</h3>
				<div class="input-group stylish-input-group input-append">
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-addon">
						<button type="submit">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</div>


		<div class="row">
			<h3>전체카테고리</h3>
		</div>

		<div class="row">
			<a class="category" href="#">한국영화 &nbsp;&nbsp;</a> <a
				class="category" href="#">외국영화&nbsp;&nbsp;</a> <a class="category"
				href="#">마블&nbsp;&nbsp;</a> <a class="category" href="#">애니메이션&nbsp;&nbsp;</a>
			<a class="category" href="#">피규어&nbsp;&nbsp;</a> <a class="category"
				href="#">등...&nbsp;&nbsp;</a>
		</div>

		<div class="row">
			<div class="col-md-4">
				<h5>전체 1212 개</h5>
			</div>
		</div>


		<div class="row">
			<div class="col-md-3">
				<!-- check -->
				<div class="squaredChk">
					<input type="checkbox" value="0" id="squaredChk"
						name="DonationNumber" /> <label for="squaredChk"></label>
				</div>
				<!-- check -->
				<a class="thumbnail" href="#"><img alt=""
					src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
				<h3>어밴져스 텀블러</h3>
				<p>가격:30000원</p>
				<p align="center">
					<a href="#" class="btn btn-primary btn-block">Open</a>
				</p>
			</div>
			<div class="col-md-3">
				<!-- check -->
				<div class="squaredChk">
					<input type="checkbox" value="1" id="squaredChk"
						name="DonationNumber" /> <label for="squaredChk"></label>
				</div>
				<!-- check -->
				<a class="thumbnail" href="#"><img alt=""
					src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
				<h3>어밴져스 텀블러</h3>
				<p>가격:30000원</p>
				<p align="center">
					<a href="#" class="btn btn-primary btn-block">Open</a>
				</p>
			</div>
			<div class="col-md-3">
				<!-- check -->
				<div class="squaredChk">
					<input type="checkbox" value="2" id="squaredChk"
						name="DonationNumber" /> <label for="squaredChk"></label>
				</div>
				<!-- check -->
				<a class="thumbnail" href="#"><img alt=""
					src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
				<h3>어밴져스 텀블러</h3>
				<p>가격:30000원</p>
				<p align="center">
					<a href="#" class="btn btn-primary btn-block">Open</a>
				</p>
			</div>
			<div class="col-md-3">
				<!-- check -->
				<div class="squaredChk">
					<input type="checkbox" value="2" id="squaredChk"
						name="DonationNumber" /> <label for="squaredChk"></label>
				</div>
				<!-- check -->
				<a class="thumbnail" href="#"><img alt=""
					src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
				<h3>어밴져스 텀블러2</h3>
				<p>가격:30000원</p>
				<p align="center">
					<a href="#" class="btn btn-primary btn-block">Open</a>
				</p>
			</div>
			
		</div>
	<br/>
		<hr/>
<div class="bright">
	<div class="row">
		<div class="col-md-4">
			
		</div>
		<div class="col-md-4">
	
		</div>
		<div class="col-md-4">		
			<a href="storeupload" ><input type="button" class="btn btn-warning" value="등록" /></a>
					<input type="button" class="btn btn-warning" value="수정" />
			<input type="button" class="btn btn-warning" value="삭제" />
		</div>
</div>
</div>


 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>






	</div>

	<script type="text/javascript">
		
	</script>
</body>
</html>








