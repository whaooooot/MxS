<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">  
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
   
    <link href="./css/EventEnd.css" rel="stylesheet" type="text/css">
    <!-- 웹 스타일 css --> 
</head>
<body>

 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>


<div class="container">
	<div class="row">


	<div class="contents">
	<div class="title-event">
		<h1>EVENT</h1>
	</div>	
	
	<div class="title-header">
		<h5 class="modal-title" id="lineModalLabel">종료된 이벤트</h5>
		<div class="btn-toolbar">
         <a href="eventprize" class="btn btn-primary">당첨자 발표</a>   
      </div>
   </div>
   <div class="endevent-list">
	<ul>
	   	<li>
	   		<div class="box-image">
	   			<a href="#">
	   				<span class="image">
	   				<img src="./img/메리와 마녀 의 꽃.jpg" onerror="errorImage(this)">
	   				</span>
	   			</a>
	   		</div>
	   		<div class="box-contents">
	   			<a href="#">
	   			<em class="txt-lightblue">영화/예매</em>
	   			<strong>[메리와 마녀의 꽃] 1+1 예매권 이벤트</strong>
	   			</a>
	   			<em class="date">
	   				<span>기간: </span>
	   				2017.12.04 ~ 2017.12.10
	   			</em>
	   	    </div>
	   	</li>
	   	<li>
             <div class="box-image">
                  <a href="#">
                 	 <span class="image">
                     <img src="./img/대구 월성.jpg" onerror="errorImage(this)">
                     </span>
                  </a>
             </div>
             <div class="box-contents">
                  <a href="#">
                  <em class="txt-lightblue">CGV극장별</em>
                  <strong>[대구월성,대구스타디움]나만의 뽀로로를 그려주세요!</strong>
                  </a>
                  <em class="date">
                      <span>기간: </span>
                      2017.12.09 ~ 2017.12.10
                  </em>
            </div>
        </li>
        <li>
             <div class="box-image">
                  <a href="#">
                 	 <span class="image">
                     <img src="./img/세 번째 살인.jpg" onerror="errorImage(this)">
                     </span>
                  </a>
             </div>
             <div class="box-contents">
                  <a href="#">
                  <em class="txt-lightblue">아트하우스</em>
                  <strong>[세 번째 살인] 프리미어 DAY</strong>
                  </a>
                  <em class="date">
                      <span>기간: </span>
                      2017.12.09 ~ 2017.12.10
                  </em>
            </div>
        </li>
	   	<li>
             <div class="box-image">
                  <a href="#">
                 	 <span class="image">
                     <img src="./img/라라랜드.jpg" onerror="errorImage(this)">
                     </span>
                  </a>
             </div>
             <div class="box-contents">
                  <a href="#">
                  <em class="txt-lightblue">영화/예매</em>
                  <strong>[라라랜드] 2018달력 증정 특별상영 이벤트</strong>
                  </a>
                  <em class="date">
                      <span>기간: </span>
                      2017.12.08 ~ 2017.12.10
                  </em>
            </div>
        </li>
	   	
	</ul>
	</div>
		 	<div class="bottom-button">
		 	<ul class="pagination">
		              <li class="disabled"><a href="#">«</a></li>
		              <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
		              <li><a href="#">2</a></li>
		              <li><a href="#">3</a></li>
		              <li><a href="#">4</a></li>
		              <li><a href="#">5</a></li>
		              <li><a href="#">»</a></li>
		    </ul>
		
			<ul class="pagination1">
				<li><a href="#">수 정</a></li>
				<li><a href="#">삭 제</a></li>
				
			</ul>
			</div>
		</div>
	</div>
</div>

   </body>
   
    <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
   </html>