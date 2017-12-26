<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.*"%>
<%@ page import="model.*"%>
<%
	request.setCharacterEncoding("utf-8");
	List<StoreoptDTO> listopt = (List<StoreoptDTO>) request.getAttribute("result");
	List<StoreDTO> listgoods = (List<StoreDTO>) request.getAttribute("result1");

	List list = null;
	List list2 = null;
	
	list = (List<StoreoptDTO>) request.getAttribute("result");
	list2 = (List<StoreDTO>) request.getAttribute("result1");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>옵션등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
.bright {
	float: right;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>

<link href="./css/storeupload.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./js/storeupload.js"></script>


<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="http://www.expertphp.in/js/jquery.form.js"></script>

</head>

<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>

<%
	/*
	String goodsnum = null;
	String goodsopt = null;

	for (StoreoptDTO d : listopt) {
		out.print(d.getGoodsNum());
		out.print(d.getGoodsOpt());
	}
	*/
%>


<body>

	<hr />

	<div class="container">
		<div class="row">

			<table>
				<tr>
					<td>

						<h2>상품 테이블</h2>


						<table class="points_table">
							<thead>


								<tr>
									<th class="col-xs-3">상품번호</th>
									<th class="col-xs-5">상품</th>


								</tr>
							</thead>

							<tbody class="points_table_scrollbar">

								
								<%
									for (int i = 0; i < list2.size(); i++) {
										StoreDTO goods = (StoreDTO) list2.get(i);
								%>

							


								<tr class="odd">
									<td class="col-xs-1"><%=goods.getGoodsNum()%></td>
									<td class="col-xs-3"><%=goods.getGoodsName()%></td>
								</tr>

								<%
									}
								%>


							</tbody>
						</table>
					</td>
					<td>
						<h2>등록된 상품 옵션</h2>


						<table class="points_table">
							<thead>
								<tr>
									<th class="col-xs-3">상품번호</th>
									<th class="col-xs-6">상품옵션번호</th>
									<th class="col-xs-3">옵션</th>

								</tr>
							</thead>

							<tbody class="points_table_scrollbar">
							
							
									<%
									for (int i = 0; i < list.size(); i++) {
										StoreoptDTO opt = (StoreoptDTO) list.get(i);
								%>
								<tr class="even">
									<td class="col-xs-1"><%=opt.getGoodsNum()%></td>
									<td class="col-xs-3"><%=opt.getGoodsOptnum()%></td>
									<td class="col-xs-1"><%=opt.getGoodsOpt()%></td>
								</tr>

									<%
									}
								%>


							</tbody>
						</table>

					</td>

				</tr>
			</table>








			<hr />



			<form:form class="well col-sm-10 col-md-10"
				action="storeoptionfinish" modelAttribute="storeoptdto"
				method="POST">
				<div class="row">
					<div class="col-sm-12 col-md-12">

						<label>상품번호선택(리스트로변경)</label> <input name="goodsNum"
							class="form-control" placeholder="상품번호입력" type="text" />

						<hr />
						<label>상품옵션</label> <input name="goodsOpt" class="form-control"
							placeholder="상품옵션" type="text">

						<hr />

						<br />
						<div class="bright">
							<input type="submit" class="btn btn-primary" value="옵션 추가" />
						</div>
					</div>
				</div>
			</form:form>

		</div>
	</div>


	<div id="footer">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>




</body>
</html>


