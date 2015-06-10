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
	
	public List<Car> selectCar(int userNo) throws Exception;
	
	//낙찰 후 car테이블의 tran_code 변경
	public void updateCar(int carNo) throws Exception;
	
	public Car getCar2(int carNo) throws Exception;

}
