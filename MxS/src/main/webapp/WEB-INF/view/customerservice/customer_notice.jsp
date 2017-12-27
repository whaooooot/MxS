<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*, javax.servlet.*, java.util.*, model.*" %>
<%@page import="org.springframework.context.*, org.springframework.context.support.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공지/뉴스 고객센터</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="./css/customer.detail.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    $("#searchtext").keyup(function() {
		var k = $(this).val(); // keyup 되면 입력한 문자열 변수 k에 저장 $().val 이벤트 발생한 요소(텍스트 필드 value 속성값) 읽어내는 기능
		$(".tbl_notice_list > tbody > tr").hide();
		var temp = $(".tbl_notice_list > tbody > tr > td:nth-child(5n+3):contains('" + k + "')");
		
		$(temp).parent().show();
    });
});

/* Tab */
$(document).ready(function(){
	$(".container > .row > .col-detail > .tabbable > .nav-tabs > li").click(function(){
		$(".container > .row > .col-detail > .tabbable > .nav-tabs > li").removeClass('active');
		$(this).addClass("active");
	});
	
	tab('0');
});
function tab(val){
    $.ajax({
        url: "customer_notice_list",
        type: "post",     
		dataType : 'json',
		cache : false,    
        data: {
        	p_tab_value: val
        },
    	success: function(data){
	       $("#tbody").empty();
	        var txt ="";
	        $.each(data, function(index, obj){
	        	/* alert(data); */
         	  txt += "<tr class='first'>"
              txt += "<td>"+obj.BOARD_NUM+"</td>"
              txt += "<td>"+obj.BOARD_HEAD+"</td>"
              txt += "<td class='txt'><a href='${path}/MxS/notice_detail?boardNum="+obj.BOARD_NUM+"'>"+obj.BOARD_TITLE+"</a></td>"
              txt += "<td>"+obj.BOARD_DATE+"</td>"
			  txt += "<td class='num'>"+obj.READCOUNT+"</td>"
              txt += "</tr>"
	        });
	        $("#tbody").html(txt);
		},
		error : function(request, status, error) {
            alert("code:" + request.status + "\n" + "error:" + error);
         }
	});
}  
</script>
</head>
<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>
<body>
<br/>
	<div class="container">
		<div class="row">
			<div class="col-aside">
               <div class="snb">
                  <ul>
                     <li class=""><a href="customer_service">고객센터 메인<i></i></a></li>
                     <li class=""><a href="customer_qna">자주찾는 질문<i></i></a></li>
                     <li class="on"><a href="customer_notice" title="현재선택">공지/뉴스<i></i></a></li>
                     <li class=""><a href="customer_email">이메일 문의<i></i></a></li>
                  </ul>
               </div>
            </div>
   <div class="col-detail">
      <div class="customer_top">
         <h2 class="tit">공지/뉴스</h2>
         <p class="stit">CGV의 주요한 이슈 및 여러가지 소식들을 확인하실 수 있습니다.</p>
      </div>
      <div class="search_area">
         <input id="searchtext" type="text" class="c_input" title="검색어 입력" placeholder="검색어를 입력해 주세요" value="" style="width: 275px;">
      </div>

      <div class="tabbable">
         <ul class="nav nav-tabs">
            <li class="active"><a href="javascript:void();" onclick="tab(0);" data-toggle="tab" title="선택된 탭메뉴">전체</a></li>
            <li class=""><a href="javascript:void();" onclick="tab(1);" data-toggle="tab">시스템 점검</a></li>
            <li class=""><a href="javascript:void();" onclick="tab(2);" data-toggle="tab">극장</a></li>
            <li class=""><a href="javascript:void();" onclick="tab(3);" data-toggle="tab">기타</a></li>
         </ul>
         <div class="tab-content">
            <div class="tab-pane active" id="tab1">
               <div class="search_result">
                  총 <span class="num">3747건</span>이 검색되었습니다.
               </div>
               <div class="tbl_area">
                  <table class="tbl_notice_list">
                     <caption>목록</caption>
                     <colgroup>
                        <col style="width:50px;">
                        <col style="width:120px;">
                        <col style="width:800px;">
                        <col style="width:120px;">
                        <col style="width:120px;">
                     </colgroup>
                     <thead>
                        <tr>
                           <th scope="col">번호</th>
                                <th scope="col">구분</th>
                           <th scope="col" class="tit">제목</th>
                           <th scope="col">등록일</th>
                           <th scope="col">조회수</th>
                        </tr>
                     </thead>
                     <tbody id="tbody">
                     
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>
</div>
</body>
<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
</html>