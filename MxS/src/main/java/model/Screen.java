package model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Screen implements Serializable  {
	private String screenName;
	private Long theaterNum;
	private Long movieNum;
	private Long screenSeat;
	private String seatRow;
	private Long seatCol;
	private String aisle;
	
	
	
	public String getAisle() {
		return aisle;
	}
	public void setAisle(String aisle) {
		this.aisle = aisle;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public Long getTheaterNum() {
		return theaterNum;
	}
	public void setTheaterNum(Long theaterNum) {
		this.theaterNum = theaterNum;
	}
	public Long getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(Long movieNum) {
		this.movieNum = movieNum;
	}
	public Long getScreenSeat() {
		return screenSeat;
	}
	public void setScreenSeat(Long screenSeat) {
		this.screenSeat = screenSeat;
	}
	public String getSeatRow() {
		return seatRow;
	}
	public void setSeatRow(String seatRow) {
		this.seatRow = seatRow;
	}
	public Long getSeatCol() {
		return seatCol;
	}
	public void setSeatCol(Long seatCol) {
		this.seatCol = seatCol;
	}
}