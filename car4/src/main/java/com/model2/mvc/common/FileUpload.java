package com.model2.mvc.common;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.model2.mvc.service.domain.Car;

public class FileUpload {
	
	private List<MultipartFile> upfile;
	private String imgPath;
	private int imgNum;
	private Car car;
	private int carNo;
	private String carNum;
	
	public FileUpload(){
		System.out.println(this.getClass());
	}
	
	public List<MultipartFile> getUpfile() {
		return upfile;
	}
	public void setUpfile(List<MultipartFile> upfile) {
		this.upfile = upfile;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public int getImgNum() {
		return imgNum;
	}
	public void setImgNum(int imgNum) {
		this.imgNum = imgNum;
	}

	public Car getCar() {
		return car;
	}

	public void setCar(Car car) {
		this.car = car;
	}

	public int getCarNo() {
		return carNo;
	}

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}

	public String getCarNum() {
		return carNum;
	}

	public void setCarNum(String carNum) {
		this.carNum = carNum;
	}
	
	
	
}




