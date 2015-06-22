package com.model2.mvc.service.car.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.car.CarService;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;

@Service("carServiceImpl")
public class CarServiceImpl implements CarService {

	// /Field
	@Autowired
	@Qualifier("carDao")
	private CarDao CarDao;

	public void setCarDao(CarDao CarDao) {
		this.CarDao = CarDao;
	}

	// /Constructor
	public CarServiceImpl() {
		System.out.println(this.getClass());
	}

	// /Method
	public void addCar(Car car) throws Exception {
		CarDao.addCar(car);
	}

	public Car getCar(String carNum) throws Exception {
		return CarDao.getCar(carNum);
	}
	public Car getCarUser(int userNo) throws Exception {
		return CarDao.getCarUser(userNo);
	}

	@Override
	public void addOption(CarOption carOption) throws Exception {
		CarDao.addOption(carOption);
	}

	@Override
	public Car carView(String carNum) throws Exception {
		// TODO Auto-generated method stub
		return CarDao.carView(carNum);
	}

	@Override
	public CarOption carViewOption(int carNo) throws Exception {
		// TODO Auto-generated method stub
		return CarDao.carOption(carNo);
	}

	// 지워야될부분
	@Override
	public Map<String, Object> getCarList(Search search) throws Exception {
		List<Car> list = CarDao.getCarList(search);
		int totalCount = CarDao.getTotalCount(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("totalCount", new Integer(totalCount));

		return map;
	}

	// Auction 자동차 정보 가져오기
	@Override
	public List<Car> getAuction(int userNo) throws Exception {
		// TODO Auto-generated method stub

		return CarDao.getAuction(userNo);
	}

	// User정보로 Car받아오는
	@Override
	public List<Car> selectCar(int userNo) throws Exception {
		// TODO Auto-generated method stub
		return CarDao.selectCar(userNo);
	}

	// 낙찰 후 car테이블의 tran_code 변경
	public void updateCar(int carNo) throws Exception {
		CarDao.updateCar(carNo);
	}

	public Car getCar2(int carNo) throws Exception {
		return CarDao.getCar2(carNo);
	}

	public Map<String, Object> getCarListByUserNo(int userNo, Search search)
			throws Exception {

		Map<String, Object> hashMap = new HashMap<String, Object>();
		hashMap.put("search", search);
		hashMap.put("userNo", userNo);
		List<Car> myCarList = CarDao.getCarInfo(hashMap);
		int totalCount = CarDao.getTotalCount(search);

		System.out.println("carServiceImpl - myCarList: " + myCarList);

		Map<String, Object> myCarMap = new HashMap<String, Object>();
		myCarMap.put("myCarList", myCarList);
		myCarMap.put("totalCount", new Integer(totalCount));

		return myCarMap;
	}

	public void updateCar2(Car car) throws Exception {
		CarDao.updateCar2(car);
	}

	public void updateOption(CarOption carOption) throws Exception {
		CarDao.updateOption(carOption);
	}

	// 상훈형님

	public Car getCarInfo2(int carNo) throws Exception {
		return CarDao.getCarInfo2(carNo);
	}

	public CarOption getCarInfo3(int carNo) throws Exception {
		return CarDao.getCarInfo3(carNo);
	}
	
	// 현재까지 등록된 차 수 세기(tran_code=0)
		public int getCarCnt() throws Exception {
			return CarDao.getCarCnt();
		}


	@Override
	public void deleteCar(int carNo) throws Exception {
		CarDao.deleteCar(carNo);
	}

	
}