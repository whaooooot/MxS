<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!-- This file has been downloaded from Bootsnipp.com. Enjoy! -->
<title>Carousel Rows - Bootsnipp.com</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
/* FONT AWESOME & not necessary for functions */
@import
	url('http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css')
	;

.btn-sq-lg {
	width: 150px !important;
	height: 150px !important;
}

.btn-sq {
	width: 100px !important;
	height: 100px !important;
	font-size: 10px;
}

.btn-sq-sm {
	width: 50px !important;
	height: 50px !important;
	font-size: 10px;
}

.btn-sq-xs {
	width: 25px !important;
	height: 25px !important;
	padding: 2px;
}

.bright {
	float: right;
}

.imgsize {
	width: 100px !important;
	height: 120px !important;
}
</style>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</head>
<body>

	<table class="table table-bordered">


		<tr>
			<td>
				<form action="moviebook" method="get">
				
						<button type="submit" class="btn btn-sq btn-danger">◀<br />	<h4>
								<strong>영화선택</strong>
							</h4>
						</button>
					
				</form>

			</td>

			<!-- <td><img class="imgsize"
				src="http://movie.phinf.naver.net/20131105_185/1383644515842maJk5_JPEG/movie_image.jpg?width=200"
				alt="Image"></td>
			<td>영화: <br /> 영화정보: <br />
			</td>
			<td>극장: <br /> 일시: <br /> 상영관: ${screen.SCREEN_NAME}<br /> 인원: <br /> 좌석명: <br />
				좌석번호: <br />

			</td>

			<td>상품: <br /> 상품금액: <br /> 상품개수: <br />


			</td> -->

			<td>

				<form action="moviebookpay" method="post">
					<div class="bright">
						<button type="submit" class="btn btn-sq btn-danger">
							▶ <br />
							<h4>
								<strong>결제선택</strong>
							</h4>
						</button>
					</div>
				</form>
			</td>
		</tr>



	</table>











	<script type="text/javascript">
		
	</script>
</body>
</html>
