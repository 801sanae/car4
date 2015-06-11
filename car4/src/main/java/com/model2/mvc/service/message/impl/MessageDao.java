package com.model2.mvc.service.message.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Auction;
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

	//메세지 보내기
	public void addMessage(Message message) throws Exception {
		System.out.println("Message ::::: "+message);
		sqlSession.insert("MessageMapper.addMessage", message);
	}
	
	
	//총 게시물 수
	public int getTotalCount() throws Exception {
		return sqlSession.select("MessageMapper.getTotalCount");
	}
		
	//쪽지리스트 확인하기
	public List<Message> getMessageList(int userNo) throws Exception {
		List<Message> list = sqlSession.selectList("AuctionMapper.getAuctionList", userNo);
		return list;
	}
	
	//쪽지 읽기
	public Message getMessage(int msgNo) throws Exception {
		return sqlSession.selectOne("MessageMapper.getMessage", msgNo);
		
	}
	
	//읽음여부 변경하기
	public void updateTranCode(int msgNo) throws Exception {
		sqlSession.update("MessageMapper.updateTranCode", msgNo);
	}
}