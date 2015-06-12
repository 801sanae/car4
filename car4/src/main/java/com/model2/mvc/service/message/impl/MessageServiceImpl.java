package com.model2.mvc.service.message.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.model2.mvc.service.domain.Message;
import com.model2.mvc.service.message.MessageService;



@Service("messageServiceImpl")
public class MessageServiceImpl implements MessageService{
	
	///Field
	@Autowired
	@Qualifier("messageDao")
	private MessageDao MessageDao;
	public void setMessageDao(MessageDao MessageDao) {
		this.MessageDao = MessageDao;
	}
	
	///Constructor
	public MessageServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addMessage(Message message) throws Exception {
		MessageDao.addMessage(message);
	}
	
}