package model;

import java.io.Serializable;
import java.util.Date;

public class EventDTO implements Serializable{
	private Long eventNo;
	private Long movieNo;
	private String eventTit;
	private String eventCon;
	private String eventHead;
	private String eventFile;
	private String eventType;
	private Date eventStt;
	private Date eventEnd;
	
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
	public String getEventHead() {
		return eventHead;
	}
	public void setEventHead(String eventHead) {
		this.eventHead = eventHead;
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
