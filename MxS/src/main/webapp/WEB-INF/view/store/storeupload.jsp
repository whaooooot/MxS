<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
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

			<form class="well col-sm-10 col-md-10">
				<div class="row">
					<div class="col-sm-12 col-md-12">
						<label>상품 URL(위파일선택과 둘중하나만)</label> <input class="form-control"
							placeholder="상품 URL" type="text">
						<label>상품 이름</label> <input class="form-control"
							placeholder="상품이름" type="text"> <label>상품 간단
							정보(15자이하)</label> <input class="form-control" placeholder="상품간단정보(15자이하)"
							type="text"> <label>상품금액(숫자만)</label> <input
							class="form-control" placeholder="상품금액" type="text"> <label>상품옵션1(색상)(,로
							구분)</label> <input class="form-control" placeholder="상품옵션" type="text">
						<label>상품옵션2(크기)(,로 구분)</label> <input class="form-control"
							placeholder="상품옵션" type="text"> <label>상품 수</label> <input
							class="form-control" placeholder="상품수" type="text"> <label>상품상세정보</label>
						<textarea class="form-control" id="message" name="message"
							rows="10"></textarea>
						<br />
						<div class="bright">
							<button class="btn btn-primary" type="submit">상품 올리기</button>
						</div>


					</div>

				</div>
			</form>

		</div>
	</div>


	<div id="footer">
		<jsp:include page="../footer.jsp" flush="false" />
	</div>




</body>
</html>


