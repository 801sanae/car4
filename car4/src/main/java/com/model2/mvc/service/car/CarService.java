package com.model2.mvc.service.car;

import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;

public interface CarService {
	public void addCar(Car car) throws Exception;
	public Car getCar(String carNum) throws Exception;
	public void addOption(CarOption carOption) throws Exception;
}
