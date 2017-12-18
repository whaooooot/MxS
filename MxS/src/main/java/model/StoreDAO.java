package model;

import java.util.Date;

public class StoreDAO {
	
	private String GOODS_NUM; //상품번호
	private String GOODS_NAME; //상품이름
	private String GOODS_CON;  //상품내용
	private int GOODS_PRI;   //상품금액
	private int GOODS_QUAN;  //상품재고수
	private String GOODS_NOTE; //상품 유의사항
	private int MEMBER_NUM;      //관리자 회원 번호
	private int MOVIE_NUM;     // 영화번호
	
	
	public StoreDAO(String GOODS_NUM, String GOODS_NAME, String GOODS_CON, int GOODS_PRI,int GOODS_QUAN,String GOODS_NOTE,int MEMBER_NUM,int MOVIE_NUM) {
		this.GOODS_NUM = GOODS_NUM;
		this.GOODS_NAME = GOODS_NAME;
		this.GOODS_CON = GOODS_CON;
		this.GOODS_PRI = GOODS_PRI;
		this.GOODS_QUAN = GOODS_QUAN;
		this.GOODS_NOTE = GOODS_NOTE;
		this.MEMBER_NUM = MEMBER_NUM;
		this.MOVIE_NUM = MOVIE_NUM;
	}
	
	public String getGOODS_NUM() {
		return GOODS_NUM;
	}
	public void setGOODS_NUM(String gOODS_NUM) {
		GOODS_NUM = gOODS_NUM;
	}
	public String getGOODS_NAME() {
		return GOODS_NAME;
	}
	public void setGOODS_NAME(String gOODS_NAME) {
		GOODS_NAME = gOODS_NAME;
	}
	public String getGOODS_CON() {
		return GOODS_CON;
	}
	public void setGOODS_CON(String gOODS_CON) {
		GOODS_CON = gOODS_CON;
	}
	public int getGOODS_PRI() {
		return GOODS_PRI;
	}
	public void setGOODS_PRI(int gOODS_PRI) {
		GOODS_PRI = gOODS_PRI;
	}
	public int getGOODS_QUAN() {
		return GOODS_QUAN;
	}
	public void setGOODS_QUAN(int gOODS_QUAN) {
		GOODS_QUAN = gOODS_QUAN;
	}
	public String getGOODS_NOTE() {
		return GOODS_NOTE;
	}
	public void setGOODS_NOTE(String gOODS_NOTE) {
		GOODS_NOTE = gOODS_NOTE;
	}
	public int getMEMBER_NUM() {
		return MEMBER_NUM;
	}
	public void setMEMBER_NUM(int mEMBER_NUM) {
		MEMBER_NUM = mEMBER_NUM;
	}
	public int getMOVIE_NUM() {
		return MOVIE_NUM;
	}
	public void setMOVIE_NUM(int mOVIE_NUM) {
		MOVIE_NUM = mOVIE_NUM;
	}

}
