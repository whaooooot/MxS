<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>보안 결제페이지</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="./css/payment.css?ver=2" rel="stylesheet" type="text/css">
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
    
                <div class="row">
           
                </div>
                </div>
            </div>     
            
            <div class="row cart-body">
                <form class="form-horizontal" method="post" action="productresult">
             
                    
                     <!--CREDIT CART PAYMENT-->
                    <div class="panel panel-info">
                        <div class="panel-heading"><span><i class="glyphicon glyphicon-lock"></i></span>보안 결제</div>
                        <div class="panel-body">
                            <div class="form-group">
                            	<div class="col-md-12"><strong>사용할 포인트 선택</strong>   	<hr/></div>
                         
                            	<div class="col-md-12"> &nbsp;&nbsp;&nbsp;포인트 &nbsp;&nbsp;&nbsp;
                            	<input type="button" class="btn-default" value="조회하기"/>
                            		<hr/>
                            	</div>
                             
                            	&nbsp;&nbsp;&nbsp; 보유 포인트 &nbsp;&nbsp;&nbsp; <input type="text">
                            	&nbsp;&nbsp;&nbsp; 사용할 포인트 &nbsp;&nbsp;&nbsp; <input type="text">
                            	<div class="col-md-12"><small>사용 할 포인트를 입력하세요.</small> 	<hr/> </div>
                            
                            	<div class="col-md-12"><strong>결제 정보 입력</strong> 	<hr/> </div>
                            
                                <div class="col-md-12"><strong>신용 카드:</strong></div>
                                <div class="col-md-12">
                                    <select id="CreditCardType" name="CreditCardType" class="form-control">
                                        <option value="5">Visa</option>
                                        <option value="6">MasterCard</option>
                                        <option value="7">신한</option>
                                        <option value="8">우리</option>
                                        <option value="9">삼성</option>
                                        <option value="10">하나</option>
                                        <option value="11">현대</option>
                                        <option value="12">롯데</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>카드 번호(-없이 16자리):</strong></div>
                                <div class="col-md-12"><input type="text" class="form-control" name="car_number" value="" /></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12"><strong>카드 CVC(3자리):</strong></div>
                                <div class="col-md-12"><input type="text" class="form-control" name="car_code" value="" /></div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-12">
                                    <strong>유효 기간</strong>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <select class="form-control" name="">
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
                                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                    <select class="form-control" name="">
                                        <option value="">년</option>
                                        <option value="2015">2015</option>
                                        <option value="2016">2016</option>
                                        <option value="2017">2017</option>
                                        <option value="2018">2018</option>
                                        <option value="2019">2019</option>
                                        <option value="2020">2020</option>
                                        <option value="2021">2021</option>
                                        <option value="2022">2022</option>
                                        <option value="2023">2023</option>
                                        <option value="2024">2024</option>
                                        <option value="2025">2025</option>
                                </select>
                                </div>
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
                                    
                                    <hr/>
                                </div>
                                	
                                <div class="col-md-12"><strong>결제 금액</strong></div>
                                
                                 <div class="col-md-12" align="right" ><strong ><font color="red" size=80px>30000</font> 원</strong><hr/></div>
                            	
                                 
                            </div>
                           
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <button type="submit" class="btn btn-primary btn-submit-fix">결제하기</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--CREDIT CART PAYMENT END-->
                         </form>
            </div>      
                </div>
                
        
         <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
	      
           
  
<script type="text/javascript">

</script>
</body>
</html>