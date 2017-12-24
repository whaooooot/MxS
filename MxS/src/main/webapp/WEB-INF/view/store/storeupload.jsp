<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<% request.setCharacterEncoding("utf-8"); %>
<script type="text/javascript">
function check_input(){ 
   var form = document.storeadd; 
   var inputs = { 
      'goodsPic' : '상품사진url을 적어주세요.',  
      'goodsName' : '상품이름을 적어주세요.',
      'goodsCon' : '상품정보를 적어주세요.',
      'goodsPri' : '상품가격을 적어주세요.',
      'goodsQuan' : '상품 재고수를 적어주세요.',
      'goodsNote' : '상품 유의사항을 적어주세요.',
      'movieNum' : '영화번호를 적어주세요.',      
   }; 
   var input; 
   for(name in inputs){ 
      input = form[name]; 
      if(!input.value.replace(/^\s+/, '').replace(/\s+$/, '')){ 
         alert(inputs[name]); 
         input.focus(); 
         return; 
      } 
   } 
   form.submit(); 
} 
</script>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>상품등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style type="text/css">
.bright {
	float: right;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>

<link href="./css/storeupload.css?ver=1" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="./js/storeupload.js"></script>


<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
<script type="text/javascript"
	src="http://www.expertphp.in/js/jquery.form.js"></script>
<script>
	function preview_images() {
		var total_file = document.getElementById("images").files.length;
		for (var i = 0; i < total_file; i++) {
			$('#image_preview').append(
					"<div class='col-md-3'><img class='img-responsive' src='"
							+ URL.createObjectURL(event.target.files[i])
							+ "'></div>");
		}
	}
</script>
</head>

<div id="header">
	<jsp:include page="../header.jsp" flush="false" />
</div>

<body>

<hr/>

	<div class="container">
		<div class="row">

			<div class="col-md-12">

				<div class="panel-body">
					<div class="tab-content">
						<div class="tab-pane fade" id="Tabs-Kesatu">
							<div>Tabs Percobaan</div>
						</div>

						<div class="tab-pane fade" id="Tabs-Kedua">
							<div class="row">
								<form action="multiupload.php" method="post"
									enctype="multipart/form-data">
									<div class="col-md-6">
										<input type="file" class="form-control" id="images"
											name="images[]" onchange="preview_images();" multiple />
									</div>
									<div class="col-md-6">
										<input type="submit" class="btn btn-primary"
											name='submit_image' value="Upload Multiple Image" />
									</div>
								</form>
							</div>
							<br> <br>
							<div class="row" id="image_preview"></div>
							<br> <br>
						</div>


						<div class="tab-pane fade in active" id="Tabs-Keempat">
							<!-- disini maksudnya in active yaitu mengaktifkan file yg ditampilkan untuk pertamakali -->
							<div class="col-md-10">
								<form method="POST" action="#">
									<div class="form-group files color">
										<label>사진 파일 업로드</label> <input type="file"
											class="form-control" multiple="">
									</div>

								</form>
							</div>
						</div>

					</div>
				</div>

	</div>
			<form:form name="storeadd" class="well col-sm-10 col-md-10"  action="storeuploadfinish" modelAttribute="storedto" method="POST"  accept-charset="utf-8">
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<label>상품 URL(위파일선택과 둘중하나만)</label> 
						<input name="goodsPic" class="form-control"/><br />					
						<label>상품 이름</label> 
						<input name="goodsName" class="form-control" placeholder="상품이름" type="text"/>
						 <label>상품 정보</label> 
						 <textarea name="goodsCon"  class="form-control"  rows="10" placeholder="상품 정보"> </textarea> 
						<label>상품금액(숫자만)</label> 
						<input name="goodsPri" class="form-control" placeholder="상품금액" type="text"/> 
			
						<label>상품 재고 수</label> 
						<input name="goodsQuan" class="form-control" placeholder="상품수" type="text"/>
						<label>상품 유의사항</label>
						<textarea name="goodsNote"  class="form-control" id="message" name="message"	rows="10"></textarea>
						
						<label>영화번호선택(리스트로변경)</label>
						<input name="movieNum" class="form-control" placeholder="영화번호입력" type="text"/>
						
						<br />
						<div class="bright">
							<input  onclick="check_input()" class="btn btn-primary" value="상품올리기" />						
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


