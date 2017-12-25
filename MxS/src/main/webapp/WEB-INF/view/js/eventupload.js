function writeCheck() {
	var form = document.writeform;
	if( !form.eventTit.value ) // form 에 있는 eventTit 값이 없을 때 
	{ 
		alert( "이름을 적어주세요" ); // 경고창 띄움
		form.eventTit.focus(); // form 에 있는 name 위치로 이동 return;
		}
	
	if( !form.eventCon.value ) 
	{ 
		alert( "내용을 적어주세요" );
		form.eventCon.focus();
		return;
		}
	
	if( !form.eventStt.value )
	{
		alert( "시작날짜를 적어주세요" );
		form.eventStt.focus();
		return;
		}
	if( !form.eventEnd.value ) 
	{ 
		alert( "끝나는날짜를 적어주세요" );
		form.eventEnd.focus();
		return;
		}
	form.submit();
	}
