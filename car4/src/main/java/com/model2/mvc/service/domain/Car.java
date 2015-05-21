package com.model2.mvc.service.domain;

public class Car {

	//Field
	private int carNo;				//자동차일련번호 
	private int carOptionNo;		//자동차상세옵션일련번호
	private String manuCountry;		//제조국 
	private String manuCo;		//제조사
	private int year;			//연식
	private String model;			//모델
	private int carNum;				//차량번호
	private String transmission;	//변속기
	private int mileage;			//주행거리
	private String sell;
	private char accident;			//사고여부
	private String fuel;			//연료
	private String color;			//색상
	private char request;			//전문 평가사
	private int price;				//가격
	private int carYear;			//형식년도
	private int cc;					//배기량
	private String carDetail;		//차량상세글
	

	
	//Constructor
	public Car() {
		// TODO Auto-generated constructor stub
		System.out.println(this.getClass());
	}



	public int getCarNo() {
		return carNo;
	}



	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}



	public int getCarOptionNo() {
		return carOptionNo;
	}



	public void setCarOptionNo(int carOptionNo) {
		this.carOptionNo = carOptionNo;
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



	public int getYear() {
		return year;
	}



	public void setYear(int year) {
		this.year = year;
	}



	public String getModel() {
		return model;
	}



	public void setModel(String model) {
		this.model = model;
	}



	public int getCarNum() {
		return carNum;
	}



	public void setCarNum(int carNum) {
		this.carNum = carNum;
	}



	public String getTransmission() {
		return transmission;
	}



	public void setTransmission(String transmission) {
		this.transmission = transmission;
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



	public char getAccident() {
		return accident;
	}



	public void setAccident(char accident) {
		this.accident = accident;
	}



	public String getFuel() {
		return fuel;
	}



	public void setFuel(String fuel) {
		this.fuel = fuel;
	}



	public String getColor() {
		return color;
	}



	public void setColor(String color) {
		this.color = color;
	}



	public char getRequest() {
		return request;
	}



	public void setRequest(char request) {
		this.request = request;
	}



	public int getPrice() {
		return price;
	}



	public void setPrice(int price) {
		this.price = price;
	}



	public int getCarYear() {
		return carYear;
	}



	public void setCarYear(int carYear) {
		this.carYear = carYear;
	}



	public int getCc() {
		return cc;
	}



	public void setCc(int cc) {
		this.cc = cc;
	}



	public String getCarDetail() {
		return carDetail;
	}



	public void setCarDetail(String carDetail) {
		this.carDetail = carDetail;
	}



	@Override
	public String toString() {
		return "Car [carNo=" + carNo + ", carOptionNo=" + carOptionNo
				+ ", manuCountry=" + manuCountry + ", manuCo=" + manuCo
				+ ", year=" + year + ", model=" + model + ", carNum=" + carNum
				+ ", transmission=" + transmission + ", mileage=" + mileage
				+ ", accident=" + accident + ", fuel=" + fuel + ", color="
				+ color + ", request=" + request + ", price=" + price
				+ ", carYear=" + carYear + ", cc=" + cc + ", carDetail="
				+ carDetail + "]";
	}

	
}
