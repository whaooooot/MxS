<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%
	request.setCharacterEncoding("utf-8");
	String goodsPic = request.getParameter("goodsPic");
	String goodsName = request.getParameter("goodsName");
	String goodsCon = request.getParameter("goodsCon");
	String goodsNum = request.getParameter("goodsNum");
	String goodsAmount = request.getParameter("goodsAmount");
	String goodsPri = request.getParameter("goodsPri");
	String goodsOpt= request.getParameter("goodsOpt");
		
	int sum= Integer.parseInt(goodsAmount)*Integer.parseInt(goodsPri);%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>보안 결제페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link href="./css/payment.css?ver=2" rel="stylesheet" type="text/css">
<script language="javascript">

function check_input(){ 
	   var form = document.pay; 
	   var inputs = { 	      
	      'payType' : '카드종류를 선택해주세요.', 
	      'payCard' : '카드번호를 입력해주세요.', 
	      'payCardcvc' : '카드cvc를 입력해주세요.',
	      'payCarddate' : '카드유효기간 월을 입력해주세요.',
	      'payCarddate2' : '카드유효기간 년을 입력해주세요.',	      
	   }; 
	   var input; 
	   for(name in inputs){ 
	      input = form[name]; 
	      if(!input.value.replace(/^\s+/, '').replace(/\s+$/, '')){ 
	         alert(inputs[name]); 
	         input.focus(); 
	         return; 
	      } 
	   } 
	   form.submit(); 
	} 
		
	
function getSelectValue(frm)
{
 frm.payType.value = frm.selectBox.options[frm.selectBox.selectedIndex].text;
 frm.optionValue.value = frm.selectBox.options[frm.selectBox.selectedIndex].value;
}

function getSelectValue1(frm)
{
 frm.payCarddate.value = frm.selectBox1.options[frm.selectBox1.selectedIndex].text;
 frm.optionValue1.value = frm.selectBox1.options[frm.selectBox1.selectedIndex].value;
}

function getSelectValue2(frm)
{
 frm.payCarddate2.value = frm.selectBox2.options[frm.selectBox2.selectedIndex].text;
 frm.optionValue2.value = frm.selectBox2.options[frm.selectBox2.selectedIndex].value;
}




</script>



</head>

