<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>

<%@ page import="model.*"%>
<%@page import="org.springframework.context.*"%>
<%@page import="org.springframework.context.support.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ include file="../include/header.jsp"%>
<script type="text/javascript" src="./js/common.js"></script>
<script>	
	$(document).ready(function(){
		//영화등록으로 이동 
		$("#btnWrite").click(function(){
			location.href="${path}/movie_form";
		});
		
		/* 		listAttach();
	
	
 	function listAttach(){
	    $.ajax({
	        type: "post",
	        url: "${path}/getAttach/${movie.movieNum}",
	        success: function(list){
	            $(list).each(function(){
	            // each문 내부의 this : 각 step에 해당되는 값을 의미    
	            var fileInfo = getFileInfo(this);
	            // a태그안에는 파일의 링크를 걸어주고, 목록에는 파일의 이름 출력
	            var html = "<div><a href='"+fileInfo.getLink+"'>"+fileInfo.fileName+"</a>&nbsp;&nbsp;";
	            // 삭제 버튼
	            html += "<a href='#' class='fileDel' data-src='"+this+"'>[삭제]</a></div>"
	            $("#uploadedList").append(html);
	            });
	        }
	    });
	}  */
	
});
	
</script>
<title>movie_select</title>
</head>
<body>


	<table style="border: 1px solid #ccc">
		<colgroup>
			<col width="10%" />
			<col width="*" />
			<col width="*" />
			<col width="15%" />
			<col width="20%" />
		</colgroup>
		<thead>
			<tr>
				<th scope="col">영화번호</th>
				<th scope="col">영화제목</th>
				<th scope="col">포스터</th>
				<th scope="col">영화장르</th>
				<th scope="col">개봉날짜</th>
			</tr>
		</thead>
		<tbody>
		<!-- c:when이 flase일때 c:otherwise실행 -->
			<c:choose>
				<c:when test="${fn:length(result) > 0}">
					<c:forEach var="movie" items="${result}" varStatus="status">
						<tr>
							
							<td>${movie.movieNum}</td>
							<td><a href="${path}/movie_view?movieNum=${movie.movieNum}">${movie.movieTitle}</a></td>
							
							<td>
								<div class="box-image">
									<a href="/movies/detail-view/?midx=80068"> 
									<span class="thumb-image"> 
									
									
									<img src="/mxs-movie/img/upload/mxs/movie/upload/s_${movie.moviePoster}" />
		                                      
									<span class="ico-grade grade-15">${movie.movieGrade}</span>
									
									</span>
									
										</a> 
								</div>
							
							</td>
							
							<td>${movie.movieGenr}</td>
							<td><fmt:formatDate value="${movie.movieDate}" pattern="yyyy년MM월dd일" /></td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>

		</tbody>
	</table>
	

<button type="button" id="btnWrite">영화 새로등록</button>

</body>
</html>