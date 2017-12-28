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
<link href="./css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
</style>
<link href="./css/storebook.css?ver=2" rel="stylesheet" type="text/css">
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="js/area.js"></script> -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>  
<script type="text/javascript">
	function regana(num){
		$.ajax({
		       url : "movieregana",
		       dataType : "html",
		       type : "post",
		       data : "num=" + num,
		       success : function(result) {
		    	   $(".reganalist").html(result);
			    },
	            error : function(request, status, error) {
	                alert("code:" + request.status + "\n" + "error:" + error);
	             }
		});
	}
	

	modelinfo = new Array(
			 
			new Array(    
			new Array(":::: 2차 분류 선택 ::::" ,-1 )	
			),
			 
			new Array(    
				new Array(":::: 2차 분류 선택 ::::" ,-1 ),
				new Array("강남구", 1),
				new Array("강동구",2),
				new Array("강서구", 3),
				new Array("관악구", 4),
				new Array("광진구", 5),
				new Array("구로구", 6),
				new Array("금천구", 7),
				new Array("노원구", 8),
				new Array("도봉구", 9),
				new Array("동대문구", 10),
				new Array("동작구", 11),
				new Array("마포구", 12),
				new Array("서대문구",13),
				new Array("서초구", 14),
				new Array("성동구", 15),
				new Array("성북구", 16),
				new Array("송파구", 17),
				new Array("양천구", 18),
				new Array("영등포구", 19),
				new Array("용산구", 20),
				new Array("은평구", 21),
				new Array("종로구", 22),
				new Array("중구", 23),
				new Array("중량구", 24),
				new Array("서울전지역", 25)
			),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ),
				new Array("광산구", 1),
				new Array("남구", 2),
				new Array("동구", 3),
				new Array("북구", 4),
				new Array("서구", 5),
				new Array("광주전지역", 6)
			),
			 
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("남구", 1),
				new Array("달서구", 2),
				new Array("달성구", 3),
				new Array("동구", 5),
				new Array("북구", 4),
				new Array("서구", 6),
				new Array("수성구", 11),
				new Array("중구", 7),
				new Array("대구전지역", 8)
			),	
			 
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("대덕구", 1),
				new Array("동구", 2),
				new Array("서구", 3),
				new Array("유성구", 4),
				new Array("중구", 5),
				new Array("대전전지역", 6)
			),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("강서구", 1),
				new Array("금정구", 2),
				new Array("기장군", 3),
				new Array("남구", 4),
				new Array("동구", 5),
				new Array("동래구", 6),
				new Array("부산진구", 7),
				new Array("북구", 8),
				new Array("사상구", 2),
				new Array("사하구", 3),
				new Array("서구", 4),
				new Array("수영구", 5),
				new Array("연제구", 6),
				new Array("영도구", 7),
				new Array("중구", 8),
				new Array("해운대구", 7),
				new Array("부산전지역", 8)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("남구", 1),
				new Array("동구", 2),
				new Array("북구", 3),
				new Array("울진군", 4),
				new Array("중구", 5),
				new Array("울산전지역", 6)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("강화군", 1),
				new Array("계양구", 2),
				new Array("남구", 3),
				new Array("남동구", 4),
				new Array("동구", 5),
				new Array("부평구", 6),
				new Array("서구", 7),
				new Array("연수구", 8),
				new Array("옹진군", 9),
				new Array("중구", 10),
				new Array("인천전지역", 11)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("가평군", 1),
				new Array("고양시 덕양구", 2),
				new Array("고양시 일산동구", 3),
				new Array("고양시 일산서구", 4),
				new Array("과천시", 5),
				new Array("광명시", 6),
				new Array("광주시", 7),
				new Array("구리시", 8),
				new Array("군포시", 9),
				new Array("김포시", 10),
				new Array("남양주시", 11),
				new Array("동두천시", 12),
				new Array("부천시 소사구", 13),
				new Array("부천시 원미구", 14),
				new Array("부천시 오정구", 15),
				new Array("성남시 분당구", 16),
				new Array("성남시 수정구", 17),
				new Array("성남시 중원구", 18),
				new Array("수원시 권선구", 19),
				new Array("수원시 장안구", 20),
				new Array("수원시 팔달구", 21),
				new Array("수원시 영통구", 22),
				new Array("시흥시", 23),
				new Array("안산시 단월구", 24),
				new Array("안산시 상록구", 25),
				new Array("안성시", 26),
				new Array("안양시 동안구", 27),
				new Array("안양시 만안구", 28),
				new Array("양주시", 29),
				new Array("양평군", 30),
				new Array("여주군", 31),
				new Array("연천군", 32),
				new Array("오산시", 33),
				new Array("용인시 기흥구", 34),
				new Array("용인시 수지구", 35),
				new Array("용인시 처인구", 36),
				new Array("의왕시", 37),
				new Array("의정부시", 38),
				new Array("이천시", 39),
				new Array("파주시", 40),
				new Array("평택시", 41),
				new Array("포천시", 42),
				new Array("하남시", 43),
				new Array("화성시", 44),
				new Array("경기도전지역", 45)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("강릉시", 1),
				new Array("고성군", 2),
				new Array("동해시", 3),
				new Array("삼척시", 4),
				new Array("속초시", 5),
				new Array("양구군", 6),
				new Array("양양군", 7),
				new Array("영월군", 8),
				new Array("원주시", 9),
				new Array("인제군", 10),
				new Array("정선군", 11),
				new Array("철원군", 12),
				new Array("춘천시", 13),
				new Array("태백시", 14),
				new Array("평창군", 15),
				new Array("홍천군", 16),
				new Array("화천군", 17),
				new Array("횡성군", 18),
				new Array("강원전지역", 19)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("거제시", 1),
				new Array("거창군", 2),
				new Array("고성군", 3),
				new Array("김해시", 4),
				new Array("남해군", 5),
				new Array("밀양시", 6),
				new Array("사천시", 7),
				new Array("산청군", 8),
				new Array("양산시", 9),
				new Array("의령군", 10),
				new Array("진주시", 11),
				new Array("창녕군", 12),
				new Array("창원시 마산함포구", 13),
				new Array("창원시 마산회원구", 14),
				new Array("창원시 성산구", 15),
				new Array("창원시 의창구", 16),
				new Array("창원시 진해구", 17),
				new Array("통영시", 18),
				new Array("하동군", 19),
				new Array("함안군", 20),
				new Array("함양군", 21),
				new Array("함천군", 22),
				new Array("경남전지역", 23)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("경산시", 1),
				new Array("경주시", 2),
				new Array("고령군", 3),
				new Array("구미시", 4),
				new Array("군위군", 5),
				new Array("김천시", 6),
				new Array("문경시", 7),
				new Array("봉화군", 8),
				new Array("상주시", 9),
				new Array("성주군", 10),
				new Array("양동시", 11),
				new Array("영덕군", 12),
				new Array("영양군", 13),
				new Array("영주시", 14),
				new Array("영천시", 15),
				new Array("예천군", 16),
				new Array("울릉군", 17),
				new Array("울진군", 18),
				new Array("의성군", 19),
				new Array("청도군", 20),
				new Array("청송군", 21),
				new Array("칠곡군", 22),
				new Array("포항시 남구", 23),
				new Array("포항시 북구", 24),
				new Array("경북전지역", 25)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("강진군", 1),
				new Array("고흥군", 2),
				new Array("곡성군", 3),
				new Array("광양시", 4),
				new Array("구례군", 5),
				new Array("나주시", 6),
				new Array("담양군", 7),
				new Array("목포시", 8),
				new Array("무안군", 9),
				new Array("보성군", 10),
				new Array("순천시", 11),
				new Array("신안군", 12),
				new Array("여수시", 13),
				new Array("영광군", 14),
				new Array("영암군", 15),
				new Array("완도군", 16),
				new Array("장성군", 17),
				new Array("장흥군", 18),
				new Array("진도군", 19),
				new Array("함평군", 20),
				new Array("해남군", 21),
				new Array("화순군", 22),
				new Array("전남전지역", 23)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("고창군", 1),
				new Array("군산시", 2),
				new Array("김제시", 3),
				new Array("남원시", 4),
				new Array("무주군", 5),
				new Array("부안군", 6),
				new Array("순창군", 7),
				new Array("완주군", 8),
				new Array("익산시", 9),
				new Array("임실군", 10),
				new Array("장수군", 11),
				new Array("전주시 덕진군", 12),
				new Array("전주시 완산구", 13),
				new Array("정읍시", 14),
				new Array("진안군", 15),
				new Array("전북전지역", 16)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("공주시", 1),
				new Array("금산군", 2),
				new Array("논산시", 3),
				new Array("당진시", 4),
				new Array("보령시", 5),
				new Array("부여군", 6),
				new Array("서산시", 7),
				new Array("서천군", 8),
				new Array("아산시", 9),
				new Array("연기군", 10),
				new Array("예산군", 11),
				new Array("천안시 동남구", 12),
				new Array("천안시 서북구", 13),
				new Array("청양군", 14),
				new Array("태안군", 15),
				new Array("홍성군", 16),
				new Array("계룡시", 17),
				new Array("충남전지역", 18)
				),
				
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("괴산군", 1),
				new Array("단양군", 2),
				new Array("보은군", 3),
				new Array("영동군", 4),
				new Array("옥천군", 5),
				new Array("음성군", 6),
				new Array("제천시", 7),
				new Array("진천군", 8),
				new Array("청원군", 9),
				new Array("청주시 상당구", 10),
				new Array("청주시 흥덕구", 11),
				new Array("충주시", 12),
				new Array("증평군", 13),
				new Array("충북전지역", 14)
				),	
			new Array(
				new Array(":::: 2차 분류 선택 ::::" ,-1 ), 
				new Array("서귀포시", 1),
				new Array("제주시", 2),
				new Array("제주전지역", 3)
				)
		);


	function fillSelectFromArray1(selectCtrl, itemArray, goodPrompt, badPrompt, defaultItem) {
		var i, j;
		var prompt;
		// empty existing items
				for (i = selectCtrl.options.length; i >= 0; i--) {
					selectCtrl.options[i] = null;
				}
				prompt = (itemArray != null) ? goodPrompt : badPrompt;
				if (prompt == null) {
					j = 0;
				} else {
					selectCtrl.options[0] = new Option(prompt);
					j = 1;
				}
				if (itemArray != null) {
					// add new items
					for (i = 0; i < itemArray.length; i++) {
						selectCtrl.options[j] = new Option(itemArray[i][0]);
						if (itemArray[i][1] != null) {
							selectCtrl.options[j].value = itemArray[i][0];
						}
						j++;
					}
					// select first item (prompt) for sub list
					selectCtrl.options[0].selected = true;
				}
	 
	}
	function theaterarea(){
		if(document.getElementById("svSelect").value != ""){
		var theaterAdd1 = document.getElementById("svSelect").value;
		var theaterAdd2 = document.getElementById("WORK_DISTRICT_NAME2").value;
		document.frm1.theaterAdd1.value = theaterAdd1;
		document.frm1.theaterAdd2.value = theaterAdd2;
		}
		$.ajax({
			url : "movietheater",
			dataType : "html",
			type : "post",
			data : "theaterAdd1="+theaterAdd1 + "&theaterAdd2="+theaterAdd2,
			success : function(result) {
		    	   $("#allarea").html(result);
			    },
	            error : function(request, status, error) {
	                alert("code:" + request.status + "\n" + "error:" + error);
	             }
		});
	}
	
 	function theaterDate(){
 			var theaterNum = document.frm1.theaterNum.value;
			var movieNum = document.frm1.movieNum.value;
 		$.ajax({
			url : "movietheaterDate",
			dataType : "html",
			type : "post",
			data : "theaterNum="+theaterNum + "&movieNum="+movieNum,
			beforeSend : function(){
				if(document.frm1.theaterAdd2.value == ""){
						alert("지역을 선택하세요.");
						return false;
					}
					if(document.frm1.movieNum.value == ""){
						alert("영화를 선택하세요.");
						return false;
					} 	
					if(document.frm1.theaterNum.value == ""){
						alert("극장을 선택하세요.");
						return false;
					}
			},
			success : function(result) {
		    	   $("#timescreen").html(result);
		    	   return false;
			    },
	            error : function(request, status, error) {
	                alert("code:" + request.status + "\n" + "error:" + error);
	             }
		});
	 }
 	
