<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import = "java.util.*" %>	
<%@ page import = "model.*" %>	
<% 
request.setCharacterEncoding("utf-8");
List<StoreDTO> listgoods = (List<StoreDTO>)request.getAttribute("result");


%>


	<%									
									
									
									/*for(StoreDTO d : listgoods){
									out.print(d.getGoodsName());
									}
									
									
									//for(int i =0; i < listgoods.size(); i++)
										*/
		 							%>
		 							<br/>
		 							<%	
		 							/*out.print(list.get(1));
		 							out.print("aa");
		 							out.print(list.get(3).getGoodsName());
		 							*/
		 							%>	 



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>	
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>MxS스토어</title>
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

 <input type="hidden" name="idx" value="${row.idx}">
	
	 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
	

	

	<div class="container">
		<div class="row">
			<h1>스토어상단</h1>
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
						<li><a class="text-center" href="cart">View Cart</a></li>
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
									
									<a class="thumbnail" href="productdetail?num=1"><img alt=""
										src="<%=listgoods.get(3).getGoodsPic()%>"></a>
									<h3>
									<%=listgoods.get(3).getGoodsName() %>		 								
									</h3> 									
									<p>가격:<%=listgoods.get(3).getGoodsPri()%>원</p>
									<p align="center">
										<a href="productdetail?num=1" class="btn btn-primary btn-block">상세보기</a>
									</p>
								</div>
								<div class="col-md-4">
									<a class="thumbnail" href="productdetail?num=2"><img alt=""
										src="<%=listgoods.get(3).getGoodsPic() %>"></a>
									<h3><%=listgoods.get(3).getGoodsName() %>	</h3>
									<p>가격:<%=listgoods.get(3).getGoodsPri()%>원</p>
									<p align="center">
										<a href="productdetail?num=2" class="btn btn-primary btn-block">상세보기</a>
									</p>
								</div>
								<div class="col-md-4">
									<a class="thumbnail" href="productdetail?num=3"><img alt=""
										src="<%=listgoods.get(3).getGoodsPic() %>"></a>
									<h3><%=listgoods.get(3).getGoodsName() %></h3>
									<p>가격:<%=listgoods.get(3).getGoodsPri()%>원</p>
									<p align="center">
										<a href="productdetail?num=3" class="btn btn-primary btn-block">상세보기</a>
									</p>
								</div>
							</div>
						</div>
						<div class="item">
							<div class="row">
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="<%=listgoods.get(3).getGoodsPic() %>"></a>
									<h3><%=listgoods.get(3).getGoodsName() %></h3>
									<p>가격:<%=listgoods.get(3).getGoodsPri()%>원</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">상세보기</a>
									</p>
								</div>
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="<%=listgoods.get(3).getGoodsPic() %>"></a>
									<h3><%=listgoods.get(3).getGoodsName() %></h3>
									<p>가격:<%=listgoods.get(3).getGoodsPri()%>원</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">상세보기</a>
									</p>
								</div>
								<div class="col-md-4">
									<a class="thumbnail" href="#"><img alt=""
										src="<%=listgoods.get(3).getGoodsPic() %>"></a>
									<h3><%=listgoods.get(3).getGoodsName() %></h3>
									<p>가격:<%=listgoods.get(3).getGoodsPri()%>원</p>
									<p align="center">
										<a href="#" class="btn btn-primary btn-block">상세보기</a>
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
			<h2>스토어하단</h2>
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
				<h5>전체  ${count} 개</h5>
			</div>
		</div>


		<div class="row">
		<%
									for (int i = 0; i < listgoods.size(); i++) {
										StoreDTO goods = (StoreDTO) listgoods.get(i);
								%>

							
			<div class="col-md-3">
				<a class="thumbnail" href="#"><img alt=""
					src="<%=goods.getGoodsPic() %>"></a>
				<h3><%=goods.getGoodsName()  %></h3>
				<p>가격:<%=goods.getGoodsPri()  %>원</p>
				<p align="center">
					<a href="#" class="btn btn-primary btn-block">상세보기</a>
				</p>
			</div>
			
				<%
									}
								%>
			
			
		</div>








	</div>
	<script type="text/javascript">
		
	</script>

	<div id="footer">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>



</body>
</html>



