package com.model2.mvc.service.car;

import java.util.List;
import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;

public interface CarService {
	public void addCar(Car car) throws Exception;
	public Car getCar(String carNum) throws Exception;
	public void addOption(CarOption carOption) throws Exception;
	public Car carView(String carNum) throws Exception;
	public CarOption carViewOption(int carNo) throws Exception;
	//지워도될부분
	public Map<String,Object> getCarList(Search search) throws Exception;
	
	//Auction GetCar
	public List<Car> getAuction(int userNo) throws Exception;
	
	public Car selectCar(int userNo) throws Exception;

}
