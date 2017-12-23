<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<%@ page import = "java.util.*" %>	
<%@ page import = "model.*" %>	
<% 
request.setCharacterEncoding("utf-8");
List<StoreoptDTO> listopt = (List<StoreoptDTO>)request.getAttribute("detailopt");


%>
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
						src="${detail.goodsPic}" /></td>
					<td style="width:40%;">
						
							<!-- Datos del vendedor y titulo del producto -->
							<h2>${detail.goodsName}</h2>
							<h5 style="color: #337ab7">
								<a href="#">${detail.goodsCon}</a> <small style="color: #337ab7">
								
								(	<%
									for (int i = 0; i < listopt.size(); i++) {
										StoreoptDTO goodsopt = (StoreoptDTO) listopt.get(i);
								%>
								
									<%=goodsopt.getGoodsOpt() %> -
									
								<%
								} %>	
								
								)</small>
							</h5>

							<!-- Precios -->
							<h6 class="title-price">
								<small>가격</small>
							</h6>
							<h3 style="margin-top: 0px;">${detail.goodsPri} 원</h3>

							<!-- Detalles especificos del producto -->
							
							
								
							<div class="section" style="padding-bottom: 5px;">
								<h6 class="title-attr">
								<small>재고수</small>
							</h6>
							<h5>${detail.goodsQuan} 개</h5>
							</div>
							
<script language="javascript">

function getSelectValue(frm)
{
 frm.goodsOpt.value = frm.selectBox.options[frm.selectBox.selectedIndex].text;
 frm.goodsOpt1.value = frm.selectBox.options[frm.selectBox.selectedIndex].value;
}

</script>

					<form method="post" action="cart">
					
					<div class="section" style="padding-bottom: 5px;">
								<h6 class="title-attr">
									<small>옵션</small>
								</h6>
								
								<div>
								<select name="selectBox" onChange="getSelectValue(this.form);">
								<%
									for (int i = 0; i < listopt.size(); i++) {
										StoreoptDTO goodsopt = (StoreoptDTO) listopt.get(i);
								%>
								
								
									<option value="<%=goodsopt.getGoodsOpt()%>"> <%=goodsopt.getGoodsOpt()%></option>									 
																	
									<%} %>			
									
									</select>													
								</div>
 							선택한 옵션: <input type="text" name="goodsOpt" readonly>
							</div>
							
									
					
							<div class="section" style="padding-bottom: 20px;">
								<h6 class="title-attr">
									<small>수량</small>
								</h6>
								<div>
									<div class="btn-minus">
										<span class="glyphicon glyphicon-minus"></span>
									</div>
									<input name="goodsAmount" value="1" />
									<div class="btn-plus">
										<span class="glyphicon glyphicon-plus"></span>
									</div>
								</div>
							</div>
										<input type="hidden" name="goodsPic" value="${detail.goodsPic}">										
										 <input type="hidden" name="goodsName" value="${detail.goodsName}">
										 <input type="hidden" name="goodsPri" value="${detail.goodsPri}">
										 <input type="hidden" name="goodsQuan" value="${detail.goodsQuan}">	
										 <input type="hidden" name="goodsOpt">	 										 		
										<button class="glyphicon glyphicon-heart-empty"> 장바구니담기</button></span> 
					</form>
<br/>
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
	
								
	<br/>
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
         </ul>
         <div class="tab-content">
            <div class="tab-pane active" id="tab1">
            <div style="width: 100%; border-top: 1px solid silver">
					<p style="padding: 15px;">
						<small> ${detail.goodsCon}  </small>
					</p>					
				</div>
               
               
            </div>
            <div class="tab-pane" id="tab2">
            <div class="tab-pane active" id="tab1">
            <div style="width: 100%; border-top: 1px solid silver">
					<p style="padding: 15px;">
						<small>   ${detail.goodsNote}  </small>
					</p>
					
					<small>
						<ul>
							<li>90일 이내에 교환하세요.</li>
							<li>90일 이전에 연장할 수 있습니다. </li>
							<li>실재고와 차이가 있어 품절일 수 있습니다.</li>
						</ul>
					</small>					
				</div>
               
               
            </div>
            
          </div>
            <div class="tab-pane" id="tab3"><div class="tab-pane" id="tab2">
            <div class="tab-pane active" id="tab1">
            <div style="width: 100%; border-top: 1px solid silver">
					<p style="padding: 15px;">
						<small>   이용방법  </small>
					</p>
					<small>
						<ul>
							<li>바코드를 들고 가까운 극장에 방문 하세요.</li>
							<li>극장 카운터에 직원에게 문의하세요. </li>
						</ul>
					</small>
				</div>
               
               
            </div>
            
          </div>
          </div>

         </div>
      </div>

	
	</div><!-- container end -->
	
	 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
	
	
</body>


</html>

