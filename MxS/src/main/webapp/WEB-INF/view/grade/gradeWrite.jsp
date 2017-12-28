<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� �ۼ�</title>
<style type="text/css">
.mygrade-cont{
	vertical-align: center;
	text-align: center;
}
.box-image img{
	border-radius: 100px;
	width: 80px;
}

.popwrap h1 {
    margin: 0px;
    padding: 15px 0 15px 10px;
    background-color: rgba(56, 56, 56, 1);
    color: #ececea;
    font-size: 25px;
}

.movietit, .likebox-inner{
	padding: 20px;
}

spna.txt{
	color: #af3535;
}

.rbox{
	width: 600px;
}
span.count{
	float: right;
}

.btn-close{
	width: 16px;
	height: 16px;
	float: right;
    margin-top: -300px;
    margin-right: -120px;
    border: none;
    background: none;
    background-image: url(./img/392517-16.png);
    background-repeat: no-repeat;
}

button#regBtn{
	float: right;
    margin-right: -120px;
    margin-top: 70px;
}
</style>
</head>
<% String movie = request.getParameter("movieNum"); %>
<body>
<!-- ���� �ۼ� -->
	<div class="layer-wrap" style="position: fixed;" tabindex="0"><div class="layer-contents on-shadow" style="width:710px;">
		<div class="popup-general">
		<form:form name="gradeAdd" class="well col-sm-10 col-md-10"  action="gradeWriteComplete" modelAttribute="gradedto" method="POST"  accept-charset="utf-8">
			<div class="popwrap">
				<h1>�����ۼ�</h1>
				<div class="pop-contents write-mygrade">
					<div class="mygrade-cont">
						<div class="movietit"><strong id="regTitle">��ȭ ����</strong></div>
						<div class="likeornot">
							<div class="writerinfo">
								<div class="box-image">
									<span class="thumb-image">   
										<img id="regMoviePro" src="http://img.cgv.co.kr/R2014/images/common/default_profile.gif" alt="����� ������" onerror="errorImage(this, {'type':'profile'})">
                                        <span class="profile-mask"></span>
									</span>
								</div>
								<span class="round red on"><span class="position"><em class="see">�ǰ�����</em></span></span>
								<span class="writer-name" id="regUserName"></span>
							</div>

							<div class="likebox t1 on" id="defaultEggPoint">
								<div class="likebox-inner">
									<label for="likeornot1-1">
											<input type="radio" name="scoreQuan" id="likeornot1-1" value="1" checked="checked">
										<span class="txt">��</span>
									</label>
									<label for="likeornot1-2">
											<input type="radio" name="scoreQuan" id="likeornot1-2" value="2">
										<span class="txt">�ڡ�</span>
									</label>
									<label for="likeornot1-3">
											<input type="radio" name="scoreQuan" id="likeornot1-3" value="3">
										<span class="txt">�ڡڡ�</span>
									</label>
									<label for="likeornot1-4">
											<input type="radio" name="scoreQuan" id="likeornot1-4" value="4">
										<span class="txt">�ڡڡڡ�</span>
									</label>
									<label for="likeornot1-5">
											<input type="radio" name="scoreQuan" id="likeornot1-5" value="5">
										<span class="txt">�ڡڡڡڡ�</span>
									</label>
								</div>
							</div>
						<!-- <div class="likebox t2" id="notEggPoint">
								<div class="likebox-inner">
									<label for="likeornot1-2">
										<span class="egg-icon">
											<input type="radio" name="likeornot1" id="likeornot1-2" value="1">
										</span>
										<span class="txt">�� ���ο����</span>
									</label>
								</div>
							</div> -->
						</div>

						<div class="textbox">
							<!--
                            <textarea cols="" rows="" id="textReviewContent"></textarea>
                            -->
                            <textarea id="textReviewContent" name="scoreCon" title="��ȭ���� �Է�" cols="70" rows="2" maxlength="140" placeholder="���Ģ�� ��߳��� �Խù��� �ǴܵǴ� ���� ���� ��ġ�� ���� �� �ֽ��ϴ�."
                            onkeyup="javascript:javascript:checkByte();"></textarea>
						</div>

						<div class="footbox">
							<span class="role">
								<!-- <a id="viewpopup" title="��â" href="javascript:void(0);" target="_blank">���Ģ <img src="http://img.cgv.co.kr/R2014/images/common/ico/ico-question-mark.png" alt="?"></a> -->
							</span>
							
							<div class="rbox">
								<!-- <span class="count"><strong id="text_count">0</strong>/140</span> -->
								<!-- <button type="button" class="round red on" id="regBtn"><span>�ۼ��Ϸ�!</span></button> -->
							</div>
						</div>
					</div>		
				</div>
				
					<button type="button" class="btn-close" id="regLayerClose" onclick="javascript:history.back();"></button>
						<input type=hidden name="movieNum" value="<%= movie %>">
					<input type="submit" value="�ۼ��Ϸ�!">
				
			</div></form:form>
		</div>
	</div>
</div>
</body>
</html>