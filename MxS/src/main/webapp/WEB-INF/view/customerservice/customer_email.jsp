<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>이메일 문의 고객센터</title>
<link href="./css/customer.detail.css" rel="stylesheet">
</head>
<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>
<body>
<br/>
<div class="container">
	<div class="row">
		<div class="col-aside">
			<div class="snb">
				<ul>
					<li class=""><a href="customer_service">고객센터 메인<i></i></a></li>
					<li class=""><a href="customer_qna">자주찾는 질문<i></i></a></li>
					<li class=""><a href="customer_notice">공지/뉴스<i></i></a></li>
					<li class="on"><a href="customer_email" title="현재선택">이메일 문의<i></i></a></li>
				</ul>
			</div>
		</div>
		<div class="col-detail">
		<div class="email_list_area">
			<div class="customer_top">
				<h2 class="tit">이메일 문의</h2>
				<p class="stit">
					자주찾는 질문에서 원하는 답변을 찾지 못하셨군요 <br> 
					불편사항이나 문의사항을 남겨주시면 최대한 신속하게 답변드리겠습니다.
				</p>
			</div>
			<form id="form1" name="form1" method="post" action="#" novalidate="novalidate" enctype="multipart/form-data">
				<input type="hidden" id="hIsTemp" name="hIsTemp" value="">
				<input type="hidden" id="hIdx" name="hIdx" value="">
				<fieldset>
					<legend>이메일 문의</legend>
					<div class="tbl_area_e">
						<p class="tbl_info_txt">
							체크(<em><img src="./img/ico_redstar.png" alt="필수"></em>)된 항목은 필수 입력 사항입니다.
						</p>

						<table cellspacing="0" cellpadding="20" class="tbl_notice_list tbl_left">
							<caption>목록</caption>
							<colgroup>
								<col style="width: 140px;">
								<col style="width: 330px;">
							</colgroup>
							<tbody>
								<tr>
									<th scope="row"><label for="inp_name">이름</label></th>
									<td colspan="3"><strong></strong>ㄱㅈㅇ</td>
								</tr>
								<tr>
									<th scope="row">휴대전화</th>
									<td><strong>010-****-2144</strong></td>
										<input type="hidden" id="HiddenMobile1" name="HiddenMobile1" value="9fb356d3073990f6e5ab099b4e2d93a8">
									<th scope="row">이메일</th>
									<td><strong>a.**aa@hanmail.net</strong></td>
										<input type="hidden" id="HiddenEmail1" name="HiddenEmail1" value="e1e5527b0332f31512781b27fd8363862baba02970a527d5">
								</tr>
								<tr class="check_info">
									<td colspan="4">
										<strong>※&nbsp;&nbsp;문의에 대한 빠른 답변을 위해&nbsp;회원 가입 시 입력하신 연락처를 확인해주세요.</strong>
										<a href="#" id="mxs" class="round gray on" title="수정" target="_blank"><span>수정</span></a>
									</td>
								</tr>
								<tr class="check_type">
									<th scope="row">문의유형 <em><img src="./img/ico_redstar.png" alt="필수"></em></th>
									<td>
										<ul class="type_list">
											<li id="li_ra_1" class="on">
												<input type="radio" checked="checked" id="inp_type01" name="sel_qnatype" value="1249">
												<label for="inp_type01">문의</label>
											</li>
											<li id="li_ra_2">
												<input type="radio" id="inp_type02" name="sel_qnatype" value="1250">
												<label for="inp_type02">불만</label>
											</li>
											<li id="li_ra_3">
												<input type="radio" id="inp_type03" name="sel_qnatype" value="1251">
												<label for="inp_type03">칭찬</label>
											</li>
											<li id="li_ra_4">
												<input type="radio" id="inp_type04" name="sel_qnatype" value="1252">
												<label for="inp_type04">제안</label>
											</li>
										</ul>
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="inp_title">제목 <em><img src="./img/ico_redstar.png" alt="필수"></em></label>
									</th>
									<td colspan="3">
										<input type="text" id="inp_title" name="inp_title" class="inp01" style="width: 672px;">
									</td>
								</tr>
								<tr>
									<th scope="row">
										<label for="inp_textbox">내용 <em><img src="./img/ico_redstar.png" alt="필수"></em></label>
									</th>
									<td colspan="3">
										<textarea cols="89" rows="5" id="inp_textbox" name="inp_textbox" class="inp_txtbox01" style="height: 94px !important;"
											placeholder="※주민번호 등 개인정보가 포함되지 않도록 유의하시기 바랍니다." 
											onkeyup="javascript:checkByte(this,5000,'sp_ad_content_size_1', 'sp_ad_content_size_2');"></textarea>
										<p class="byte_info">
											<span id="sp_ad_content_size_1">0</span>/5000BYTE
											<span>(<span id="sp_ad_content_size_2">0</span>/2500자)</span>
										</p>
									</td>
								</tr>
								<tr>
									<th scope="row"><label for="voc_upload_file">첨부파일</label></th>
									<td colspan="3"><input type="file" id="voc_upload_file" name="voc_upload_file" title="voc파일 업로드" size="51"
										onclick="javascript:alert('주민번호 등 개인정보가 포함된 파일이 첨부되지 않도록 유의하시기 바랍니다.');">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="box-btn qna_email">
							<a style="margin-left: 5px" href="customer_service" class="round gray">
								<span style="padding: 0 14px;">취소</span>
							</a>
						<button style="width: 80px" class="round inred" type="submit" id="emailsubmit" onclick="javascript:return Reg();">
							<span>등록하기</span>
						</button>
					</div>
				</fieldset>
			</form>
		</div>
		</div>
	</div>
</div>
</body>
<div id="footer">
	<jsp:include page="../footer.jsp" flush="false" />
</div>
</html>