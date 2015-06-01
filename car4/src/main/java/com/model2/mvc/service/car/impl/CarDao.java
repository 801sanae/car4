package com.model2.mvc.service.car.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.domain.CarOption;

@Repository("carDao")
public class CarDao{
	
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	///Constructor
	public CarDao() {
		System.out.println(this.getClass());
	}

	///Method
	public void addCar(Car car) throws Exception {
		sqlSession.insert("CarMapper.addCar", car);
	}
	
	public Car getCar(String carNum) throws Exception {
		return sqlSession.selectOne("CarMapper.getCar", carNum);
	}
	
	public void addOption(CarOption carOption) throws Exception {
		sqlSession.insert("CarMapper.addCarOption", carOption);
	}
	
}