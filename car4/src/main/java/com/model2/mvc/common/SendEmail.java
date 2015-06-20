package com.model2.mvc.common;


import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;

public class SendEmail {
	
	public  static void sendEmail(String email, String authNum){
		String host = "smtp.gmail.com";
		String subject = "Car4 인증번호전달";
		String fromName ="";
		String from="gre0507@gmail.com";
		String to1 = email;
		
		String content = "인증번호[" + authNum + "]";
		
		try{
			Properties props = new Properties();
			
			props.put("mail.smtp.starttls.enable", "true");
			props.put("mail.transport.protocol", "smtp");
			props.put("mail.smtp.host", host);
			props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.port", "465");
			props.put("mail.smtp.user", "from");
			props.put("mail.smtp.auth", "true");
			
			Session mailSession = Session.getInstance(props,
					new javax.mail.Authenticator(){
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("gre0507@gmail.com","k1058431");
						}
			});
			Message msg = new MimeMessage(mailSession);
			msg.setFrom(new InternetAddress(from, MimeUtility.encodeText(fromName, "UTF-8", "B")));
			
			InternetAddress[] address1 = { new InternetAddress(to1)	};
			msg.setRecipients(Message.RecipientType.TO, address1);
			msg.setSubject(subject);
			msg.setSentDate(new java.util.Date());
			msg.setContent(content, "text/html;charset=UTF-8");
			
			Transport.send(msg);
		}catch(MessagingException e){
			e.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public static String RandomNum(){
		StringBuffer buffer = new StringBuffer();
		for (int i = 0; i <=6 ; i++) {
			int n = (int)(Math.random()*10);
			buffer.append(n);
		}
		return buffer.toString();
	}
}
