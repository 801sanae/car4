package com.model2.mvc.service.domain;

import java.sql.Date;


public class User {
	
	///Field
	private String userId;
	private int userNo;
	private String userName;
	private String password;
	private String sex;
	
	private Date regDate;
	private String role;
	private String addr;
	
	private String phone;
	private String phone1;
	private String phone2;
	private String phone3;

	
	
	///Constructor
	public User(){
		System.out.println("들어오죠?");
	}

	

	public String getUserId() {
		return userId;
	}



	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public String getUserName() {
		return userName;
	}



	public void setUserName(String userName) {
		this.userName = userName;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getSex() {
		return sex;
	}



	public void setSex(String sex) {
		this.sex = sex;
	}





	public Date getRegDate() {
		return regDate;
	}



	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}



	public String getRole() {
		return role;
	}



	public void setRole(String role) {
		this.role = role;
	}



	public String getAddr() {
		return addr;
	}



	public void setAddr(String addr) {
		this.addr = addr;
	}



	public String getPhone1() {
		return phone1;
	}



	public void setPhone1(String phone1) {
		System.out.println("Phone1값 나오나???" + phone1);
		this.phone1 = phone1;
	}



	public String getPhone2() {
		return phone2;
	}



	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}



	public String getPhone3() {
		return phone3;
	}



	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}




	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone1) {
		this.phone = phone1;
		System.out.println("나오긴 하냐? "+phone1);
	}



	@Override
	public String toString() {
		return "User [userId=" + userId + ", userNo=" + userNo
				+ ", userName=" + userName + ", password=" + password
				+ ", sex=" + sex + ", regDate=" + regDate + ", role=" + role
				+ ", addr=" + addr + ", phone=" + phone + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + "]";
	}
}

	