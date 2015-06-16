package com.model2.mvc.service.domain;

import java.sql.Date;

public class Message {

	//Field
	private User user;			//받는사람		
	private String contents;	//쪽지내용
	private Date regDate;		//날짜			
	private int messageNo;		//메세지넘버
	private String tranCode;	//읽음여부
	private int sendUser;		//보내는사람

	private String temp;//select
	
	public void setTemp(String temp) {
		this.temp = temp;
	}
	
	public String getTemp() {
		return temp;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
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
	public int getMessageNo() {
		return messageNo;
	}
	public void setMessageNo(int messageNo) {
		this.messageNo = messageNo;
	}
	public String getTranCode() {
		return tranCode;
	}
	public void setTranCode(String tranCode) {
		this.tranCode = tranCode;
	}
	public int getSendUser() {
		return sendUser;
	}
	public void setSendUser(int sendUser) {
		this.sendUser = sendUser;
	}
	@Override
	public String toString() {
		return "Message [user=" + user + ", contents=" + contents
				+ ", regDate=" + regDate + ", messageNo=" + messageNo
				+ ", tranCode=" + tranCode + ", sendUser=" + sendUser +"temp:"+temp+"]";
	}
	
	
}
