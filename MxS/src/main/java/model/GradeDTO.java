package model;

public class GradeDTO {
	int scoreNum; // 평점 번호 (PK)
	int movieNum; // 영화 번호 (PK-FK)
	String scoreCon; // 평점 내용
	int scoreQuan; // 평점 별 개수
	int memberNum; // 회원 번호 (FK)
	
	
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
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}

}
