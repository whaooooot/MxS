package model;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
public class TimeTable implements Serializable{
	String timeStart;
	int theaterNum; 
	int movieNum;  
	String screenName; 
	List<TimeTableScreen> TimeStarts;
	String timeEnd;
	public String getTimeStart() {
		return timeStart;
	}
	public void setTimeStart(String timeStart) {
		this.timeStart = timeStart;
	}
	public int getTheaterNum() {
		return theaterNum;
	}
	public void setTheaterNum(int theaterNum) {
		this.theaterNum = theaterNum;
	}
	public int getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(int movieNum) {
		this.movieNum = movieNum;
	}
	public String getScreenName() {
		return screenName;
	}
	public void setScreenName(String screenName) {
		this.screenName = screenName;
	}
	public List<TimeTableScreen> getTimeStarts() {
		return TimeStarts;
	}
	public void setTimeStarts(List<TimeTableScreen> timeStarts) {
		TimeStarts = timeStarts;
	}
	public String getTimeEnd() {
		return timeEnd;
	}
	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	}
	

}
