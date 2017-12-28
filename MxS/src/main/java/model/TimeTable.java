package model;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
public class TimeTable implements Serializable{
	String TimeStart;
	int theaterNum; 
	int movieNum;  
	String screenName; 
	List<TimeTableScreen> TimeStarts;
	String timeEnd;

	public List<TimeTableScreen> getTimeStarts() {
		return TimeStarts;
	}
	public void setTimeStarts(List<TimeTableScreen> timeStarts) {
		TimeStarts = timeStarts;
	}
	public String getTimeStart() {
		return TimeStart;
	}
	public void setTimeStart(String timeStart) {
		TimeStart = timeStart;
	}
	public int gettheaterNum() {
		return theaterNum;
	}
	public void settheaterNum(int theaterNum) {
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
	public String getTimeEnd() {
		return timeEnd;
	}
	public void setTimeEnd(String timeEnd) {
		this.timeEnd = timeEnd;
	} 
}
