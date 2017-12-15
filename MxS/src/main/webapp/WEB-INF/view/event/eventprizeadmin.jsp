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
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>

   
   <link href="./css/EventEnd.css" rel="stylesheet" type="text/css">
    <!-- 웹 스타일 css --> 
</head>
<body>
<div class="container">
   <div class="title-event">
      <h1>EVENT</h1>
   </div>   
   
   <div class="title-header">
      <h5 class="modal-title" id="lineModalLabel">이벤트 당첨자 발표</h5>
      <div class="btn-toolbar">
       <a href="#" class="btn btn-primary">종료된 이벤트</a>   
      </div>
   </div>


   

   <div class="well">
       <table class="table">
         <thead>
           <tr>
             <th>이벤트 타입</th>
             <th>제목</th>
             <th>기간</th>
             <th style="width: 36px;"></th>
           </tr>
         </thead>
         <tbody>
           <tr>
             <td><em class="txt-lightblue">영화/예매</em></td>
             <td><a href="#">[뽀로로 공룡섬 대모험 극장판] 스크린 X 특집페이지 하트 이벤트 당첨자 발표</a></td>
             <td>2017.12.04 ~ 2017.12.17</td>
             <td>
                 <a href="user.html"><i class="icon-pencil"></i></a>
                 <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
             </td>
           </tr>
           <tr>
             <td><em class="txt-lightblue">영화/예매</em></td>
             <td><a href="#">[노 게임 노 라이프 -제로] 예매 이벤트 당첨자 발표</a></td>
             <td>2017.10.19 ~ 2017.10.25</td>
             <td>
                 <a href="user.html"><i class="icon-pencil"></i></a>
                 <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
             </td>
           </tr>
           <tr>
             <td><em class="txt-lightblue">영화/예매</em></td>
             <td><a href="#">[라라랜드]2018 달력 증정 특별상영 이벤트</a></td>
             <td>2017.12.08 ~ 2017.12.10</td>
             <td>
                 <a href="user.html"><i class="icon-pencil"></i></a>
                 <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
             </td>
           </tr>
           <tr>
             <td><em class="txt-lightblue">영화/예매</em></td>
             <td><a href="#">[메리와 마녀의 꽃] 1+1 예매권 이벤트</a></td>
             <td>2017.12.04 ~ 2017.12.10</td>
             <td>
                 <a href="user.html"><i class="icon-pencil"></i></a>
                 <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
             </td>
           </tr>
           <tr>
             <td><em class="txt-lightblue">영화/예매</em></td>
             <td><a href="#">[저스티스 리그] 예매 이벤트 당첨자 발표</a></td>
             <td>2017.11.10 ~ 2017.11.26</td>
             <td>
                 <a href="user.html"><i class="icon-pencil"></i></a>
                 <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
             </td>
           </tr>
           <tr>
             <td><em class="txt-lightblue">영화/예매</em></td>
             <td><a href="#">[꾼] 300만 돌파 기념 CGV콤보 증정 이벤트</a></td>
             <td>2017.12.10</td>
             <td>
                 <a href="user.html"><i class="icon-pencil"></i></a>
                 <a href="#myModal" role="button" data-toggle="modal"><i class="icon-remove"></i></a>
             </td>
           </tr>
         </tbody>
       </table>
   </div>
   <div class="pagination">
       <ul>
           <li><a href="#">이전</a></li>
           <li><a href="#">1</a></li>
           <li><a href="#">2</a></li>
           <li><a href="#">3</a></li>
           <li><a href="#">4</a></li>
           <li><a href="#">다음</a></li>
       </ul>
   </div>
   
   <div class="modal small hide fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-header">
           <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
           <h3 id="myModalLabel">이벤트 항목 삭제</h3>
       </div>
       <div class="modal-body">
           <p class="error-text">이벤트 항목을 삭제하시겠습니까?</p>
       </div>
       <div class="modal-footer">
           <button class="btn" data-dismiss="modal" aria-hidden="true">취소</button>
           <button class="btn btn-danger" data-dismiss="modal">확인</button>
       </div>
   </div>
</div>
   </body>
   </html>