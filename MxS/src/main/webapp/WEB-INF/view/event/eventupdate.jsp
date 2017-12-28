<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<% request.setCharacterEncoding("utf-8"); 
	String eventNo = request.getParameter("eventNo");
	String movieNo = request.getParameter("movieNo");
	String eventTit = request.getParameter("eventTit");
	String eventCon = request.getParameter("eventCon");
	String eventFile = request.getParameter("eventFile");
	String eventType = request.getParameter("eventType");
	String eventStt = request.getParameter("eventStt");
	String eventEnd = request.getParameter("eventEnd");
%>    
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <title>이벤트 수정</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet">
    
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>

    <link href="./css/EventCreat.css" rel="stylesheet" type="text/css">
	<script language = "javascript">
	function writeCheck() {
		var form = document.eventupload;
		if( !form.movieNo.value ) // form 에 있는 movieNo 값이 없을 때 
		{ 
			alert( "영화번호를 적어주세요." ); // 경고창 띄움
			form.movieNo.focus(); // form 에 있는 name 위치로 이동 return;
			}
		
		if( !form.eventTit.value ) 
		{ 
			alert( "이름을 적어주세요." ); 
			form.eventTit.focus();
			}
		
		if( !form.eventCon.value ) 
		{ 
			alert( "내용을 적어주세요." );
			form.eventCon.focus();
			return;
			}
		
		
		if( !form.eventStt.value )
		{
			alert( "시작날짜를 적어주세요." );
			form.eventStt.focus();
			return;
			}
		
		if( !form.eventEnd.value ) 
		{ 
			alert( "끝나는날짜를 적어주세요." );
			form.eventEnd.focus();
			return;
			}
		
		var radio1 = $('#radio1');
		 
		if( $(':radio[name="eventType"]:checked').length < 1){
		    alert('유형을 선택해주세요');                        
		    radio1.focus();
		    return false;
			}
		
		if( !form.eventFile.value ) 
		{ 
			alert( "파일을 첨부해주세요." );
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
	            <h4 class="modal-title" id="lineModalLabel">이벤트 수정</h4>
	         </div>
	         
         <div class="modal-body">

            <!-- content goes here -->
            <form:form name="eventupload" action="eventupdatefinish" modelAttribute="eventdto"
            method="POST" accept-charset="utf-8">
            	 <input type="hidden" name="eventNo" class="form-control" value="<%="eventNo"%>" />
            	 <br />
            	 
            	 <div class="form-group">
                   <label>영화</label>
                   <input name="movieNo" type="text" class="form-control" id="exampleInputMovie"
                   placeholder="영화 번호" value="<%=movieNo %>" />
                 </div>
            
                 <div class="form-group">
                   <label>이벤트 제목</label>
                   <input name="eventTit" type="text" class="form-control" id="exampleInputName1"
                   placeholder="이벤트 제목" value="<%=eventTit %>" />
                 </div>
                 
                 <div class="form-group">
                   <label>이벤트 설명</label>                
                   <textarea name="eventCon" rows="10" cols="20"
                   placeholder="이벤트 정보"><%=eventCon %></textarea>
                 </div>                 
                
                 <div class="form-group">
	                <label>진행 기간</label>
	                <input name="eventStt" type="text" value="<%=eventStt %>" /> ~ <input name="eventEnd" type="text" value="<%=eventEnd %>" />
              	 </div>
                 
                 <div class="form-group">
                   <label>이벤트 항목 </label>
<%
					if(eventType.equals("영화/예매")){
%>
					   <input name="eventType" id="radio1" type="radio" value="영화/예매" checked>영화/예매
					   <input name="eventType" id="radio2" type="radio" value="극장별">극장별 
					   <input name="eventType" id="radio3" type="radio" value="스페셜이벤트">스페셜이벤트 
<%						
					} else if(eventType.equals("극장별")){
%>
					   <input name="eventType" id="radio1" type="radio" value="영화/예매">영화/예매
					   <input name="eventType" id="radio2" type="radio" value="극장별" checked>극장별 
					   <input name="eventType" id="radio3" type="radio" value="스페셜이벤트">스페셜이벤트 
<%						
					}else{
%>
					   <input name="eventType" id="radio1" type="radio" value="영화/예매" >영화/예매
					   <input name="eventType" id="radio2" type="radio" value="극장별">극장별 
					   <input name="eventType" id="radio3" type="radio" value="스페셜이벤트" checked>스페셜이벤트 
<%						
					}
%>
					   	       
                 </div>
                 
          		 <div class="form-group">
                   <label>이미지 첨부</label>
                   <input name="eventFile" type="text" id="exampleInputFile" value="<%=eventFile %>" />
                 </div> 
           <!--  <div class="form-group">
                   <label>이벤트 첨부url</label>
                   <input name="eventFile" type="text" class="form-control" id="exampleInputName1" placeholder="이벤트 첨부url">
                 </div>  -->  
         
                 
              </form:form>
   
         </div>
         <div class="modal-footer">
            <div class="btn-group">
               <div class="btn-group" >
                  <input type="button" value="저장" class="btn btn-default" Onclick="javascript:writeCheck();">
               </div>
               
               <div class="btn-group">
                  <input type="button" value="취소" class="btn btn-default" onclick="history.back()">
                
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