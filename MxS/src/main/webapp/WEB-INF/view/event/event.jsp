<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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

<body>
<div class="container">
<div class="col-xs-12">

    <div class="page-header">
        <h1>EVENT</h1>
        <div class="submenu" align="right">
        <a href="eventprize" class="round red on"><i>당첨자 발표</i></a>
        <a href="#" class="round red on"><i>종료된 이벤트</i></a>
       </div>
   </div>
    
        
    <div class="carousel slide" id="myCarousel">
        <div class="carousel-inner">
            <div class="item active">
                    <ul class="thumbnails">
                        <li class="col-sm-3">
                      <div class="fff">
                        <div class="thumbnail">
                           <a href="#"><img src="./img/15117589467490.jpg" alt=""></a>
                        </div>
                        
                        <div class="caption">
                        <a href="#">
                               <em class="txt-lightblue">스페셜이벤트</em>
                                 <p>2018 CGV CALENDAR</p>
                                </a>
                                 <em class="date">
                                     <span>기간: </span>
                                     2017.11.16 ~ 2017.12.31
                                 </em>
                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
                     <div class="fff">
                        <div class="thumbnail">
                           <a href="#"><img src="./img/15120083782940.jpg" alt=""></a>
                        </div>
                        
                        <div class="caption">
                        <a href="#">
                               <em class="txt-lightblue">스페셜이벤트</em>
                                 <p>[야심찬 연말마무리 이벤트]  2017 작년의 나를 이겨라!</p>
                                </a>
                                 <em class="date">
                                     <span>기간: </span>
                                     2017.11.28 ~ 2017.12.31
                                 </em>
                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
                     <div class="fff">
                        <div class="thumbnail">
                           <a href="#"><img src="./img/메리와 마녀 의 꽃.jpg" alt=""></a>
                        </div>
                        
                        <div class="caption">
                        <a href="#">
                               <em class="txt-lightblue">스페셜이벤트</em>
                                 <p>1+1 예매권 이벤트</p>
                                </a>
                                 <em class="date">
                                     <span>기간: </span>
                                     2017.12.06 ~ 2017.12.13
                                 </em>
                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
                     <div class="fff">
                        <div class="thumbnail">
                           <a href="#"><img src="./img/15120165577600.jpg" alt=""></a>
                        </div>
                        
                        <div class="caption">
                        <a href="#">
                               <em class="txt-lightblue">스페셜이벤트</em>
                                 <p>이달의CGV_12월</p>
                                </a>
                                 <em class="date">
                                     <span>기간: </span>
                                     2017.11.30 ~ 2017.12.31
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
                           <a href="#"><img src="http://placehold.it/360x240" alt=""></a>
                        </div>
                        <div class="caption">
                           <h4>Praesent commodo</h4>
                           <p>Nullam Condimentum Nibh Etiam Sem</p>
                           <a class="btn btn-mini" href="#">쨩 Read More</a>
                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
                     <div class="fff">
                        <div class="thumbnail">
                           <a href="#"><img src="http://placehold.it/360x240" alt=""></a>
                        </div>
                        <div class="caption">
                           <h4>Praesent commodo</h4>
                           <p>Nullam Condimentum Nibh Etiam Sem</p>
                           <a class="btn btn-mini" href="#">쨩 Read More</a>
                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
                     <div class="fff">
                        <div class="thumbnail">
                           <a href="#"><img src="http://placehold.it/360x240" alt=""></a>
                        </div>
                        <div class="caption">
                           <h4>Praesent commodo</h4>
                           <p>Nullam Condimentum Nibh Etiam Sem</p>
                           <a class="btn btn-mini" href="#">쨩 Read More</a>
                        </div>
                            </div>
                        </li>
                        <li class="col-sm-3">
                     <div class="fff">
                        <div class="thumbnail">
                           <a href="#"><img src="http://placehold.it/360x240" alt=""></a>
                        </div>
                        <div class="caption">
                           <h4>Praesent commodo</h4>
                           <p>Nullam Condimentum Nibh Etiam Sem</p>
                           <a class="btn btn-mini" href="#">쨩 Read More</a>
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
      
<!--    <div class="sect-event" align="center">
         <div class="box-event">
            <div class="evt-item-lst" style="min-height:1000px; ">
              <div style="position:absolute; top:100px; left: 50px; ">
                <a id="tile_1" href="#" >
                <img src="../img/15120083782940.jpg" alt="cgv 감사 패키지" ">
                </a>
                </div>       
                      
              <div style="position:absolute; top:100px; left: 380px; ">
                <a id="tile_2" href="#" >
                <img src="../img/15120165577600.jpg" alt="" >
                </a>
                </div>       
                          
              <div style="position:absolute; top:100px; left: 700px; ">
                <a id="tile_3" href="#" >
                <img src="../img/메리와 마녀 의 꽃.jpg" alt="">
                </a>
                </div>
                
                <div style="position:absolute; top:350px; left: 50px; ">
                <a id="tile_4" href="#" >
                <img src="../img/15117589467490.jpg" alt="">
                </a>
                </div>
                
                <div style="position:absolute; top:350px; left: 380px; ">
                <a id="tile_5" href="#" >
                <img src="../img/메리와 마녀 의 꽃.jpg" alt="">
                </a>
                </div>
                
                <div style="position:absolute; top:350px; left: 700px; ">
                <a id="tile_6" href="#" >
                <img src="../img/메리와 마녀 의 꽃.jpg" alt="">
                </a>
                </div>                       
                    
             </div>
        </div>
-->     
        
      
     
        <div class="button" align="center">
            <a class="btn icon-btn btn-warning" href="#">
            <span class="glyphicon btn-glyphicon glyphicon-plus img-circle text-success"></span> 전체보기 </a>
        </div>
     
     
    </div><!-- /#myCarousel -->
       
         
       
       
                              
 
</div><!-- /.col-xs-12 -->          

</div><!-- /.container -->


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
