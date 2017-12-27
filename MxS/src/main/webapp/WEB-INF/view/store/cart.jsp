<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
    <% request.setCharacterEncoding("utf-8"); %>
    
    	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>장바구니</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        
    </style>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
</head>
<body>


 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<div class="container">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
        <h2>장바구니</h2>
            <table class="table table-hover">
                <thead>
                    <tr>
                    	<th></th>
                        <th>상품</th>
                        <th>수량</th>
                        <th class="text-center">가격</th>
                        <th class="text-center">합계가격</th>
                        <th> </th>
                    </tr>
                </thead>
                
                
                
                
                <tbody> 
                
                <c:forEach items="${cart}" var="goods">    
           
                    <tr>
                    	<td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="checkbox" class="form-control" value="true">
                        </td>                    
                    
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${goods.goodsPic}" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${goods.goodsName}</a></h4>  
                                <h5 class="media-heading"><a href="#"> ${goods.textValue}</a></h5> 
                                                
                                <span>상태 : </span>
                                   <span class="text-success"><strong>재고 있음  ${goods.goodsQuan} 개</strong></span>
                            	
                            </div>
                        </div></td>
                        
                        
                        
                      	<td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="email" class="form-control" id="exampleInputEmail1" value="${goods.goodsAmount}">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong> ${goods.goodsPri} 원</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${goods.goodsPri*goods.goodsAmount} 원</strong></td>
                        <td class="col-sm-1 col-md-1">
                      <!--  <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> 삭제
                        </button> --> </td>     
                    </tr>
             </c:forEach>
                  
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>합계</h3></td>
                        <td class="text-center"><h4><strong> 원</strong></h4></td>
                        <td>   </td>
                    </tr>
                    
                    
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                       <a href="javascript:history.back();"> <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> 쇼핑 계속하기
                        </button></a></td>                        
                        <td>
                                              <form action="payment" method="post">
                        
                        <button type="submit" class="btn btn-success">
                            	결제 <span class="glyphicon glyphicon-play"></span>
                        </button>
                        <td>   </td>
                        </form>
                        
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script type="text/javascript">

</script>

     <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
</body>
</html>