</script>
    <script type="text/javascript">
    	function bookyes(){
    		alert("888888");
/*     		if(document.frm1.movieNum.value == "" || document.frm1.movieNum.value == null){
    			alert("영화를 선택하세요 ");
    			return false;
    		}
    		if(document.frm1.theaterNum.value == "" || document.frm1.theaterNum.value == null){
    			alert("극장을 선택하세요");
    			return false;
    		}
    		if(document.frm1.timeStart.value == "" || document.frm1.timeStart.value == null){
    			alert("시간을 선택하세요");
    			return false;
    		}
    		if(document.frm1.screenName.value == "" || document.frm1.screenName.value == null){
    			alert("날짜를 선택하세요");
    			return false;
    		}
    		//document.frm1.submit(); */
    	}
    </script>
</head>

 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>
<form name="frm1" action="moviebookseat" method="post" >
<input type = "hidden" name="theaterAdd1" />
<input type = "hidden" name="theaterAdd2" />
	<div class="container">
		<div class="row">
			<div class="bs-twrapper">
				<br />
				<div class="bright">
					<input class="btn btn-bordered-primary" type="button" value="상영시간표" />
					
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
							<th colspan="2">영화</th>
							<th>지역</th>
							<th>극장</th>
							<th>날짜</th>
							<th>시간</th>
							<th>상품</th>

						</tr>
						<tr>
							<td><p>
									<input type="button" class="btn btn-app-store" value="예매율순" onclick = "regana('1')" />
									
								</p>
							</td>
							<td><p>
									<input type="button" class="btn btn-app-store" value="가나다순" onclick = "regana('2')" />
								</p></td>
							<td><select style="width:230px;" id="svSelect" name="WORK_DISTRICT_NAME1" onChange="fillSelectFromArray1(this.form.WORK_DISTRICT_NAME2,((this.selectedIndex == -1) ? null : modelinfo[this.selectedIndex]));">
								<option value = -1>-- 1차 분류 선택 --</option>
								<option value = 서울특별시  >서울특별시</option>
								<option value = 광주광역시  >광주광역시</option>
								<option value = 대구광역시  >대구광역시</option>
								<option value = 대전광역시  >대전광역시</option>
								<option value = 부산광역시  >부산광역시</option>
								<option value = 울산광역시  >울산광역시</option>
								<option value = 인청광역시 >인청광역시</option>
								<option value = 경기도  >경기도</option>
								<option value = 강원도  >강원도</option>
								<option value = 경상남도  >경상남도</option>
								<option value = 경상북도  >경상북도</option>
								<option value = 전라남도  >전라남도</option>
								<option value = 전라북도  >전라북도</option>
								<option value = 충청남도  >충청남도</option>
								<option value = 충청북도  >충청북도</option>
								<option value = 제주특별자치도  >제주특별자치도</option>
								</select></td>
							<td rowspan="3">
							<!-- 자주가는 극장<br /> <a href="#">설정</a> <br /> 자주가는 극장를 등록해주세요. -->
								<p>
									<input type="button" class="btn btn-app-store" value="전체" />
								</p>
								<div id = "allarea"></div>
								<div id = "changearea"></div>
							</td>
							<td rowspan="3">

							<input type="date" id="date" name = "date" onchange="theaterDate()" />


							</td>
							<td rowspan="3">
							
								<dl id = "timescreen" class = "timescreen">
								</dl>
							</td>

							<td rowspan="3">

								<div class='row'>
									<div class='col-md-12'>
										<div class="carousel slide media-carousel" id="media">
											<div class="carousel-inner">
												<div class="item  active">
													<div class="row">
														<div class="col-md-6">
															<a class="thumbnail" href="#"><img alt=""
																src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
															<h5>어밴져스 텀블러</h5>
															<small>가격:30000원</small>
															<p align="center">
																<a href="#" class="btn btn-primary btn-block">add</a>
															</p>
														</div>
														<div class="col-md-6">
															<a class="thumbnail" href="#"><img alt=""
																src="http://harangmall.kr/web/product/big/201608/333_shop1_652509.jpg"></a>
															<h5>아이언맨 텀블러</h5>
															<small>가격:30000원</small>
															<p align="center">
																<a href="#" class="btn btn-primary btn-block">add</a>
															</p>
														</div>

													</div>
												</div>
												<div class="item">
													<div class="row">
														<div class="col-md-6">
															<a class="thumbnail" href="#"><img alt=""
																src="http://cocommiz.cafe24.com/web/product/small/cocommiz_4712.jpg"></a>
															<h5>어밴져스 텀블러</h5>
															<small>가격:30000원</small>
															<p align="center">
																<a href="#" class="btn btn-primary btn-block">Open</a>
															</p>
														</div>
														<div class="col-md-6">
															<a class="thumbnail" href="#"><img alt=""
																src="http://harangmall.kr/web/product/big/201608/333_shop1_652509.jpg"></a>
															<h5>아이언맨 텀블러</h5>
															<small>가격:30000원</small>
															<p align="center">
																<a href="#" class="btn btn-primary btn-block">Open</a>
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
								<dl class="reganalist">
		
								

								</dl>

							</td>
						</tr>
						
						<tr>
							<td rowspan="2"><select style="width:230px;" class="f_left" name="WORK_DISTRICT_NAME2" id="WORK_DISTRICT_NAME2" size="13" onChange="theaterarea()" >
								
							</select></td>
						</tr>

						
					</tbody>

					<tfoot>
						<jsp:include page="./moviebookfooter.jsp" flush="false" />
					</tfoot>

				</table>
			</div>
		</div>
	</div>



	  <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
	
</form>
</body>

<script type="text/javascript">
theaterarea();
regana('1');
</script>
</body>
</html>
