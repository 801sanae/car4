package com.model2.mvc.service.domain;

import java.sql.Date;


public class Auction {

	//field
	private int auctionNo;			//aution 일련번호
	private String manuCountry;		//제조국
	private String manuCo;			//제조사
	private String model;			//모델
	private String fuel;			//연료타입
	private String transmission;	//수동자동
	private String year;			//연식
	private String mileage;			//주행거리
	private String professor;		//전문가
	private int auctionPrice;		//가격
	private String carDetail;		//상세
	private String title;			//제목
	private User user;			//유저 
	private Date regDate;			//등록일자
	private int successCar;				//낙찰차량
	private int cnt;
	private int bidCnt;
	
	private int su; //리스트 뽑을 때 잠시 이용하는 int
	private String mon;
	
	
	
	public int getSu() {
		return su;
	}


	public void setSu(int su) {
		this.su = su;
	}


	public String getMon() {
		return mon;
	}


	public void setMon(String mon) {
		this.mon = mon;
	}


	//default constructor
	public Auction() {
		System.out.println(this.getClass());
	}


	public int getAuctionNo() {
		return auctionNo;
	}


	public void setAuctionNo(int auctionNo) {
		this.auctionNo = auctionNo;
	}


	public String getManuCountry() {
		return manuCountry;
	}


	public void setManuCountry(String manuCountry) {
		this.manuCountry = manuCountry;
	}


	public String getManuCo() {
		return manuCo;
	}


	public void setManuCo(String manuCo) {
		this.manuCo = manuCo;
	}


	public String getModel() {
		return model;
	}


	public void setModel(String model) {
		this.model = model;
	}


	public String getFuel() {
		return fuel;
	}


	public void setFuel(String fuel) {
		this.fuel = fuel;
	}


	public String getTransmission() {
		return transmission;
	}


	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}


	public String getYear() {
		return year;
	}


	public void setYear(String year) {
		this.year = year;
	}


	public String getMileage() {
		return mileage;
	}


	public void setMileage(String mileage) {
		this.mileage = mileage;
	}


	public String getProfessor() {
		return professor;
	}


	public void setProfessor(String professor) {
		this.professor = professor;
	}


	public int getAuctionPrice() {
		return auctionPrice;
	}


	public void setAuctionPrice(int auctionPrice) {
		this.auctionPrice = auctionPrice;
	}


	public String getCarDetail() {
		return carDetail;
	}


	public void setCarDetail(String carDetail) {
		this.carDetail = carDetail;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public Date getRegDate() {
		return regDate;
	}


	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}


	public int getSuccessCar() {
		return successCar;
	}


	public void setSuccessCar(int successCar) {
		this.successCar = successCar;
	}


	public int getCnt() {
		return cnt;
	}


	public void setCnt(int cnt) {
		this.cnt = cnt;
	}


	public int getBidCnt() {
		return bidCnt;
	}


	public void setBidCnt(int bidCnt) {
		this.bidCnt = bidCnt;
	}


	@Override
	public String toString() {
		return "Auction [auctionNo=" + auctionNo + ", manuCountry="
				+ manuCountry + ", manuCo=" + manuCo + ", model=" + model
				+ ", fuel=" + fuel + ", transmission=" + transmission
				+ ", year=" + year + ", mileage=" + mileage + ", professor="
				+ professor + ", auctionPrice=" + auctionPrice + ", carDetail="
				+ carDetail + ", title=" + title + ", user=" + user
				+ ", regDate=" + regDate + ", successCar=" + successCar
				+ ", cnt=" + cnt + ", bidCnt=" + bidCnt + ", su=" + su
				+ ", mon=" + mon + "]";
	}

}