<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*, javax.servlet.*, java.util.*, model.*" %>
<%@page import="org.springframework.context.*, org.springframework.context.support.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자주 찾는 질문 | 고객센터</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
<link href="./css/customer.detail.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<div id="header">
      <jsp:include page="../header.jsp" flush="false" />
</div>
<script type="text/javascript">
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
        url: "customer_qna_list",
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
              txt += "<td class='txt'><a href='${path}/MxS/qna_detail?boardNum="+obj.BOARD_NUM+"'>"+obj.BOARD_TITLE+"</a></td>"
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
<body>
<br/>
	<div class="container"> 
		<div class="row">
			<div class="col-aside">
               <div class="snb">
                  <ul>
                     <li class=""><a href="customer_service">고객센터 메인<i></i></a></li>
                     <li class="on"><a href="customer_qna" title="현재선택">자주찾는 질문<i></i></a></li>
                     <li class=""><a href="customer_notice">공지/뉴스<i></i></a></li>
                     <li class=""><a href="customer_email">이메일 문의<i></i></a></li>
                  </ul>
               </div>
            </div>
			<div class="col-detail">
				<div class="customer_top">
					<h2 class="tit">자주찾는 질문</h2>
					<p class="stit">
						회원님들께서 가장 자주하시는 질문을 모았습니다. <br>궁금하신 내용에 대해 검색해보세요.
					</p>
				</div>
				<div class="tabbable">
					<ul class="nav nav-tabs">
						<li class="active"><a href="javascript:void();" onclick="tab(0);" title="선택된 탭메뉴">전체</a></li>
						<li class=""><a href="javascript:void();" onclick="tab(1);" data-toggle="tab">예매/관람권</a></li>
						<li class=""><a href="javascript:void();" onclick="tab(2);" data-toggle="tab">멤버쉽</a></li>
						<li class=""><a href="javascript:void();" onclick="tab(3);" data-toggle="tab">할인혜택</a></li>
						<li class=""><a href="javascript:void();" onclick="tab(4);" data-toggle="tab">영화관이용</a></li>
						<li class=""><a href="javascript:void();" onclick="tab(5);" data-toggle="tab">기프트샵</a></li>
						<li class=""><a href="javascript:void();" onclick="tab(6);" data-toggle="tab">홈페이지</a></li>
						<li class=""><a href="javascript:void();" onclick="tab(7);" data-toggle="tab">모바일</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">
							<div class="search_result">
								총 <span class="num">${count}건</span>이 검색되었습니다.
							</div>
							<!-- tab contents -->
							<div class="tbl_area">
								<table class="tbl_notice_list">
									<caption>목록</caption>
									<colgroup>
										<col style="width: 40px;">
										<col style="width: 120px;">
										<col style="width: 560px;">
										<col style="">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">번호</th>
											<th scope="col">구분</th>
											<th scope="col" class="tit">제목</th>
											<th scope="col">조회수</th>
										</tr>
									</thead>
									<tbody id="tbody">
									</tbody>
								</table>
							</div>
							<!-- //tab contents -->
						</div>
						</div>
					</div>
					<div class="search_order">
					<ol>
						<li><span class="ico_oder find_q">01 자주찾는 질문 검색</span></li>
						<li><span class="ico_oder email_i">02 이메일 문의</span><a
							href="/support/qna/default.aspx"><img
								src="http://img.cgv.co.kr/support/faq/btn_inquiry.png" alt="문의"></a></li>
						<li><span class="ico_oder tel_i">03 고객센터 전화문의</span><span
							class="num">2222-2222</span></li>
					</ol>
				</div>
			</div>		
		</div>
	</div>
</body>
 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
</html>