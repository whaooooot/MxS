<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자주 찾는 질문 고객센터</title>
<link
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<link href="./css/customer.detail.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</head>
<div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
<body>
 


	<div class="container">
		<div class="row">
			<div class="col-detail">
				<div class="customer_top">
					<h2 class="tit">자주찾는 질문</h2>
					<p class="stit">
						회원님들께서 가장 자주하시는 질문을 모았습니다. <br>궁금하신 내용에 대해 검색해보세요.
					</p>
				</div>
				<div class="search_area">
					<input id="searchtext" type="text" class="c_input" title="검색어 입력"
						placeholder="검색어를 입력해 주세요" value="" style="width: 275px;">
					<button type="button" class="round inblack" title="검색하기"
						id="btn_search">
						<span>검색하기</span>
					</button>
					<div class="qu_txt">
						<em>추천검색어 :</em> <span class="first"> <a href="#none">현금영수증</a></span>

						<span class=""><a href="#none">관람권</a></span> <span class=""><a
							href="#none">홈페이지</a></span> <span class=""><a href="#none">예매</a></span>
						<span class=""><a href="#none">환불</a></span>
					</div>
				</div>

				<div class="tabbable">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#tab1" data-toggle="tab"
							title="선택된 탭메뉴">전체</a></li>
						<li class=""><a href="#tab2" data-toggle="tab">예매/관람권</a></li>
						<li class=""><a href="#tab3" data-toggle="tab">멤버쉽</a></li>
						<li class=""><a href="#tab4" data-toggle="tab">할인혜택</a></li>
						<li class=""><a href="#tab5" data-toggle="tab">영화관이용</a></li>
						<li class=""><a href="#tab6" data-toggle="tab">기프트샵</a></li>
						<li class=""><a href="#tab7" data-toggle="tab">홈페이지</a></li>
						<li class=""><a href="#tab8" data-toggle="tab">모바일</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="tab1">1</div>
						<div class="tab-pane" id="tab2">
							<div class="search_result">
								총 <span class="num">29건</span>이 검색되었습니다.
							</div>
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
									<tbody>

										<tr class="first">
											<td>29</td>
											<td>[예매/관람권]</td>
											<td class="txt"><a
												href="/support/faq/detail-view.aspx?idx=737&amp;type=239&amp;searchtext=&amp;page=1">일반
													영화관람권(무비머니)의 사용 기준은 어떻게 되나요?</a></td>
											<td class="num">1890</td>
										</tr>

										<tr class="first">
											<td>28</td>
											<td>[예매/관람권]</td>
											<td class="txt"><a
												href="/support/faq/detail-view.aspx?idx=676&amp;type=239&amp;searchtext=&amp;page=1">삼성페이로(실물
													핸드폰 단말기 인식 시 자동 결제 시스템) 결제가 가능한가요?</a></td>
											<td class="num">11364</td>
										</tr>

										<tr class="first">
											<td>27</td>
											<td>[예매/관람권]</td>
											<td class="txt"><a
												href="/support/faq/detail-view.aspx?idx=675&amp;type=239&amp;searchtext=&amp;page=1">ARS예매
													더이상 이용할 수 없나요?</a></td>
											<td class="num">2669</td>
										</tr>

										<tr class="first">
											<td>26</td>
											<td>[예매/관람권]</td>
											<td class="txt"><a
												href="/support/faq/detail-view.aspx?idx=661&amp;type=239&amp;searchtext=&amp;page=1">예매
													취소를 하였는데 환불이 안된것 같아요</a></td>
											<td class="num">17313</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
						<div class="tab-pane" id="tab3">3</div>
						<div class="tab-pane" id="tab4">4</div>
						<div class="tab-pane" id="tab5">5</div>
						<div class="tab-pane" id="tab6">6</div>
						<div class="tab-pane" id="tab7">7</div>

					</div>
				</div>
				<!--?xml version="1.0" encoding="utf-8"?-->
				<!--    <div class="paging">
         <ul>
            <li class="on"><a title="1 페이지 선택" href=" #pg">1</a></li>
            <li><a
               href="/support/faq/default.aspx?page=2&amp;type=239&amp;searchtext=">2</a>
            </li>
         </ul>
         <button class="btn-paging next" type="button"
            onclick="location='/support/faq/default.aspx?page=2&amp;type=239&amp;searchtext='">다음</button>
         <button class="btn-paging end" type="button"
            onclick="location='/support/faq/default.aspx?page=2&amp;type=239&amp;searchtext='">끝</button>
      </div>
-->
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



	<script type="text/javascript">
		$('#openBtn').click(function() {
			$('#myModal').modal({
				show : true
			})
		});
		$('#myTab a').click(function(e) {
			e.preventDefault();
			$(this).tab('show');
		});

		$(function() {
			$('#myTab a:last').tab('show');
		})
		$("[data-toggle=tooltip]").tooltip();
		$("[data-toggle=popover]").popover();
		$(".alert").delay(200).addClass("in").fadeOut(3500);

		$(".alert").addClass("in").fadeOut(3500);

		$('.typeahead').typeahead(
				{
					source : function(typeahead, query) {
						/* put your ajax call here..
						return $.get('/typeahead', { query: query }, function (data) {
						   return typeahead.process(data);
						});
						 */
						return [ 'alpha', 'beta', 'bravo', 'delta', 'epsilon',
								'gamma', 'zulu' ];
					}
				});
		$("[rel='tooltip']").tooltip();

		$('.thumbnail').hover(function() {
			$(this).find('.caption').slideDown(250); //.fadeIn(250)
		}, function() {
			$(this).find('.caption').slideUp(250); //.fadeOut(205)
		});
	</script>
</body>


 <div id="footer">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
</html>