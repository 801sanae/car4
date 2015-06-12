package com.model2.mvc.service.message.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.service.domain.Message;

@Repository("messageDao")
public class MessageDao{
	
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	///Constructor
	public MessageDao() {
		System.out.println(this.getClass());
	}

	///Method
	public void addMessage(Message message) throws Exception {
		System.out.println("Message ::::: "+message);
		sqlSession.insert("MessageMapper.addMessage", message);
	}
}