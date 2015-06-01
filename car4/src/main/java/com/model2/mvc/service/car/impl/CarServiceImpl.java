package com.model2.mvc.service.car.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;



@Service("carServiceImpl")
public class CarServiceImpl implements CarService{
	
	///Field
	@Autowired
	@Qualifier("carDao")
	private CarDao CarDao;
	public void setCarDao(CarDao CarDao) {
		this.CarDao = CarDao;
	}
	
	///Constructor
	public CarServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addCar(Car car) throws Exception {
		CarDao.addCar(car);
	}
	
	public Car getCar(String carNum) throws Exception {
		return CarDao.getCar(carNum);
	}

	@Override
	public void addOption(CarOption carOption) throws Exception {
		CarDao.addOption(carOption);
	}
}