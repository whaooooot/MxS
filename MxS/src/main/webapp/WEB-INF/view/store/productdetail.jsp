<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	    <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta>
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>상품 상세정보</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" type="text/css">

<link href="./css/productdetail.css?ver=1" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/productdetail.js"></script>
</head>
<body>

 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
	

	<div class="container">
		<div class="row">
			<table style="width:80%;">
				<tr>
					<td style="width:40%;"><img class="imgsize"
						src="http://harangmall.kr/web/product/big/201608/333_shop1_652509.jpg" /></td>
					<td style="width:40%;">
						
							<!-- Datos del vendedor y titulo del producto -->
							<h2>아이언맨 텀블러</h2>
							<h5 style="color: #337ab7">
								<a href="#">아이언맨시리즈~</a> <small style="color: #337ab7">(빨강,금)</small>
							</h5>

							<!-- Precios -->
							<h6 class="title-price">
								<small>가격</small>
							</h6>
							<h3 style="margin-top: 0px;">30000 원</h3>

							<!-- Detalles especificos del producto -->
							<div class="section">
								<h6 class="title-attr" style="margin-top: 15px;">
									<small>색상</small>
								</h6>
								<div>
									<div class="attr" style="width: 25px; background: red;"></div>
									<div class="attr" style="width: 25px; background: white;"></div>
								</div>
							</div>
							<div class="section" style="padding-bottom: 5px;">
								<h6 class="title-attr">
									<small>크기</small>
								</h6>
								<div>
									<div class="attr2">Tall</div>
									<div class="attr2">Venti</div>
								</div>
							</div>
							<div class="section" style="padding-bottom: 20px;">
								<h6 class="title-attr">
									<small>수량</small>
								</h6>
								<div>
									<div class="btn-minus">
										<span class="glyphicon glyphicon-minus"></span>
									</div>
									<input value="1" />
									<div class="btn-plus">
										<span class="glyphicon glyphicon-plus"></span>
									</div>
								</div>
							</div>

							<!-- Botones de compra -->
							<div class="section" style="padding-bottom: 20px;">
								<form action="payment" method="post">
								<button class="btn btn-success">
									<span style="margin-right: 20px"
										class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>
									구매하기
								</button>
							</form>


								<h6>
									<a href="cart"><span class="glyphicon glyphicon-heart-empty"
										style="cursor: pointer;"></span> 장바구니담기</a>
								</h6>
								<a href="javascript:history.back();"><button class="btn btn-default">목록으로</button></a>
							</div>
			

					</td>
				</tr>


			</table>


	
	<div class="tabbable">
         <ul class="nav nav-tabs">
            <li class="active"><a href="#tab1" data-toggle="tab" title="선택된 탭메뉴">상세설명</a></li>
            <li class=""><a href="#tab2" data-toggle="tab">주의사항</a></li>
            <li class=""><a href="#tab3" data-toggle="tab">이용방법</a></li>
            <li class=""><a href="#tab4" data-toggle="tab">상품후기</a></li>
         </ul>
         <div class="tab-content">
            <div class="tab-pane active" id="tab1">
            <div style="width: 100%; border-top: 1px solid silver">
					<p style="padding: 15px;">
						<small> 상세설명들~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
							ㄴ어랴ㅐㅁ너ㅑㅐ러ㅐㅑㄷ저랴ㅐㅓ날니ㅏ러너리ㅏ너라ㅣ닝러ㅣ넝ㄹ 냐ㅐㄹㄷㅈ머ㅐㅑ러ㅑ너랴ㅓ내ㅑ러ㅐㅑ너야러ㅏㅣ너ㅣ라ㅓ나라너란멀
							내ㅑ러ㅐㅑ너랴ㅐㅓㄴ먀ㅓ랴어냐러ㅐ냐머래ㅑㅇ너래ㅑㅓㄴ매ㅑ러나ㅣ러누 </small>
					</p>
					<small>
						<ul>
							<li>주의사항1</li>
							<li>주의사항2</li>
							<li>주의사항3</li>
						</ul>
					</small>
				</div>
               
               
            </div>
            <div class="tab-pane" id="tab2">주의사항</div>
            <div class="tab-pane" id="tab3">이용방법</div>
            <div class="tab-pane" id="tab4">상품후기</div>

         </div>
      </div>

	
	</div><!-- container end -->
	
	 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
	
	
</body>


</html>

