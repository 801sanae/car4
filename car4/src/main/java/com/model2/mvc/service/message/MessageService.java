package com.model2.mvc.service.message;

import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Message;

public interface MessageService {
	
	//메세지 보내기
	public void addMessage(Message message) throws Exception;
	
	//쪽지리스트 확인하기
	public Map<String, Object> getMessageList(int userNo, Search search) throws Exception;
	
	//쪽지 읽기
	public Message getMessage(int msgNo) throws Exception;
	
	//읽음여부 변경하기
	public void updateTranCode(int msgNo) throws Exception;
	
	//메시지 삭제
	public void deleteMessage(int msgNo) throws Exception;
	
}

