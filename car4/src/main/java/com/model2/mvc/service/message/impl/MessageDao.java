package com.model2.mvc.service.message.impl;

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
	
	//메세지 지우기
	public void deleteMessage(int msgNo) throws Exception{
		System.out.println("delete:: msgNo = " + msgNo);
		sqlSession.delete("MessageMapper.deleteMessage",msgNo);
	}
	
	//리스트 뿌리기
	public List<Message> getMessageList(Map<String, Object> hashMap) throws Exception {
		System.out.println("::MessageDao = "+hashMap);
		List<Message> list = sqlSession.selectList("MessageMapper.getMessageList", hashMap);
		System.out.println("MessageDao =  : "+list);
		return list;
	}
	
	//총 게시물 수
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("MessageMapper.getTotalCount", search);
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