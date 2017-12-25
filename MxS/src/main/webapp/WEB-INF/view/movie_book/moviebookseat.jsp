<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>예매페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="./css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
</style>
 <link href="./css/storebook.css?ver=2" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
function seat(){
	alert(this.value);
} 
</script>
</head>
<body>
${result}
 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
   
	<div class="container">
		<div class="row">
			<div class="bs-twrapper">
			<br/>
			<div class="bright">
								<a href="javascript:location.reload();" class="btn btn-bordered-success">예매 다시하기</a>
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
							<th colspan="5">인원/좌석</th>					

						</tr>
						<tr>
						
						
							<td>일반 : <br/>
							<input type="button" class="btn btn-app-store" value="1"/>
							<input type="button" class="btn btn-app-store" value="2"/>
							<input type="button" class="btn btn-app-store" value="3"/>
							<input type="button" class="btn btn-app-store" value="4"/>
							<input type="button" class="btn btn-app-store" value="5"/>
							<br/>
							<br/>
								청소년 : 
								
								<br/>
								<input type="button" class="btn btn-app-store" value="1"/>
								<input type="button" class="btn btn-app-store" value="2"/>
								<input type="button" class="btn btn-app-store" value="3"/>
								<input type="button" class="btn btn-app-store" value="4"/>
								<input type="button" class="btn btn-app-store" value="5"/>
								
								<br/>
								<div class="bright">
								<input type="button" class="btn btn-bordered-danger" value="관람할인안내"/>
								</div>
								</td>
							
							<td colspan="2">
							극장 종로  | 2관  | 남은좌석 230/300 <br/>
							<h3>2017.12.08(금) 18:00~20:60 </h3>
							<br/>
							<div class="bright">
								<input type="button" class="btn btn-bordered-danger" value="상영시간변경하기"/>
								</div>

							</td>

						

						</tr>


						<tr>
							<td colspan="2" rowspan="2">
								좌석~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

							</td>
							
							<td colspan="2">
							선택/예매완료/선택불가 이미지
							</td>
						</tr>
						</table>
						<table id = "seattable">
						<tr>
							<td>
								<label>A열</label>
							</td>
							<td>
								<div class="diva1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a1" value="a1" onclick = "seat()"/>
								</div>
							</td>
							<td>
								<div class="diva2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a2" value="a2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a3" value="a3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a4" value="a4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "a5" value="a5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a6" value="a6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a7" value="a7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a8" value="a8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a9" value="a9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a10" value="a10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a11" value="a11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a12" value="a12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a13" value="a13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a14" value="a14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a15" value="a15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "a16" value="a16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a17" value="a17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a18" value="a18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a19" value="a19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="diva20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "a20" value="a20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<label>B열</label>
							</td>
							<td>
								<div class="divb1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b1" value="b1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b2" value="b2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b3" value="b3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b4" value="b4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "b5" value="b5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b6" value="b6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b7" value="b7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b8" value="b8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b9" value="b9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b10" value="b10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b11" value="b11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b12" value="b12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b13" value="b13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b14" value="b14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b15" value="b15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "b16" value="b16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b17" value="b17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b18" value="b18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b19" value="b19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divb20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "b20" value="b20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<label>C열</label>
							</td>
							<td>
								<div class="divc1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c1" value="c1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c2" value="c2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c3" value="c3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c4" value="c4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "c5" value="c5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c6" value="c6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c7" value="c7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c8" value="c8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c9" value="c9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c10" value="c10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c11" value="c11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c12" value="c12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c13" value="c13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c14" value="c14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c15" value="c15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "c16" value="c16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c17" value="c17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c18" value="c18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c19" value="c19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divc20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "c20" value="c20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td colspan = "21">
								<label>출구</label>
							</td>
							<td>
								<label>출구</label>
							</td>
						</tr>
						<tr>
							<td>
								<label>D열</label>
							</td>
							<td>
								<div class="divd1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d1" value="d1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d2" value="d2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d3" value="d3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d4" value="d4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "d5" value="d5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d6" value="d6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d7" value="d7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d8" value="d8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d9" value="d9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d10" value="d10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d11" value="d11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d12" value="d12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d13" value="d13" onclick = "seat()" >
								</div>
							</td>
							<td>
								<div class="divd14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d14" value="d14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d15" value="d15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "d16" value="d16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d17" value="d17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d18" value="d18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d19" value="d19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divd20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "d20" value="d20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<label>E열</label>
							</td>
							<td>
								<div class="dive1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e1" value="e1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e2" value="e2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e3" value="e3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e4" value="e4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "e5" value="e5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e6" value="e6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e7" value="e7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e8" value="e8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e9" value="e9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e10" value="e10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e11" value="e11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e12" value="e12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e13" value="e13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e14" value="e14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e15" value="e15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "e16" value="e16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e17" value="e17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e18" value="e18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e19" value="e19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="dive20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "e20" value="e20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<label>F열</label>
							</td>
							<td>
								<div class="divf1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f1" value="f1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f2" value="f2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f3" value="f3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f4" value="f4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "f5" value="f5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f6" value="f6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f7" value="f7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f8" value="f8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f9" value="f9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f10" value="f10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f11" value="f11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f12" value="f12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f13" value="f13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f14" value="f14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f15" value="f15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "f16" value="f16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f17" value="f17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f18" value="f18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f19" value="f19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divf20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "f20" value="f20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<label>G열</label>
							</td>
							<td>
								<div class="divg1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g1" value="g1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g2" value="g2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g3" value="g3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g4" value="g4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "g5" value="g5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g6" value="g6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g7" value="g7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g8" value="g8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g9" value="g9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g10" value="g10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g11" value="g11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g12" value="g12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g13" value="g13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g14" value="g14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g15" value="g15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "g16" value="g16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g17" value="g17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g18" value="g18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g19" value="g19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divg20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "g20" value="g20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<label>H열</label>
							</td>
							<td>
								<div class="divh1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h1" value="h1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h2" value="h2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h3" value="h3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h4" value="h4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "h5" value="h5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h6" value="h6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h7" value="h7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h8" value="h8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h9" value="h9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h10" value="h10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h11" value="h11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h12" value="h12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h13" value="h13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h14" value="h14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h15" value="h15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "h16" value="h16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h17" value="h17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h18" value="h18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h19" value="h19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divh20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "h20" value="h20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td colspan = "21">
								<label>출구</label>
							</td>
							<td>
								<label>출구</label>
							</td>
						</tr>
						<tr>
							<td>
								<label>I열</label>
							</td>
							<td>
								<div class="divi1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i1" value="i1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i2" value="i2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i3" value="i3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "i4" value="i4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i5" value="i5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i6" value="i6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i7" value="i7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i8" value="i8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i9" value="i9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i10" value="i10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i11" value="i11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i12" value="i12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i13" value="i13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i14" value="i14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i15" value="i15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i16" value="i16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "i17" value="i17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i18" value="i18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i19" value="i19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divi20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "i20" value="i20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<label>J열</label>
							</td>
							<td>
								<div class="divj1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j1" value="j1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j2" value="j2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j3" value="j3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "j4" value="j4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j5" value="j5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j6" value="j6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j7" value="j7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j8" value="j8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j9" value="j9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j10" value="j10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j11" value="j11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j12" value="j12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j13" value="j13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j14" value="j14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j15" value="j15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j16" value="j16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "j17" value="j17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j18" value="j18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j19" value="j19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divj20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "j20" value="j20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<label>K열</label>
							</td>
							<td>
								<div class="divk1" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k1" value="k1" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk2" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k2" value="k2" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk3" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k3" value="k3" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk4" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "k4" value="k4" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk5" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k5" value="k5" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk6" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k6" value="k6" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk7" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k7" value="k7" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk8" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k8" value="k8" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk9" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k9" value="k9" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk10" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k10" value="k10" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk11" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k11" value="k11" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk12" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k12" value="k12" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk13" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k13" value="k13" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk14" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k14" value="k14" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk15" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k15" value="k15" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk16" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k16" value="k16" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk17" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="hidden" id = "k17" value="k17" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk18" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k18" value="k18" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk19" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k19" value="k19" onclick = "seat()" />
								</div>
							</td>
							<td>
								<div class="divk20" style="left: 32px" data-left="32" data-left_zoom="48">
									<input type ="button" id = "k20" value="k20" onclick = "seat()" />
								</div>
							</td>
						</tr>
						</tbody>
						
						<tfoot>
						<jsp:include page="moviebookseatfooter.jsp" flush="false" />
						</tfoot>
												
					</table>
</div>
</div>
</div>



	 <div id="header">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
					
</body>

<script type="text/javascript">
	
</script>
</body>
</html>
