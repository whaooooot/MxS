package model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Screen  implements Serializable{
	String screenName;
	int theaterNum;
	int movieNum;
	int screenSeat;
	String seatRow;
	int seatCol;
	String aisle; 
	
	public String getAisle() {
		return aisle;
	}
	public void setAisle(String aisle) {
		this.aisle = aisle;
	}
	public int getTheaterNum() {
		return theaterNum;
	}
	public void setTheaterNum(int theaterNum) {
		this.theaterNum = theaterNum;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	
	public int getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(int movieNum) {
		this.movieNum = movieNum;
	}
	public int getScreenSeat() {
		return screenSeat;
	}
	public void setScreenSeat(int screenSeat) {
		this.screenSeat = screenSeat;
	}
	public String getSeatRow() {
		return seatRow;
	}
	public void setSeatRow(String seatRow) {
		this.seatRow = seatRow;
	}
	public int getSeatCol() {
		return seatCol;
	}
	public void setSeatCol(int seatCol) {
		this.seatCol = seatCol;
	}
}
