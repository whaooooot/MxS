package model;

import java.sql.Date;

public class GradeDTO extends MovieDTO{
	private int scoreNum; // 평점 번호 (PK)
	private int movieNum; // 영화 번호 (PK-FK)
	private String scoreCon; // 평점 내용
	private int scoreQuan; // 평점 별 개수
	private Date scoreDate; // 등록일
	private int memberNum; // 회원 번호 (FK)

	private String pType; // 탭타입
	
	public int getScoreNum() {
		return scoreNum;
	}
	public void setScoreNum(int scoreNum) {
		this.scoreNum = scoreNum;
	}
	public int getMovieNum() {
		return movieNum;
	}
	public void setMovieNum(int movieNum) {
		this.movieNum = movieNum;
	}
	public String getScoreCon() {
		return scoreCon;
	}
	public void setScoreCon(String scoreCon) {
		this.scoreCon = scoreCon;
	}
	public int getScoreQuan() {
		return scoreQuan;
	}
	public void setScoreQuan(int scoreQuan) {
		this.scoreQuan = scoreQuan;
	}
	public Date getScoreDate() {
		return scoreDate;
	}
	public void setScoreDate(Date scoreDate) {
		this.scoreDate = scoreDate;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

	
	
	public String getpType() {
		return pType;
	}
	public void setpType(String pType) {
		this.pType = pType;
	}
}
