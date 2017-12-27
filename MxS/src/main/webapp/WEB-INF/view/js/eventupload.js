function writeCheck() {
	var form = document.eventupload;
	if( !form.movieNo.value ) // form 에 있는 movieNo 값이 없을 때 
	{ 
		alert( "영화번호를 적어주세요." ); // 경고창 띄움
		form.movieNo.focus(); // form 에 있는 name 위치로 이동 return;
		}
	
	if( !form.eventTit.value ) 
	{ 
		alert( "이름을 적어주세요." ); 
		form.eventTit.focus();
		}
	
	if( !form.eventCon.value ) 
	{ 
		alert( "내용을 적어주세요." );
		form.eventCon.focus();
		return;
		}
	
	if( !form.eventFile.value ) 
	{ 
		alert( "파일을 첨부해주세요." );
		form.eventFile.focus();
		return;
		}
	
	if( !form.eventType.value ) 
	{ 
		alert( "유형을 선택해주세요." );
		form.eventType.focus();
		return;
		}
	
	if( !form.eventStt.value )
	{
		alert( "시작날짜를 적어주세요." );
		form.eventStt.focus();
		return;
		}
	
	if( !form.eventEnd.value ) 
	{ 
		alert( "끝나는날짜를 적어주세요." );
		form.eventEnd.focus();
		return;
		}
	form.submit();
	}
