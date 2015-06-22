package com.model2.mvc.service.car.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.aop.ThrowsAdvice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;

@Repository("carDao")
public class CarDao {

	// /Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	// /Constructor
	public CarDao() {
		System.out.println(this.getClass());
	}

	// /Method
	public void addCar(Car car) throws Exception {
		System.out.println("CCCCCCCCCCCCCCCC" + car);
		sqlSession.insert("CarMapper.addCar", car);
	}

	public Car getCar(String carNum) throws Exception {
		return sqlSession.selectOne("CarMapper.getCar", carNum);
	}
	
	public Car getCarUser(int userNo) throws Exception {
		return sqlSession.selectOne("CarMapper.getCarUser", userNo);
	}

	public void addOption(CarOption carOption) throws Exception {
		sqlSession.insert("CarMapper.addCarOption", carOption);
	}

	public Car carView(String carNum) throws Exception {
		return sqlSession.selectOne("CarMapper.carView", carNum);
	}

	public CarOption carOption(int carNo) throws Exception {
		return sqlSession.selectOne("CarMapper.carViewOption", carNo);
	}

	// 지워도될부분
	public List<Car> getCarList(Search search) {
		String keyword = search.getSearchKeyword();

		if (search.getSearchKeyword() != null
				&& search.getSearchCondition().equals("1")
				&& search.getSearchKeyword() != "") {
			search.setSearchKeyword("%" + keyword + "%");
		}

		List<Car> list = sqlSession.selectList("CarMapper.getCarList", search);

		search.setSearchKeyword(keyword);

		// Purchase purchase =
		// sqlSession.selectOne("PurchaseMapper.getPurchase2", prodNo);
		return list;
	}

	public int getTotalCount(Search search) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("CarMapper.getTotalCount", search);
	}

	// Auction 부분 자동차 정보 가져오기
	public List<Car> getAuction(int userNo) {
		// TODO Auto-generated method stub
		List<Car> list = sqlSession.selectList("CarMapper.getAuction", userNo);

		return list;
	}

	public List<Car> selectCar(int userNo) {
		// TODO Auto-generated method stub
		System.out.println("s나오재?" + userNo);
		return sqlSession.selectList("CarMapper.selectCar", userNo);
	}

	// 낙찰 후 car테이블의 tran_code 변경
	public void updateCar(int carNo) throws Exception {
		sqlSession.update("CarMapper.updateCar", carNo);
	}

	public Car getCar2(int carNo) throws Exception {
		return sqlSession.selectOne("CarMapper.getCar2", carNo);
	}

	public List<Car> getCarInfo(Map<String, Object> hashMap) throws Exception {
		List<Car> myCarList = sqlSession.selectList("CarMapper.getCarInfo",
				hashMap);
		System.out.println("carDAO :" + myCarList);
		return myCarList;
	}

	public Car getCarInfo2(int carNo) throws Exception {
		return sqlSession.selectOne("CarMapper.getCarInfo2", carNo);
	}

	public CarOption getCarInfo3(int carNo) throws Exception {
		return sqlSession.selectOne("CarMapper.getCarInfo3", carNo);
	}

	public void updateCar2(Car car) throws Exception {
		sqlSession.update("CarMapper.updateCar2", car);
	}

	public void updateOption(CarOption carOption) throws Exception {
		sqlSession.update("CarMapper.updateOption", carOption);
	}
	
	public void deleteAuction(int carNo) throws Exception{
		System.out.println("delete:: auctionNO = " + carNo);
		sqlSession.delete("CarMapper.deleteCarOption", carNo);
		sqlSession.delete("CarMapper.deleteCar",carNo);
		
	}

	//현재까지 등록된 차 수 세기(tran_code=0)
    public int getCarCnt() throws Exception{
    	return sqlSession.selectOne("CarMapper.getCarCnt");
    }
	
}