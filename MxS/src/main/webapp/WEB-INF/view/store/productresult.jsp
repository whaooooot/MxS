<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta>
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>결제완료</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <link href="./css/payment.css" rel="stylesheet" type="text/css">
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
                <form class="form-horizontal" method="get" action="store">
             
                    
                     <!--CREDIT CART PAYMENT-->
                    <div class="panel panel-info">
                        <div class="panel-heading"><span></span> 결제 완료</div>
                        <div class="panel-body">
                            <div class="form-group">
                            <div class="col-md-12"><strong>상품사진:</strong>  
                          
                            <img id="img1" alt=""
					src="http://harangmall.kr/web/product/big/201608/333_shop1_652509.jpg" width="200px">
					<hr/></div>	
					
                            	<div class="col-md-12"><strong>상품번호:</strong>   	
                            	
                            	&nbsp;&nbsp;&nbsp; ex:1234-1234&nbsp;&nbsp;&nbsp;
                            	<hr/>
                            	
                            	</div>
                         
                            	<div class="col-md-12"><strong>상품이름:</strong>   	
                            	
                            	&nbsp;&nbsp;&nbsp; ex:아이언맨텀블러 &nbsp;&nbsp;&nbsp;
                            	<hr/>
                            	
                            	</div>
                            		<div class="col-md-12"><strong>상품금액:</strong>   	
                            	
                            	&nbsp;&nbsp;&nbsp; ex:<font color="red" size=2px>30000</font>  원 &nbsp;&nbsp;&nbsp;
                            	<hr/>
                            	
                            	</div>
                            	
                            	<div class="col-md-12"><strong>상품수량:</strong>   	
                            	
                            	&nbsp;&nbsp;&nbsp; ex:몇개~ &nbsp;&nbsp;&nbsp;
                            	<hr/>
                            	
                            	</div>
                            	
                            		<div class="col-md-12"><strong>할인금액:</strong>   	
                            	
                            	&nbsp;&nbsp;&nbsp; ex:<font color="red" size=2px>1000</font> 원 &nbsp;&nbsp;&nbsp;
                            	<hr/>
                            	
                            	</div>
                            	
                            	
                            		<div class="col-md-12"><strong>상품설명:</strong>   	
                            	
                            	&nbsp;&nbsp;&nbsp; ex:간단한설명~ &nbsp;&nbsp;&nbsp;
                            	<hr/>
                            	
                            	</div>
                            	
                                                     	
                                <div class="col-md-12"><strong>결제완료금액</strong></div>
                                
                                 <div class="col-md-12" align="right" ><strong ><font color="red" size=80px>29000</font> 원</strong><hr/></div>
                            	
                                 
                            </div>
                           
                            <div class="form-group">
                                <div class="col-md-6 col-sm-6 col-xs-12">
                                    <button type="submit" class="btn btn-error btn-submit-fix">쇼핑 계속하기</button>
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