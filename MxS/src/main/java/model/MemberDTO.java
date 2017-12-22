package model;

import java.util.Date;

public class MemberDTO {
	private int memberNum; // 회원 번호 (PK)
	private String memberName; // 이름
	private String memberGender; // 성별
	private String memberId; // 아이디
	private String memberPw; // 비밀번호
	private String memberPhon; // 전화번호
	private String memberAdrs; // 주소
	private Date memberBirth; // 생년월일
	private String memberEmail; // 이메일
	private String memberSet; // 수신 설정
	private String memberAuth; // 관리자 권한
	
	public int getMemberNum() {
		return memberNum;
	}
	public void setMemberNum(int memberNum) {
		this.memberNum = memberNum;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(String memberGender) {
		this.memberGender = memberGender;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberPhon() {
		return memberPhon;
	}
	public void setMemberPhon(String memberPhon) {
		this.memberPhon = memberPhon;
	}
	public String getMemberAdrs() {
		return memberAdrs;
	}
	public void setMemberAdrs(String memberAdrs) {
		this.memberAdrs = memberAdrs;
	}
	public Date getMemberBirth() {
		return memberBirth;
	}
	public void setMemberBirth(Date memberBirth) {
		this.memberBirth = memberBirth;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberSet() {
		return memberSet;
	}
	public void setMemberSet(String memberSet) {
		this.memberSet = memberSet;
	}
	public String getMemberAuth() {
		return memberAuth;
	}
	public void setMemberAuth(String memberAuth) {
		this.memberAuth = memberAuth;
	}
}
