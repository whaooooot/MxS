package model;

import java.io.Serializable;
import java.util.Date;

public class EventDTO implements Serializable{
	
	private Long eventNo;		// 이벤트 번호
	private Long movieNo;		// 영화 번호
	private String eventTit;	// 이벤트 제목
	private String eventCon;	// 이벤트 내용
	private String eventFile;	// 파일
	private String eventType;	// 이벤트 유형
	private Date eventStt;		// 이벤트 시작 날짜
	private Date eventEnd;		// 이벤트 종료 날짜
	
	public Long getEventNo() {
		return eventNo;
	}
	public void setEventNo(Long eventNo) {
		this.eventNo = eventNo;
	}
	public Long getMovieNo() {
		return movieNo;
	}
	public void setMovieNo(Long movieNo) {
		this.movieNo = movieNo;
	}
	public String getEventTit() {
		return eventTit;
	}
	public void setEventTit(String eventTit) {
		this.eventTit = eventTit;
	}
	public String getEventCon() {
		return eventCon;
	}
	public void setEventCon(String eventCon) {
		this.eventCon = eventCon;
	}
	public String getEventFile() {
		return eventFile;
	}
	public void setEventFile(String eventFile) {
		this.eventFile = eventFile;
	}
	public String getEventType() {
		return eventType;
	}
	public void setEventType(String eventType) {
		this.eventType = eventType;
	}
	public Date getEventStt() {
		return eventStt;
	}
	public void setEventStt(Date eventStt) {
		this.eventStt = eventStt;
	}
	public Date getEventEnd() {
		return eventEnd;
	}
	public void setEventEnd(Date eventEnd) {
		this.eventEnd = eventEnd;
	}


	
}