<body>
	<div id="header">
		<jsp:include page="../header.jsp" flush="false" />
	</div>


	<div class="container wrapper">
		<div class="row cart-head">
			<div class="container">
				<div class="row">
					<p></p>
				</div>

				<div class="row"></div>
			</div>
		</div>

		<div class="row cart-body">
				<form:form action="productresult" name="pay" method="post" accept-charset="utf-8" modelAttribute="paydto">			

				<input type="hidden" name="goodsPic" value="<%=goodsPic%>">
				<input type="hidden" name="goodsName" value="<%=goodsName%>">
				<input type="hidden" name="goodsCon" value="<%=goodsCon%>">
				<input type="hidden" name="goodsNum" value="<%=goodsNum%>">
				<input type="hidden" name="goodsAmount" value="<%=goodsAmount%>">
				<input type="hidden" name="goodsPri" value="<%=goodsPri%>">
				<input type="hidden" name="goodsOpt" value="<%=goodsOpt%>">


				<!--CREDIT CART PAYMENT-->
				<div class="panel panel-info">
					<div class="panel-heading">
						<span><i class="glyphicon glyphicon-lock"></i></span>보안 결제
					</div>
					<div class="panel-body">
						<div class="form-group">
							<div class="col-md-12">
								<strong>사용할 포인트 선택</strong>
								<hr />
							</div>

							<div class="col-md-12">
								&nbsp;&nbsp;&nbsp;포인트 &nbsp;&nbsp;&nbsp; <input type="button"
									class="btn-default" value="조회하기" />
								<hr />
							</div>

							&nbsp;&nbsp;&nbsp; 보유 포인트 &nbsp;&nbsp;&nbsp; <input type="text" readonly>
							&nbsp;&nbsp;&nbsp; 사용할 포인트 &nbsp;&nbsp;&nbsp; <input type="text" name="payDcpoint" value="1000">
							<div class="col-md-12">
								<small>사용 할 포인트를 입력하세요.</small>
								<hr />
							</div>

							<div class="col-md-12">
								<strong>결제 정보 입력</strong>
								<hr />
							</div>

							<div class="col-md-12">
								<strong>신용 카드:</strong>
							</div>
							<div class="col-md-12">
								<select  id="CreditCardType" name="selectBox" class="form-control" onChange="getSelectValue(this.form);">
									<option value="카드선택">카드선택</option>
									<option value="Visa">Visa</option>
									<option value="MasterCard">MasterCard</option>
									<option value="신한">신한</option>
									<option value="우리">우리</option>
									<option value="삼성">삼성</option>
									<option value="하나">하나</option>
									<option value="현대">현대</option>
									<option value="롯데">롯데</option>
								</select>
							</div>
							
							 <input type="hidden" name="payType" readonly>
 							 	
							
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<strong>카드 번호(-없이 16자리):</strong>
							</div>
							<div class="col-md-12">
								<input type="text" class="form-control" name="payCard"/>
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<strong>카드 CVC(3자리):</strong>
							</div>
							<div class="col-md-12">
								<input type="text" class="form-control" name="payCardcvc" value="" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<strong>유효 기간</strong>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">								
								<select  id="CreditCardType1" name="selectBox1" class="form-control" onChange="getSelectValue1(this.form);">
									<option value="">월</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</div>
							
							 <input type="hidden" name="payCarddate"  readonly>
 							 	 <input type="hidden" name="optionValue1"  readonly>
 							 	 
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<select  id="CreditCardType1" name="selectBox2" class="form-control" onChange="getSelectValue2(this.form);">
									<option value="">년</option>							
									<option value="2017">2017</option>
									<option value="2018">2018</option>
									<option value="2019">2019</option>
									<option value="2020">2020</option>
									<option value="2021">2021</option>
									<option value="2022">2022</option>
									<option value="2023">2023</option>
									<option value="2024">2024</option>
									<option value="2025">2025</option>
									<option value="2026">2026</option>
									<option value="2027">2027</option>
								</select>
							</div>
							
								 <input type="hidden" name="payCarddate2"  readonly>
 							 	 <input type="hidden" name="optionValue2"  readonly>
						</div>
						<div class="form-group">
							<div class="col-md-12">
								<span>신용 카드를 사용하여 지불하여 주십시오.</span>
							</div>
							<div class="col-md-12">
								<ul class="cards">
									<li class="visa hand">Visa</li>
									<li class="mastercard hand">MasterCard</li>
								</ul>

								<div class="clearfix"></div>

								<hr />
							</div>

							<div class="col-md-12">
								<strong>결제 금액</strong>
							</div>

							<div class="col-md-12" align="right">
								<strong><font color="red" size=80px><%=sum %></font> 원</strong>
								<hr />
							</div>
						</div>						
														
									<input type="hidden" name="payDccoupon" value="1">																		
									<input type="hidden" name="payPrice" value="<%=sum%>">									
								<!-- <input type="hidden" name="gpayNum" > -->	
									<input type="hidden" name="memberNum" value="<%=session.getAttribute("idnum") %>">
									<input type="hidden" name="bookNum" value="1">

						<div class="form-group">
							<div class="col-md-6 col-sm-6 col-xs-12">								
									<div class="section" style="padding-bottom: 15px;">
							<input class="btn btn-primary btn-submit-fix" onclick="check_input()" value="결제하기"/>	
								</div>	
							
							</div>
						</div>
					</div>
				</div>
				<!--CREDIT CART PAYMENT END-->	</form:form>	
			
		</div>
	</div>


	<div id="footer">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>



	<script type="text/javascript">
		
	</script>
</body>
</html>