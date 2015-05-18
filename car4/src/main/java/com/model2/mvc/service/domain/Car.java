package com.model2.mvc.service.domain;

public class Car {

	//Field
	private int carNo;				//자동차일련번호 
	private int carOptionNo;		//자동차상세옵션일련번호
	private String manuCountry;		//제조국 
	private String manuCompany;		//제조
	private String model;			//모델 
	private int carYear;			//연식
	private String transmission;	//변속기
	private String fuel;			//연료
	private int mileage;			//주행거리
	private String color;			//색상
	private int price;				//가격
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

	public String getManuCompany() {
		return manuCompany;
	}

	public void setManuCompany(String manuCompany) {
		this.manuCompany = manuCompany;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
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

	public int getMileage() {
		return mileage;
	}

	public void setMileage(int mileage) {
		this.mileage = mileage;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
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
				+ ", manuCountry=" + manuCountry + ", manuCompany="
				+ manuCompany + ", model=" + model + ", carYear=" + carYear
				+ ", transmission=" + transmission + ", fuel=" + fuel
				+ ", mileage=" + mileage + ", color=" + color + ", price="
				+ price + ", cc=" + cc + ", carDetail=" + carDetail + "]";
	}

}
