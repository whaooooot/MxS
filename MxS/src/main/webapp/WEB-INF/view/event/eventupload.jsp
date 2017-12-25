<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<% request.setCharacterEncoding("utf-8"); %>    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>이벤트 등록</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
    
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>

    <link href="./css/EventCreat.css" rel="stylesheet" type="text/css">
	<script language = "javascript">
	    function writeCheck() {
		var form = document.eventupload;
		if( !form.eventTit.value ) // form 에 있는 eventTit 값이 없을 때 
		{ 
			alert("이름을 적어주세요" ); // 경고창 띄움
			form.eventTit.focus(); // form 에 있는 name 위치로 이동
			return;	
		}
		
		if( !form.eventCon.value ) 
		{ 
			alert("내용을 적어주세요" );
			form.eventCon.focus();
			return;
			}
		
		if( !form.eventStt.value )
		{
			alert("시작날짜를 적어주세요" );
			form.eventStt.focus();
			return;
			}
		if( !form.eventEnd.value ) 
		{ 
			alert("끝나는날짜를 적어주세요" );
			form.eventEnd.focus();
			return;
			}
		if( !form.eventFile.value ) 
		{ 
			alert("첨부할 url을 적어주세요" );
			form.eventFile.focus();
			return;
			}
		form.submit();
		}
	</script>    
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
            <form:form name="eventupload" action="eventuploadfinish" modelAttribute="eventdto"
            method="POST" accept-charset="utf-8">
            	 <div class="form-group">
                   <label>영화</label>
                   <input name="movieNo" type="text" class="form-control" id="exampleInputMovie" placeholder="영화 번호">
                 </div>
            
                 <div class="form-group">
                   <label>이벤트 제목</label>
                   <input name="eventTit" type="text" class="form-control" id="exampleInputName1" placeholder="이벤트 제목">
                 </div>
                 
                 <div class="form-group">
                   <label>이벤트 설명</label>                
                   <textarea name="eventCon" rows="10" cols="20" placeholder="이벤트 정보"></textarea>
                 </div>                 
                
                 <div class="form-group">
	                <label>진행 기간</label>
	                <input name="eventStt" type="date" /> ~ <input name="eventEnd" type="date" />
              	 </div>
                 
                 <div class="form-group">
                   <label>이벤트 항목 </label>
<!--               <input name="eventType" type="radio" value="영화/예매">영화/예매
				   <input name="eventType" type="radio" value="극장별">극장별
				   <input name="eventType" type="radio" value="스페셜이벤트">스페셜이벤트  -->
				   <input name="eventType" type="text" class="form-control" id="exampleInputMovie" placeholder="이벤트 항목">    

                 </div>
                 
           <!-- <div class="form-group">
                   <label>이미지 첨부</label>
                   <input name="eventFile" type="file" id="exampleInputFile">
                 </div>  -->   
                 <div class="form-group">
                   <label>이벤트 첨부url</label>
                   <input name="eventFile" type="text" class="form-control" id="exampleInputName1" placeholder="이벤트 첨부url">
                 </div>
         
                 
              </form:form>
   
         </div>
         <div class="modal-footer">
            <div class="btn-group">
               <div class="btn-group" >
                  <input type="button" value="등록" class="btn btn-default btn-hover-green" Onclick="javascript:writeCheck();">
               </div>
               
               <div class="btn-group">
                  <input type="reset" value="취소" class="btn btn-default">
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