package com.model2.mvc.service.message.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Auction;
import com.model2.mvc.service.domain.Message;
import com.model2.mvc.service.message.MessageService;



@Service("messageServiceImpl")
public class MessageServiceImpl implements MessageService{
	
	///Field
	@Autowired
	@Qualifier("messageDao")
	private MessageDao messageDao;
	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}
	
	///Constructor
	public MessageServiceImpl() {
		System.out.println(this.getClass());
	}

	//메세지 보내기
	public void addMessage(Message message) throws Exception {
		messageDao.addMessage(message);
		
	}
	
	//쪽지리스트 확인하기
	public Map<String, Object> getMessageList(int userNo) throws Exception {
		
		List<Message> list = messageDao.getMessageList(userNo);
		int totalCount = messageDao.getTotalCount();

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("totalCount", new Integer(totalCount));

		return map;
		
	}
	
	//쪽지 읽기
	public Message getMessage(int msgNo) throws Exception {
		return messageDao.getMessage(msgNo);
		
	}
	
	//읽음여부 변경하기
	public void updateTranCode(int msgNo) throws Exception {
		messageDao.updateTranCode(msgNo);
	}

}