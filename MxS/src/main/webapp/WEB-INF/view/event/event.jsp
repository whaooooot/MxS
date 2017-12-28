<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import = "java.util.*" %>	
<%@ page import = "model.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>	
<% 
request.setCharacterEncoding("utf-8");
List<EventDTO> listevent = (List<EventDTO>)request.getAttribute("result");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>Responsive Moving Box Carousel - Bootsnipp.com</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
   
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>  
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    
        <link href="./css/EventMain.css" rel="stylesheet" type="text/css">
        <!-- 웹 스타일 css --> 
        
</head>
 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>

<body>
<div class="container">
<div class="col-xs-12">

    <div class="page-header">
        <h1>EVENT</h1>
        <div class="submenu" align="right">
        <a href="eventprize" class="round red on"><i>당첨자 발표</i></a>
        <a href="eventend" class="round red on"><i>종료된 이벤트</i></a>
       </div>
   </div>
    
        
    <div class="carousel slide" id="myCarousel">
        <div class="carousel-inner">
            <div class="item active">
                    <ul class="thumbnails">
                        <li class="col-sm-3">
                      	<div class="fff">
	                        <div class="thumbnail">
	                     	<a href="eventdetail?num=4">
	                        <img src="img/15120083782940.jpg" alt=""></a>
	                        </div>								
	                        
	                        <div class="caption">
	                        <a href="eventdetail?num=4">
	                               <em class="txt-lightblue"><%=listevent.get(3).getEventType()%></em>
	                               <p><%=listevent.get(3).getEventTit()%></p>
	                        </a>
	                               <em class="date">
	                               <span>기간: </span>
	                               <fmt:formatDate value="<%=listevent.get(3).getEventStt()%>"
                           		   pattern="yyyy/MM/dd" /> ~ <fmt:formatDate value="<%=listevent.get(3).getEventEnd()%>"
                           		   pattern="yyyy.MM.dd" />
                           		
	                               </em>
	                        </div>
                        </div>
                        </li>
                        
                        <li class="col-sm-3">
                    	<div class="fff">
	                        <div class="thumbnail">
	                           <a href="eventdetail?num=3">
	                           <img src="img/event.jpg" alt=""></a>
	                        </div>								
	                        
	                        <div class="caption">
	                        <a href="eventdetail?num=3">
	                               <em class="txt-lightblue"><%=listevent.get(2).getEventType()%></em>
	                               <p><%=listevent.get(2).getEventTit()%></p>
	                        </a>
	                               <em class="date">
	                               <span>기간: </span>
	                               <fmt:formatDate value="<%=listevent.get(2).getEventStt()%>"
                           		   pattern="yyyy.MM.dd" /> ~ <fmt:formatDate value="<%=listevent.get(2).getEventEnd()%>"
                           		   pattern="yyyy.MM.dd" />
                           		
	                               </em>
	                        </div>
                        </div>
                        </li>
                        
                        <li class="col-sm-3">
                     	<div class="fff">
	                        <div class="thumbnail">
	                           <a href="eventdetail?num=1">
	                           <img src="img/oneplusone.jpg" alt=""></a>
	                        </div>								
	                        
	                        <div class="caption">
	                        <a href="eventdetail?num=1">
	                               <em class="txt-lightblue"><%=listevent.get(0).getEventType()%></em>
	                               <p><%=listevent.get(0).getEventTit()%></p>
	                        </a>
	                               <em class="date">
	                               <span>기간: </span>
	                               <fmt:formatDate value="<%=listevent.get(0).getEventStt()%>"
                           		   pattern="yyyy.MM.dd" /> ~ <fmt:formatDate value="<%=listevent.get(0).getEventEnd()%>"
                           		   pattern="yyyy.MM.dd" />
                           		
	                               </em>
	                        </div>
                        </div>
                        </li>
                        
                        <li class="col-sm-3">
                    	<div class="fff">
	                        <div class="thumbnail">
	                           <a href="eventdetail?num=2">
	                           <img src="img/oneplusone1.jpg" alt=""></a>
	                        </div>								
	                        
	                        <div class="caption">
	                        <a href="eventdetail?num=2">
	                               <em class="txt-lightblue"><%=listevent.get(1).getEventType()%></em>
	                               <p><%=listevent.get(1).getEventTit()%></p>
	                        </a>
	                               <em class="date">
	                               <span>기간: </span>
	                               <fmt:formatDate value="<%=listevent.get(1).getEventStt()%>"
                           		   pattern="yyyy.MM.dd" /> ~ <fmt:formatDate value="<%=listevent.get(1).getEventEnd()%>"
                           		   pattern="yyyy.MM.dd" />
                           		
	                               </em>
	                        </div>
                        </div>
                        </li>
                    </ul>
              </div><!-- /Slide1 --> 
            <div class="item">
                    <ul class="thumbnails">
                        <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="./img/15120083782940.jpg" alt=""></a>
								</div>
								
								<div class="caption">
	                        <a href="eventdetail?num=3">
	                               <em class="txt-lightblue"><%=listevent.get(2).getEventType()%></em>
	                               <p><%=listevent.get(2).getEventTit()%></p>
	                        </a>
	                               <em class="date">
	                               <span>기간: </span>
	                               <fmt:formatDate value="<%=listevent.get(2).getEventStt()%>"
                           		   pattern="yyyy.MM.dd" /> ~ <fmt:formatDate value="<%=listevent.get(2).getEventEnd()%>"
                           		   pattern="yyyy.MM.dd" />
                           		
	                               </em>
	                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="./img/event.jpg" alt=""></a>
								</div>
								
								<div class="caption">
	                        <a href="eventdetail?num=4">
	                               <em class="txt-lightblue"><%=listevent.get(3).getEventType()%></em>
	                               <p><%=listevent.get(3).getEventTit()%></p>
	                        </a>
	                               <em class="date">
	                               <span>기간: </span>
	                               <fmt:formatDate value="<%=listevent.get(3).getEventStt()%>"
                           		   pattern="yyyy/MM/dd" /> ~ <fmt:formatDate value="<%=listevent.get(3).getEventEnd()%>"
                           		   pattern="yyyy.MM.dd" />
                           		
	                               </em>
	                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="./img/oneplusone.jpg" alt=""></a>
								</div>
								
								<div class="caption">
	                        <a href="eventdetail?num1=1">
	                               <em class="txt-lightblue"><%=listevent.get(0).getEventType()%></em>
	                               <p><%=listevent.get(0).getEventTit()%></p>
	                        </a>
	                               <em class="date">
	                               <span>기간: </span>
	                               <fmt:formatDate value="<%=listevent.get(0).getEventStt()%>"
                           		   pattern="yyyy.MM.dd" /> ~ <fmt:formatDate value="<%=listevent.get(0).getEventEnd()%>"
                           		   pattern="yyyy.MM.dd" />
                           		
	                               </em>
	                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
							<div class="fff">
								<div class="thumbnail">
									<a href="#"><img src="./img/oneplusone1.jpg" alt=""></a>
								</div>
								
								<div class="caption">
	                        <a href="eventdetail?num=2">
	                               <em class="txt-lightblue"><%=listevent.get(1).getEventType()%></em>
	                               <p><%=listevent.get(1).getEventTit()%></p>
	                        </a>
	                               <em class="date">
	                               <span>기간: </span>
	                               <fmt:formatDate value="<%=listevent.get(1).getEventStt()%>"
                           		   pattern="yyyy.MM.dd" /> ~ <fmt:formatDate value="<%=listevent.get(1).getEventEnd()%>"
                           		   pattern="yyyy.MM.dd" />
                           		
	                               </em>
	                        </div>
                            </div>
                        </li>
                    </ul>
              </div><!-- /Slide2 --> 
            
        </div>
        
       
      <nav>
         <ul class="control-box pager">
            <li><a data-slide="prev" href="#myCarousel" class=""><i class="glyphicon glyphicon-chevron-left"></i></a></li>
            <li><a data-slide="next" href="#myCarousel" class=""><i class="glyphicon glyphicon-chevron-right"></i></a></li>
         </ul>
      </nav>
      <!-- /.control-box -->   
      

        
      
     
        <div class="button" align="center">
            <a class="btn icon-btn btn-warning" href="#">
            <span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span> 전체보기 </a>
        </div>
     
     
    </div><!-- /#myCarousel -->
       
         
       
       
                              
 
</div><!-- /.col-xs-12 -->          

</div><!-- /.container -->


 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>

<script type="text/javascript">
// Carousel Auto-Cycle
  $(document).ready(function() {
    $('.carousel').carousel({
      interval: 6000
    })
  });

</script>
</body>
</html>
