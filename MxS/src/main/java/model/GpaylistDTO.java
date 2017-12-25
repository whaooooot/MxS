package model;

import java.sql.Timestamp;

public class GpaylistDTO {
	
	private int gpayNum; //구매번호
	private int memberNum;// 회원 번호
	private int goodsNum; // 상품번호
	private int goodsOptnum; //옵션번호
	private int goodsAmount; //구매 수
	private int gplistPrice; //구매금액
	private Timestamp gplistDay; //구매 날짜
	
	public int getGpayNum() {
		return gpayNum;
	}
	public void setGpayNum(int gpayNum) {
		this.gpayNum = gpayNum;
	}
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public int getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}
	public int getGoodsOptnum() {
		return goodsOptnum;
	}
	public void setGoodsOptnum(int goodsOptnum) {
		this.goodsOptnum = goodsOptnum;
	}

	public int getGoodsAmount() {
		return goodsAmount;
	}
	public void setGoodsAmount(int goodsAmount) {
		this.goodsAmount = goodsAmount;
	}
	public int getGplistPrice() {
		return gplistPrice;
	}
	public void setGplistPrice(int gplistPrice) {
		this.gplistPrice = gplistPrice;
	}
	public Timestamp getGplistDay() {
		return gplistDay;
	}
	public void setGplistDay(Timestamp gplistDay) {
		this.gplistDay = gplistDay;
	}

}
