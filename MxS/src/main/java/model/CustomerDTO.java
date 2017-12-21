package model;

import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("serial")
public class CustomerDTO implements Serializable{
	private int boardNum; // 게시물 번호 (PK)
	private String boardCon; // 게시물 내용
	private String boardTitle; // 게시물 제목
	private int readCount; // 조회수
	private Date boardDate; // 게시물 등록 일시
	private String boardFile; // 파일
	private String boardHead; // 말머리
	private String boardType; // 유형
	private int boardLevel; // 하위 메뉴 -- 답변
	private int memberNum; // 회원 번호 (FK)
	
	private String tabType; // 탭타입
	
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public String getBoardCon() {
		return boardCon;
	}
	public void setBoardCon(String boardCon) {
		this.boardCon = boardCon;
	}
	public String getBoardTitle() {
		return boardTitle;
	}
	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public Date getBoardDate() {
		return boardDate;
	}
	public void setBoardDate(Date boardDate) {
		this.boardDate = boardDate;
	}
	public String getBoardFile() {
		return boardFile;
	}
	public void setBoardFile(String boardFile) {
		this.boardFile = boardFile;
	}
	public String getBoardHead() {
		return boardHead;
	}
	public void setBoardHead(String boardHead) {
		this.boardHead = boardHead;
	}
	
	public String getBoardType() {
		return boardType;
	}
	public void setBoardType(String boardType) {
		this.boardType = boardType;
	}
	public int getBoardLevel() {
		return boardLevel;
	}
	public void setBoardLevel(int boardLevel) {
		this.boardLevel = boardLevel;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	
	public String getTabType() {
		return tabType;
	}
	public void setTabType(String tabType) {
		this.tabType = tabType;
	}
}
