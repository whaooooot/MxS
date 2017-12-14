<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<head>
    <meta charset="utf-8">
    <!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
    <title>Sidebar Menu Group Tree - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
    
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>

   <link href="./css/EventCreat.css" rel="stylesheet" type="text/css">
      


</head>
<body>
<div class="container">
   <div class="row">
      
      <div class="detail" id="content">
         <div class="title-myevent">
            <h2>이벤트 관리</h2>
         </div>
      
      
      <div class="modal-content">
         <div class="modal-header">
            <h4 class="modal-title" id="lineModalLabel">이벤트 만들기</h4>
         </div>
         <div class="modal-body">

               <!-- content goes here -->
            <form>
                 <div class="form-group">
                   <label for="exampleInputEmail1">이벤트 이름</label>
                   <input type="text" class="form-control" id="exampleInputName1" placeholder="이벤트 이름">
                 </div>
                  <div class="form-group">
                   <label for="exampleInputContent">이벤트 설명</label>
                
                   <textarea rows="10" cols="20">이벤트설명</textarea>
                 </div>
                 
                
                 <div class="input-group date" id="dp3" data-date="2017-12-01" data-date-format="yyyy-mm-dd">
                <label for="exampleInputDate">진행 기간</label>
                <input type="date" /> ~ <input type="date"/>
              </div>
                 
                 <div class="form-group">
                   <label for="exampleInputEventcheck">이벤트 항목 </label>
                   <label class="form-control" id="exampleInputEventcheck"></label> 
                  <input type="checkbox" value=" 출석"> 출석
                  <input type="checkbox" value=" 1+1"> 1+1 예매
                  <input type="checkbox" value=" 할인"> 할인
                  <input type="checkbox" value=" 경품"> 경품
                  <input type="checkbox" value=" 굿즈"> 굿즈
                   
                 </div>
                 
                 <div class="form-group">
                   <label for="exampleInputFile">이미지 첨부</label>
                   <input type="file" id="exampleInputFile">
                 </div>
                 
         
                 
             
                 
               </form>
   
         </div>
         <div class="modal-footer">
            <div class="btn-group btn-group-justified" role="group" aria-label="group button">
               <div class="btn-group" role="group">
                  <button type="button" id="saveImage" class="btn btn-default btn-hover-green"
                   data-action="save" role="button">저장</button>
               </div>
               
               <div class="btn-group" role="group">
                  <button type="button" class="btn btn-default" data-dismiss="modal"
                    role="button">뒤로가기</button>
               </div>
               
               
            </div>
         </div>
   </div>
         
         
         
         
         
         
      </div>
   </div>
</div>


<script type="text/javascript">
!function ($) {
    
    // Le left-menu sign
    /* for older jquery version
    $('#left ul.nav li.parent > a > span.sign').click(function () {
        $(this).find('i:first').toggleClass("icon-minus");
    }); */
    
    $(document).on("click","#left ul.nav li.parent > a > span.sign", function(){          
        $(this).find('i:first').toggleClass("icon-minus");      
    }); 
    
    // Open Le current menu
    $("#left ul.nav li.parent.active > a > span.sign").find('i:first').addClass("icon-minus");
    $("#left ul.nav li.current").parents('ul.children').addClass("in");

}(window.jQuery);
</script>

</body>
</html>