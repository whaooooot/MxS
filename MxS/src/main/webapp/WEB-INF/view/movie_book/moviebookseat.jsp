<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
 <link href="./css/storebook.css?ver=2" rel="stylesheet" type="text/css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">


function chk(val, z) {//좌석클릭한 값 input에 출력
	
    var seatSet = document.getElementById("chk3").value;
	alert(seatSet);
    var idx = seatSet.indexOf(val);
    var z = parseInt(z);
    
    
    if(idx == -1){
       document.getElementById("seatSet").value += "/" +val;
       $("#chk"+z).css("background-color", "yellow");
       
    }else{
          seatSet = seatSet.replace("/"+val, "");
          document.getElementById("seatSet").value = seatSet;
          $("#chk"+z).css("background-color", "gray");
    }
    
    
 }
 
function seatSel(val) {
		 //인원ㅇ클릭한 값 input에 출력
		document.frm.adult.value=val;
		document.frm.totalperson.value=val+ Number(document.frm.kid.value);
}		    
function kidSel(val) {
	 //인원ㅇ클릭한 값 input에 출력
	document.frm.kid.value=val;
	document.frm.totalperson.value=val + Number(document.frm.adult.value); 
}	      



</script>
</head>
<body>

<form name="frm" method="post"   action="#">
 <div id="header">
      <jsp:include page="../header.jsp" flush="false" />
   </div>
   
	<div class="container">
		<div class="row">
			<div class="bs-twrapper">
			<br/>
			<div class="bright">
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
							<th colspan="5">인원/좌석</th>					

						</tr>
						<tr>
						
						
							<td>일반 : <br/>
							<input type="button" class="btn btn-app-store" name="seatSel1" value="1" onClick="javascript:seatSel(1);"/>
							<input type="button" class="btn btn-app-store" name="seatSel2" value="2" onClick="javascript:seatSel(2);"/>
							<input type="button" class="btn btn-app-store" name="seatSel3" value="3" onClick="javascript:seatSel(3);"/>
							<input type="button" class="btn btn-app-store" name="seatSel4" value="4" onClick="javascript:seatSel(4);"/>
							<input type="button" class="btn btn-app-store" name="seatSel5" value="5" onClick="javascript:seatSel(5);"/>
							<input type="text" name="adult" >
							<br/>
							<br/>
								어린이 : 
								
								<br/>
								<input type="button" class="btn btn-app-store" name="seatSel11" value="1" onClick="kidSel(1);"/>
								<input type="button" class="btn btn-app-store" name="seatSel12"  value="2" onClick="kidSel(2);"/>
								<input type="button" class="btn btn-app-store" name="seatSel13" value="3" onClick="kidSel(3);"/>
								<input type="button" class="btn btn-app-store" name="seatSel14" value="4" onClick="kidSel(4);"/>
								<input type="button" class="btn btn-app-store" name="seatSel15" value="5" onClick="kidSel(5);"/>
								<input type="text" name="kid" >
								<input type="text" name="totalperson" />
								<br/>
								<div class="bright">
								<input type="button" class="btn btn-bordered-danger" value="관람할인안내"/>
								</div>
								</td>
							
							<td colspan="2">
                     
                     <c:forEach var = "time" items="${result}">
                     <h3>상영시간 : ${time.TIME_START}
					~ ${time.TIME_END}

                     </h3>
               </c:forEach>
							<br/>
							<div class="bright">
								<input type="button" class="btn btn-bordered-danger" value="상영시간변경하기"/>
								</div>

							</td>
						</tr>
						</table>
						<table>
							<div id="area"><!-- 좌석뿌리기 -->

						

						</div>
						</tbody>
						
						<tfoot>
						<jsp:include page="moviebookseatfooter.jsp" flush="false" />
						</tfoot>
												
					</table>
		</div>
	</div>
</div>

좌석<input type="text" id="seatSet">

	 <div id="header">
      <jsp:include page="../footer.jsp" flush="false" />
   </div>
	</form>				
</body>

<script type="text/javascript">
function rowCol1(){//통로반영
	  var aisle= "${result1.aisle}";
	  //alert(aisle);
	  
	  var tag = "<table border='1' align='center'>";
	  var row = ${result1.seatRow};
	  var col = ${result1.seatCol};
	  var z= 1;

	  
 	  for(var r =1; r<=row; r++){
 	      tag += "<tr>";
		  for(var c=1; c<=col; c++){
			  var rc = c + "." + r;
			  if(aisle.indexOf(rc) == -1 ){
				  tag += "<td><input onClick='chk(this.value,"+z+");' class='chk' id='chk"+z+"' name='chk[]' type='button' type='button' id='seaterer' value="+r+"."+c+"></td>";
			  }else{			
				  //alert(rc);
			  	  tag += "<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>";
			  	z++;
			  }
			  
		  }tag += "</tr>";
	  }
	  tag += "</table>";
	  $("#area").html(tag);
	  

}

rowCol1();
</script>
</body>
</html>
