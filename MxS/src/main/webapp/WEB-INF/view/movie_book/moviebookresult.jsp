<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>예매페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">



</style>
<link href="./css/storebook.css?ver=2" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
   src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
   <div class="container">
      <div class="row">
         <div class="bs-twrapper">
            <br />
         

            <table class="table table-bordered">
               <!-- We are wrapping the thead in an extra tr (nesting) this will allow us
              to give the body a percentage width -->

               <thead class="sticky">

               </thead>
               <!-- We are also wrapping the tbody in an extra tr (nesting) this will allow us
              to give the body a percentage width -->

            </table>



            <table class="table table-bordered" >
               <tbody>
                  <tr>
                     <th colspan="2">예매완료</th>

                  </tr>



                  <tr>
                     <td  colspan="2" align="center">
                        <h1>결제</h1>


                     </td>
                  </tr>
                  
                  <tr>   <td align="center"><img class="imgsize" src="http://movie.phinf.naver.net/20131105_185/1383644515842maJk5_JPEG/movie_image.jpg?width=200" alt="Image"></td>
                  <td rowspan="2" align="center">
<%--    <%
      Date date = new Date();
      SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
      String sysdate = simpleDate.format(date);
   %>
    --%>
                                 <br/><br/><br/><br/>
                           <c:forEach var="booklist" items="${result}">
                              <table>
                                 
                                 <tr><th>예배번호</th> <td>&nbsp;&nbsp;${booklist.bookNum}</td></tr>
                                 <tr><th>영화</th> <td>&nbsp;&nbsp;${booklist.movieNum}</td></tr>
                                 <tr><th>극장</th> <td>&nbsp;&nbsp;${booklist.theaterNum}</td></tr>
                              <%-- <tr><th>일시</th> <td>&nbsp;&nbsp;<%=sysdate%></td></tr> --%>
                                 <tr><th>인원</th> <td>&nbsp;&nbsp;totalperson</td></tr>
                                 <tr><th>좌석</th> <td>&nbsp;&nbsp;${booklist.seatNum}</td></tr>
                                 <tr><th></th> <td>&nbsp;&nbsp;</td></tr>
                                 <tr><th>상품번호</th> <td>&nbsp;&nbsp;9854-4321</td></tr>
                                 <tr><th>상품</th> <td>&nbsp;&nbsp;캣니스피규어</td></tr>
                                 <tr><th>총 결제금액</th> <td>&nbsp;&nbsp;50,000원</td></tr>
                                 
                              </table>
                           </c:forEach>
                              
                                 <div class="bright">
               <input class="button -c center" type="button" value="예매확인/취소" />
            </div>
                     </td>
                  
                  </tr>
                     
                     <td align="center"><img class="imgsize" src="https://c.shld.net/rpx/i/s/i/spin/10108573/prod_1630017212??hei=64&wid=64&qlt=50" alt="Image"></td>
                  
                  
                  <tr>
                  
                     
                     
                     
                     
                  
                  </tr>
                  
                        <tr>
                     <th>예매유의사항</th>
                     
                     <td>유의사항들~~~~</td>
                  
                  </tr>
                  
                  
                  
                  </tbody>
            </table>
         </div>
      </div>
   </div>


 <div id="header">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>


</body>

<script type="text/javascript">
   
</script>
</body>
</html>