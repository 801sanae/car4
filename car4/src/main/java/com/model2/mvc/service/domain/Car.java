package com.model2.mvc.service.domain;

public class Car {

	//Field
	
	private int carNum;				//차량번호
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
	private String accident;			//사고여부
	private String professor;			//전문 평가사
	

	

	
	//Constructor
	public Car() {
		// TODO Auto-generated constructor stub
		System.out.println(this.getClass());
	}





	public int getCarNum() {
		return carNum;
	}





	public void setCarNum(int carNum) {
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





	public String getProfessor() {
		return professor;
	}





	public void setProfessor(String professor) {
		this.professor = professor;
	}





	@Override
	public String toString() {
		return "Car [carNum=" + carNum + ", manuCountry=" + manuCountry
				+ ", manuCo=" + manuCo + ", model=" + model + ", color="
				+ color + ", year=" + year + ", carYear=" + carYear
				+ ", transmission=" + transmission + ", fuel=" + fuel + ", cc="
				+ cc + ", mileage=" + mileage + ", sell=" + sell
				+ ", accident=" + accident + ", professor=" + professor + "]";
	}




	
}
