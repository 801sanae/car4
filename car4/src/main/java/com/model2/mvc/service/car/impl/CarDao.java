package com.model2.mvc.service.car.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Car;



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
		System.out.println("AddUserDAO나와라" + car);
		sqlSession.insert("UserMapper.addUser", car);
	}
}