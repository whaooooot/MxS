package model;

import java.util.Date;

public class MovieDTO extends MemberDTO{
	private int movieNum;
	private String movieTitle;
	private String movieGenr;
	private Date movieTime;
	private String movieDire;
	private String movieActor;
	private String movieGrade;
	private String movieCon;
	private String movieDate;
	private String moviePoster;
	private int memberNum;
	
	
	public int getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(int movieNum) {
		this.movieNum = movieNum;
	}
	public String getMovieTitle() {
		return movieTitle;
	}
	public void setMovieTitle(String movieTitle) {
		this.movieTitle = movieTitle;
	}
	public String getMovieGenr() {
		return movieGenr;
	}
	public void setMovieGenr(String movieGenr) {
		this.movieGenr = movieGenr;
	}
	public Date getMovieTime() {
		return movieTime;
	}
	public void setMovieTime(Date movieTime) {
		this.movieTime = movieTime;
	}
	public String getMovieDire() {
		return movieDire;
	}
	public void setMovieDire(String movieDire) {
		this.movieDire = movieDire;
	}
	public String getMovieActor() {
		return movieActor;
	}
	public void setMovieActor(String movieActor) {
		this.movieActor = movieActor;
	}
	public String getMovieGrade() {
		return movieGrade;
	}
	public void setMovieGrade(String movieGrade) {
		this.movieGrade = movieGrade;
	}
	public String getMovieCon() {
		return movieCon;
	}
	public void setMovieCon(String movieCon) {
		this.movieCon = movieCon;
	}
	public String getMovieDate() {
		return movieDate;
	}
	public void setMovieDate(String movieDate) {
		this.movieDate = movieDate;
	}
	public String getMoviePoster() {
		return moviePoster;
	}
	public void setMoviePoster(String moviePoster) {
		this.moviePoster = moviePoster;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	
	
}
