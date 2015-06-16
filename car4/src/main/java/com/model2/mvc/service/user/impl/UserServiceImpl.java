package com.model2.mvc.service.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.user.UserService;



@Service("userServiceImpl")
public class UserServiceImpl implements UserService{
	
	///Field
	@Autowired
	@Qualifier("userDao")
	private UserDao UserDao;
	public void setUserDao(UserDao UserDao) {
		this.UserDao = UserDao;
	}
	
	///Constructor
	public UserServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addUser(User user) throws Exception {
		UserDao.addUser(user);
	}
	
	public User getCheck(String userId) throws Exception {
		return UserDao.getCheck(userId);
	}

	
	public User getUser(String userId) throws Exception {
		return UserDao.getUser(userId);
	}

	public Map<String , Object > getUserList(Search search) throws Exception {
		List<User> list= UserDao.getUserList(search);
		int totalCount = UserDao.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}

	public void updateUser(User user) throws Exception {
		UserDao.updateUser(user);
	}
	

	public boolean checkDuplication(String userId) throws Exception {
		boolean result=true;
		User user=UserDao.getUser(userId);
		if(user != null) {
			result=false;
		}
		return result;
	}
	public User findUserId(User user) throws Exception {
		System.out.println("User값 나와라"+user);
		return UserDao.findUserId(user);
	}
	
	public void updatePassword(User user)throws Exception{
		UserDao.updatePassword(user);
	}
	
	public User getUserInfo(User user) throws Exception{
		return UserDao.getUserInfo(user);
	}
	
	
	@Override
	public User getUserForNo(int userNo) throws Exception {
	// TODO Auto-generated method stub
	return UserDao.getUserForNo(userNo);
	}
	

	//옥션넘버로 유저 찾아오기
	public int getUserNoForAuctionNo(int auctionNo) throws Exception {
		return UserDao.getUserNoForAuctionNo(auctionNo);
	}
	
	
}