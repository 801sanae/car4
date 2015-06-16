package com.model2.mvc.web.message;

import java.io.IOException;
import java.io.StringWriter;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

import javax.json.JsonWriter;
import javax.json.Json;
import javax.json.JsonObject;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;



@ServerEndpoint("/chatroomServerEndpoint")
public class ChatRoomServerEndPoint {
	static Set<Session> chatroomUsers  = Collections.synchronizedSet(new HashSet<Session>());
	
	@OnOpen
	public void handleOpen(Session userSession) {
		System.out.println("Client Connection");
		chatroomUsers.add(userSession);
		System.out.println("UserId : "+userSession.getId());
	}
	
	
	@OnMessage
	public void handleMessage(String message, Session userSession) throws IOException{
		String userName = (String)userSession.getUserProperties().get("username");
		
		if(userName == null) {
			userSession.getUserProperties().put("username", message);
			userSession.getBasicRemote().sendText(buildJsonData("System","You are now connected as : " + message));
		}else {
			Iterator<Session> iterator = chatroomUsers.iterator();
			while(iterator.hasNext()) iterator.next().getBasicRemote().sendText(buildJsonData(userName, message));
		}
	}
	
	@OnClose
	public void handleClose(Session userSession) {
		chatroomUsers.remove(userSession);
	}
	
	private String buildJsonData(String userName, String message){
		JsonObject jsonObejct = Json.createObjectBuilder().add("message", userName + ":"+message).build();
		StringWriter stringWriter = new StringWriter();
		 try(JsonWriter jsonWriter = Json.createWriter(stringWriter)){ jsonWriter.write(jsonObejct);}
		return stringWriter.toString();
	}

}
