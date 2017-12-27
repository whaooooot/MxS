package model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class TimeTableScreen implements Serializable {
	String timeStart;

	public String getTimeStart() {
		return timeStart;
	}

	public void setTimeStart(String timeStart) {
		this.timeStart = timeStart;
	}

	
}
