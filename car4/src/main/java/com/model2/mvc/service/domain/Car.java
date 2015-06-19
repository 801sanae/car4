package com.model2.mvc.service.domain;

import java.util.Date;



public class Car {

	//Field
	private int carNo;				//차사진이랑
	private String carNum;			//차량번호
	private String manuCountry;		//제조국 
	private String manuCo;			//제조사
	private String model;			//모델
	private String color;			//색상
	private int year;				//연식
	private int carYear;			//형식년도
	private String transmission;	//변속기
	private String fuel;			//연료
	private int cc;					//배기량
	private int mileage;			//주행거리
	private String sell;			//판매구분
	private String accident;		//사고여부	
	private User user;			//User값
	private String tranCode;	//낙찰진행상태
	private String info;
	//default Constructor
	public Car() {
		System.out.println(this.getClass());
	}
	
	

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}
	
	public int getCarNo() {
		return carNo;
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public int getCarYear() {
		return carYear;
	}

	public void setCarYear(int carYear) {
		this.carYear = carYear;
	}

	public String getTransmission() {
		return transmission;
	}

	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}

	public String getFuel() {
		return fuel;
	}

	public void setFuel(String fuel) {
		this.fuel = fuel;
	}

	public int getCc() {
		return cc;
	}

	public void setCc(int cc) {
		this.cc = cc;
	}

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public String getSell() {
		return sell;
	}

	public void setSell(String sell) {
		this.sell = sell;
	}

	public String getAccident() {
		return accident;
	}

	public void setAccident(String accident) {
		this.accident = accident;
	}


	public String getTranCode() {
		return tranCode;
	}


	public void setTranCode(String tranCode) {
		this.tranCode = tranCode;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}



	public String getInfo() {
		return info;
	}



	public void setInfo(String info) {
		this.info = info;
	}



	@Override
	public String toString() {
		return "Car [carNo=" + carNo + ", carNum=" + carNum + ", manuCountry="
				+ manuCountry + ", manuCo=" + manuCo + ", model=" + model
				+ ", color=" + color + ", year=" + year + ", carYear="
				+ carYear + ", transmission=" + transmission + ", fuel=" + fuel
				+ ", cc=" + cc + ", mileage=" + mileage + ", sell=" + sell
				+ ", accident=" + accident + ", user=" + user + ", tranCode="
				+ tranCode + ", info=" + info + "]";
	}






}
