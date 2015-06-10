package com.model2.mvc.service.user.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.User;



@Repository("userDao")
public class UserDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public UserDao() {
		System.out.println(this.getClass());
	}

	///Method
	public void addUser(User user) throws Exception {
		System.out.println("AddUserDAO나와라" + user);
		sqlSession.insert("UserMapper.addUser", user);
	}

	public User getUser(String userId) throws Exception {
		return sqlSession.selectOne("UserMapper.getUser", userId);
	}
	
	public User getCheck(String userId) throws Exception {
		System.out.println("UserDao이다"+userId);
		return sqlSession.selectOne("UserMapper.getCheck", userId);
	}
	
	public void updateUser(User user) throws Exception {
		sqlSession.update("UserMapper.updateUser", user);
	}

	public List<User> getUserList(Search search) throws Exception {
		return sqlSession.selectList("UserMapper.getUserList", search);
	}

	public User findUserId(User user) throws Exception {
		System.out.println("DAO User"+user);
		return sqlSession.selectOne("UserMapper.findUserId", user);
	}
	
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("UserMapper.getTotalCount", search);
	}
	
	public void updatePassword(User user)throws Exception{
		sqlSession.update("UserMapper.updatePassword", user);
	}
	
	public User getUserInfo(User user) throws Exception{
		System.out.println("DAO sㅏ와라");
		return sqlSession.selectOne("UserMapper.getUserInfo", user);
	}
	
	public User getUserForNo(int userNo) throws Exception {
		return sqlSession.selectOne("UserMapper.getUserForNo", userNo);
		}
	
}