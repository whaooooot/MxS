<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="./css/movie_common.css"  type="text/css">


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript">
	$(function() {
		var rangeDate = 31; // set limit day
		var setSdate, setEdate;
		$("#from").datepicker({
			changeMonth: true, 
	         changeYear: true,
	         nextText: '다음 달',
	         prevText: '이전 달',
			dateFormat : 'yy-mm-dd',
			minDate : 0,
			onSelect : function(selectDate) {
				var stxt = selectDate.split("-");
				stxt[1] = stxt[1] - 1;
				var sdate = new Date(stxt[0], stxt[1], stxt[2]);
				var edate = new Date(stxt[0], stxt[1], stxt[2]);
				edate.setDate(sdate.getDate() + rangeDate);

				$('#to').datepicker('option', {
					minDate : selectDate,
					beforeShow : function() {
						$("#to").datepicker("option", "maxDate", edate);
						setSdate = selectDate;
						console.log(setSdate)
					}
				});
				//to 설정
			}
		//from 선택되었을 때
		});

		//유효성체크
		$("#to").datepicker({
			changeMonth: true, 
	         changeYear: true,
	         nextText: '다음 달',
	         prevText: '이전 달',
			dateFormat : 'yy-mm-dd',
			onSelect : function(selectDate) {
				setEdate = selectDate;
				console.log(setEdate)
			}
		});
		$('#btn_submit').on('click', function(e) {
			if ($('input#from').val() == '') {
				alert('시작일을 선택해주세요.');
				$('input#from').focus();
				return false;
			} else if ($('input#to').val() == '') {
				alert('종료일을 선택해주세요.');
				$('input#to').focus();
				return false;
			}

			var t1 = $('input#from').val().split("-");
			var t2 = $('input#to').val().split("-");
			var t1date = new Date(t1[0], t1[1], t1[2]);
			var t2date = new Date(t2[0], t2[1], t2[2]);
			var diff = t2date - t1date;
			var currDay = 24 * 60 * 60 * 1000;
			if (parseInt(diff / currDay) > rangeDate) {
				alert('로그 조회 기간은 ' + rangeDate + '일을 초과할 수 없습니다.');
				return false;
			}

			alert("성공")
		});
		//조회 버튼 클릭
	});
</script>



<style type="text/css">

</style>


<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div class="container">
		<div class="row">

	<div class="sect-common">

		<div class="sect-finder">
			<h3>
				<img src="" alt="MxS무비파인더" />
			</h3>
			<form id="frmMovieSearch" novalidate="novalidate">
				<fieldset>
					<legend>MxS 무비 파인더 타이틀 이미지</legend>
					<!-- checkbox ID 값과 label for값을 똑같이 한다 -->
					<table cellpadding="0" cellspacing=""
						summary="무비파인터 영화이름, 장르, 제작국가, 관람등급, 제작년도 를 통해 검색할수 있습니다.">

						<colgroup>
							<col class="finder-col01" />
							<col />
						</colgroup>
						<tbody>
							<tr>
								<th class="searchtype" scope="row">영화검색목록</th>
								<td><label class="hidden" for="keyword_type">영화검색목록상세
										목록</label> <select title="영화검색 목록" id="keyword_type">
										<option value="0" selected>전체</option>
										<option value="1">영화제목</option>
										<option value="2">주연배우</option>
										<option value="3">감독</option>
								</select> <input type="text" title="영화검색 키워드입력" id="keyword"
									minlength="2" maxlength="20" style="width: 410px;"
									placeholder="키워드를 입력해 주세요" value="" /></td>
							</tr>
							<tr>
								<th class="genretype" scope="row">장르</th>
								<td>
									<ul>
										<li><input type="checkbox" checked="checked"
											id="all_genre" name="all-genre" value="all" /><label
											for="all_genre">전체</label></li>





										<li><input type="checkbox" id="genre217" name="genre"
											value="217" /><label for="genre217">공포/호러</label></li>

										<li><input type="checkbox" id="genre721" name="genre"
											value="721" /><label for="genre721">SF</label></li>

										<li><input type="checkbox" id="genre1228" name="genre"
											value="1228" /><label for="genre1228">멜로/로맨스</label></li>

										<li><input type="checkbox" id="genre732" name="genre"
											value="732" /><label for="genre732">코미디</label></li>

										<li><input type="checkbox" id="genre727" name="genre"
											value="727" /><label for="genre727">애니메이션</label></li>

										<li><input type="checkbox" id="genre219" name="genre"
											value="219" /><label for="genre219">미스터리</label></li>

										<li><input type="checkbox" id="genre222" name="genre"
											value="222" /><label for="genre222">범죄</label></li>

										<li><input type="checkbox" id="genre725" name="genre"
											value="725" /><label for="genre725">스릴러</label></li>

										<li><input type="checkbox" id="genre224" name="genre"
											value="224" /><label for="genre224">액션</label></li>

										<li><input type="checkbox" id="genre728" name="genre"
											value="728" /><label for="genre728">어드벤처</label></li>

										<li><input type="checkbox" id="genre1888" name="genre"
											value="1888" /><label for="genre1888">역사</label></li>


									</ul>
								</td>
							</tr>

							<tr>
								<th class="gradetype" scope="row">관람등급</th>
								<td>
									<ul>
										<li><input type="checkbox" id="all_grade"
											name="all-grade" value="233" /><label for="all_grade">전체</label></li>

										<li><input type="checkbox" id="grade233" name="grade"
											value="233" /><label for="grade233">전체관람가</label></li>

										<li><input type="checkbox" id="grade230" name="grade"
											value="230" /><label for="grade230">12세 관람가</label></li>

										<li><input type="checkbox" id="grade231" name="grade"
											value="231" /><label for="grade231">15세 관람가</label></li>

										<li><input type="checkbox" id="grade232" name="grade"
											value="232" /><label for="grade232">청소년 관람불가</label></li>


									</ul>
								</td>
							</tr>
							<tr>
								<th class="yeartype" scope="row"><label for="amount1">개봉날짜</label></th>
								<td>
									<div class="date_base_search_wrap">
										<div>시작일</div>
										<div>
											<input type="text" id="from">
										</div>
										<div>~ 종료일</div>
										<div>
											<input type="text" id="to">
										</div>
										<div class="wrap-submit">
											<button type="submit" class="round inred" id="btn_submit">
												<span>검색</span>
											</button>
											<button type="reset" class="round red" id="btn_reset">
												<span>초기화</span>
											</button>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

				</fieldset>
			</form>
		</div>
	</div>

</div>
</div>

</body>
</html>