package model;

import java.util.Arrays;
import java.util.Date;

public class Movie {
	private Long movieNum;
	private String movieTitle;
	private String movieGenr;
	private String movieTime;
	private String movieDire;
	private String movieActor;
	private String movieGrade;
	private String movieCon;
	private Date movieDate;
	private Long memberNum;
	private String moviePoster;


	public String getMoviePoster() {
		return moviePoster;
	}
	public void setMoviePoster(String moviePoster) {
		this.moviePoster = moviePoster;
	}
	public Long getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(Long memberNum) {
		this.memberNum = memberNum;
	}
	public Long getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(Long movieNum) {
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
	public String getMovieTime() {
		return movieTime;
	}
	public void setMovieTime(String movieTime) {
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
	public Date getMovieDate() {
		return movieDate;
	}
	public void setMovieDate(Date movieDate) {
		this.movieDate = movieDate;
	}
	
	@Override
	public String toString() {
		return "Movie [movieNum=" + movieNum 
				+ ", movieTitle=" + movieTitle 
				+ ", movieGenr=" + movieGenr 
				+ ", movieTime=" + movieTime
				+ ", movieDire=" + movieDire 
				+ ", movieActor=" + movieActor 
				+ ", movieGrade=" + movieGrade 
				+ ", movieCon=" + movieCon
				+ ", movieDate=" + movieDate 
				+ ", memberNum=" + memberNum 
				+ ", moviePoster=" + moviePoster + "]";
	}
	
	
	
	
	
	
	
	
}
