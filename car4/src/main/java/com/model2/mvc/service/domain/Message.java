package com.model2.mvc.service.domain;

import java.sql.Date;

public class Message {

	//Field
	private User userNo;				//차사진이랑
	private String contents;			//차량번호
	private Date regDate;		//제조국 
	
	//default Constructor
	public Message() {
		System.out.println(this.getClass());
	}

	public User getUserNo() {
		return userNo;
	}

	public void setUserNo(User userNo) {
		this.userNo = userNo;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	@Override
	public String toString() {
		return "Message [userNo=" + userNo + ", contents=" + contents
				+ ", regDate=" + regDate + "]";
	}
	
	



}
