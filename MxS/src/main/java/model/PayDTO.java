package model;

import java.sql.Timestamp;

public class PayDTO {
	
	private int payNum; //결제번호
	private String payAppr;// 승인번호	
	private String payCard;// 카드번호
	private String payCardcvc; //카드cvc번호
	private String payCarddate; //카드유효기간
	private String payCarddate2; //카드유효기간2
	private String payType;// 카드종류	
	private String payDcpoint;// 할인수단
	private String payDccoupon;// 할인수단2
	private int payPrice; //총 금액
	private int gpayNum; //구매번호
	private int memberNum; //회원번호
	private int bookNum; //예매번호
	

	
	public String getPayCarddate2() {
		return payCarddate2;
	}
	public void setPayCarddate2(String payCarddate2) {
		this.payCarddate2 = payCarddate2;
	}
	public String getPayCardcvc() {
		return payCardcvc;
	}
	public void setPayCardcvc(String payCardcvc) {
		this.payCardcvc = payCardcvc;
	}
	public String getPayCarddate() {
		return payCarddate;
	}
	public void setPayCarddate(String payCarddate) {
		this.payCarddate = payCarddate;
	}
	public int getPayNum() {
		return payNum;
	}
	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}
	public String getPayAppr() {
		return payAppr;
	}
	public void setPayAppr(String payAppr) {
		this.payAppr = payAppr;
	}
	public String getPayCard() {
		return payCard;
	}
	public void setPayCard(String payCard) {
		this.payCard = payCard;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public String getPayDcpoint() {
		return payDcpoint;
	}
	public void setPayDcpoint(String payDcpoint) {
		this.payDcpoint = payDcpoint;
	}
	public String getPayDccoupon() {
		return payDccoupon;
	}
	public void setPayDccoupon(String payDccoupon) {
		this.payDccoupon = payDccoupon;
	}
	public int getPayPrice() {
		return payPrice;
	}
	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}
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
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	
	

	
	
}
