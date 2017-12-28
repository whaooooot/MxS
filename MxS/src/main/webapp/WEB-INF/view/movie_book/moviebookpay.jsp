<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>예매페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="./css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.button.-salmon {
	color: #FFFFFF;
	background: #F32C52;
}

.button.-dark {
	color: #FFFFFF;
	background: #161616;
}

.button.-dark1 {
	color: #F32C52;
	background: #161616;
}

.button.-salmon2 {
	color: #FFFFFF;
	background: #416dea;
}

.button.-dark2 {
	color: #416dea;
	background: #161616;
}
</style>
<link href="./css/storebook.css?ver=2" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>

	<div id="header">
		<jsp:include page="../header.jsp" flush="false" />
	</div>
	<form:form method="post" action="moviebookresult">

		<div class="container">
			<div class="row">
				<div class="bs-twrapper">
					<br />
					<div class="bright">
						<a href="javascript:location.reload();"
							class="btn btn-bordered-success">전체 다시하기</a>
					</div>

					<table class="table table-bordered">
						<!-- We are wrapping the thead in an extra tr (nesting) this will allow us
		        to give the body a percentage width -->

						<thead class="sticky">

						</thead>
						<!-- We are also wrapping the tbody in an extra tr (nesting) this will allow us
		        to give the body a percentage width -->

					</table>



					<table class="table table-bordered">
						<tbody>
							<tr>

								<th>결제금액</th>

							</tr>



							<tr>
								<td></td>

								<td rowspan="6">
									<table class="table table-bordered">

										<tr>

											<th>결제하실금액</th>
										</tr>

										<tr>
											<td class="button -dark center"><div class="bright">
													<h3>10,000원</h3>
												</div></td>

										</tr>

									</table>

									<hr />





									<table class="table table-bordered">

										<tr>

											<th class="button -salmon2 center">결제내역</th>
										</tr>

										<tr>

											<td>신용카드
												<div class="bright">
													<p>9,000원</p>
												</div>
											</td>

										</tr>

										<tr>

											<th>남은결제금액</th>
										</tr>

										<tr>
											<td class="button -dark2 center"><div class="bright">
													<h3>9,000원</h3>
												</div></td>

										</tr>



									</table>
								</td>



							</tr>







							<tr>


								<th>결제수단
									<div class="bright">
										<input class="btn btn-bordered-success" type="button"
											value="최종결제수단 다시하기" />
									</div>
								</th>

							</tr>

							<tr>
								<td>
									<div class="col-md-8">
										<strong>신용 카드:</strong>
									</div>
									<div class="col-md-8">
										<select id="CreditCardType" name="CreditCardType"
											class="form-control">
											<option value="5">Visa</option>
											<option value="6">MasterCard</option>
											<option value="7">신한</option>
											<option value="9">삼성</option>
											<option value="10">하나</option>
											<option value="11">현대</option>
											<option value="12">롯데</option>
										</select> <input type="text" id="card">
										<script type="text/javascript">
											$(function() {
												var val = $('#card');
												$('#CreditCardType')
														.change(
																function() {

																	var target = document
																			.getElementById("CreditCardType");

																	val
																			.val(target.options[target.selectedIndex].text);
																});

											});
										</script>

									</div>

									<div class="form-group">
										<div class="col-md-8">
											<strong>카드 번호(-없이 16자리):</strong>
										</div>
										<div class="col-md-8">
											<input type="text" class="form-control" name="car_number"
												value="" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-8">
											<strong>카드 CVC(3자리):</strong>
										</div>
										<div class="col-md-8">
											<input type="text" class="form-control" name="car_code"
												value="" />
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-8">
											<strong>유효 기간</strong>
										</div>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">


											<select class="form-control" id="form-control">
												<option value="">월</option>
												<option value="01">01</option>
												<option value="02">02</option>
												<option value="03">03</option>
												<option value="04">04</option>
												<option value="05">05</option>
												<option value="06">06</option>
												<option value="07">07</option>
												<option value="08">08</option>
												<option value="09">09</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
											</select> <input type="text" id="mm" value="">

										</div>
										<script type="text/javascript">
											$(function() {
												var val = $('#mm');
												$('#form-control')
														.change(
																function() {

																	var target = document
																			.getElementById("form-control");

																	val
																			.val(target.options[target.selectedIndex].text);
																});

											});
										</script>
										<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
											<select class="form-control-y" id="form-control-y">
												<option value="">년</option>
												<option value="2015">2015</option>
												<option value="2016">2016</option>
												<option value="2017">2017</option>
												<option value="2018">2018</option>
												<option value="2019">2019</option>
												<option value="2020">2020</option>
												<option value="2021">2021</option>
												<option value="2022">2022</option>
												<option value="2023">2023</option>
												<option value="2024">2024</option>
												<option value="2025">2025</option>
											</select> 
											<input type="text" id="yyyy" value="">
										</div>
									</div> 
									<script type="text/javascript">
										$(function() {
											var val = $('#yyyy');
											$('#form-control-y')
													.change(
															function() {

																var target = document
																		.getElementById("form-control-y");

																val
																		.val(target.options[target.selectedIndex].text);
															});

										});
									</script>
									<div class="form-group">
										<div class="col-md-8">
											<h4>주의사항</h4>
											<span>신용 카드를 사용하여 지불하여 주십시오.</span>
										</div>
									</div>
								</td>
							</tr>


						</tbody>

						<tfoot>
							<jsp:include page="./moviebookpayfooter.jsp" flush="false" />
						</tfoot>

					</table>
				</div>
			</div>
		</div>
	</form:form>


	<div id="header">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>

</body>

<script type="text/javascript">
	
</script>
</body>
</html>
