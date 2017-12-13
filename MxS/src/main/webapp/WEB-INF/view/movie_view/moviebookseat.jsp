<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>예매페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="../css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
</style>
 <link href="../css/storebook.css?ver=2" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
	<div class="container">
		<div class="row">
			<div class="bs-twrapper">
			<br/>
			<div class="bright">
						<input  class="btn btn-bordered-success" type="button"value="예매다시하기"/>
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
