package com.model2.mvc.service.user;

import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.User;



public interface UserService {
	
	
	public void addUser(User user) throws Exception;
	
	
	public User getUser(String userId) throws Exception;
	
	
	public Map<String , Object> getUserList(Search search) throws Exception;
	
	// 내아이디 확인
	public User findUserId(User user) throws Exception;
	
	public void updateUser(User user) throws Exception;
	
	
	public boolean checkDuplication(String userId) throws Exception;
	
	//비밀번호수정
	public void updatePassword(User user)throws Exception;
	
	//판매등록넘어갈때 받아오는 유저정보
	public User getUserInfo(User user) throws Exception;
	
	public User getUserForNo(int userNo) throws Exception;
	
	//옥션넘버로 유저 찾아오기
	public int getUserNoForAuctionNo(int auctionNo) throws Exception;
	
}