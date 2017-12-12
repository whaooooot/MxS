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
	href="./css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
</style>
 <link href="./css/storebook.css" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="bs-twrapper">
			<br/>
			<div class="bright">
						<input class="btn btn-bordered-primary" type="button"value="상영시간표"/>
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
							<th colspan="2">영화</th>
							<th colspan="2">극장</th>
							<th>날짜</th>
							<th>시간</th>
							<th>상품</th>

						</tr>



						<tr>
						
						
							<td><p><input type="button" class="btn btn-app-store" value="예매율순"/></p></td>
							<td><p><input type="button" class="btn btn-app-store" value="가나다순"/></p></td>
							
							<td colspan="2">
							자주가는 극장<br/>
							
							<a href="#">설정</a> <br/>
							
							자주가는 극장를 등록해주세요.
							</td>
							
							<td rowspan="3"> 
									<dl>
									<dt> 12월</dt>
									<dd><input type="button"value="1"/></dd>
									<dd>2</dd>
									<dd>3</dd>
									<dd>4</dd>
									<dd>5</dd>
									
									<dt> 1월</dt>
									
									<dd>1</dd>
									<dd>2</dd>
									<dd>3</dd>
									<dd>4</dd>
									<dd>5</dd>
									


								</dl>									
							
							</td>
							
							<td rowspan="3">
								3관<br/>
								<input type="button"value="1시"/>10석<br/>
								1관<br/>
								<input type="button"value="2시"/>100석<input type="button"value="1시"/>234석<br/>
							</td>
							
							<td rowspan="3">
							
							 <div class='row'>
    <div class='col-md-12'>
      <div class="carousel slide media-carousel" id="media">
        <div class="carousel-inner">
          <div class="item  active">
            <div class="row">
             <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
                    <h5>어밴져스 텀블러</h5>
                         <small>가격:30000원</small>
                        <p align="center"><a href="#" class="btn btn-primary btn-block">add</a>
                        </p>
              </div>          
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="http://harangmall.kr/web/product/big/201608/333_shop1_652509.jpg"></a>
                    <h5>아이언맨 텀블러</h5>
                         <small>가격:30000원</small>
                        <p align="center"><a href="#" class="btn btn-primary btn-block">add</a>
                        </p>
              </div>
              
            </div>
          </div>
          <div class="item">
            <div class="row">
              <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
                    <h5>어밴져스 텀블러</h5>
                         <small>가격:30000원</small>
                        <p align="center"><a href="#" class="btn btn-primary btn-block">Open</a>
                        </p>
              </div>          
                <div class="col-md-4">
                <a class="thumbnail" href="#"><img alt="" src="http://harangmall.kr/web/product/big/201608/333_shop1_652509.jpg"></a>
                    <h5>아이언맨 텀블러</h5>
                         <small>가격:30000원</small>
                        <p align="center"><a href="#" class="btn btn-primary btn-block">Open</a>
                        </p>
              </div>
              
            </div>
          </div>        
        </div>
        <a data-slide="prev" href="#media" class="left carousel-control"> < </a>
        <a data-slide="next" href="#media" class="right carousel-control"> > </a>
      </div>                          
    </div>
  </div>
  
								
							</td>
							
						

						</tr>


						<tr>
							<td colspan="2" rowspan="2">
								<dl>
									<dd>토르</dd>
									<dd>멘체스터바이더씨</dd>
									<dd>강철비</dd>
									<dd>기억의밤</dd>
									<dd>제이슨본</dd>


								</dl>

							</td>
							
							<td colspan="2">
							<p><input type="button" class="btn btn-app-store" value="전체"/></p>
							</td>
						</tr>
						
						<tr>
							<td><input type="button"value="서울"/></td>
							<td><input type="button"value="강남"/></td>					
						</tr>
						
						</tbody>
						
						<tfoot>
						<!--<jsp:include page="/moviebookfooter.jsp" flush="false" />-->
						</tfoot>
												
					</table>
					
					<input type="date"/>
</div>
</div>
</div>



	
					
</body>

<script type="text/javascript">
	
</script>
</body>
</html>
