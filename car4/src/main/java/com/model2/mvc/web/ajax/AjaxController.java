package com.model2.mvc.web.ajax;

import java.util.HashMap;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.google.gson.Gson;
import com.model2.mvc.service.car.impl.CarDao;
import com.model2.mvc.service.domain.Car;
import com.model2.mvc.service.user.impl.UserDao;


@Controller
public class AjaxController {
	
	@Autowired
	ServletContext ctx;
	
	UserDao userDao = new UserDao();
	
//	@RequestMapping("/idCheck")
//	public ResponseEntity<String> idCheck(@RequestParam("userId") String userId, HttpServletRequest request) throws Exception {
//		HttpHeaders headers = new HttpHeaders();	// json을 전송할때 이런 형식으 기본적인 정보를 헤더에 붙여 보낸다.
//		headers.set("Content-Type", "text/plain;charset=UTF-8"); 
//		
//		HashMap<String,String> result = new HashMap<String,String>();
//		
//		System.out.println("userId : " + userId);
//				 
//		WebApplicationContext wac = WebApplicationContextUtils
//				.getWebApplicationContext(((HttpServletRequest) request)
//						.getSession().getServletContext()); // 이미 구동되어져있는 빈을 가져온다....
//															// 서버가 실행될때 서버 메모리에 빈이 로드된 것을 가져오기위해? -.-;;;;;
//		
//		UserDao userDao = (UserDao) wac.getBean("userDao");
//		
//		boolean isUsedId = userDao.isUsedId(userId);
//		System.out.println("isUsedId : " + isUsedId);
//		try {
//			if (isUsedId) { // 사용중인 id
//				result.put("status", "NO");
//			} else {
//				result.put("status", "YES");
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		String jsonString = new Gson().toJson(result); // result(HashMap)을 jsonString(JSON)으로 바꾼다. 
//		return new ResponseEntity<String>(jsonString, headers, HttpStatus.OK);
//	}
//	
//	@RequestMapping("/idCheck")
//	public ResponseEntity<String> idCheck(@RequestParam("userId") String userId, HttpServletRequest request) throws Exception {
//		HttpHeaders headers = new HttpHeaders();	// json을 전송할때 이런 형식으 기본적인 정보를 헤더에 붙여 보낸다.
//		headers.set("Content-Type", "text/plain;charset=UTF-8"); 
//		
//		HashMap<String,String> result = new HashMap<String,String>();
//		
//		System.out.println("userId : " + userId);
//				 
//		WebApplicationContext wac = WebApplicationContextUtils
//				.getWebApplicationContext(((HttpServletRequest) request)
//						.getSession().getServletContext()); // 이미 구동되어져있는 빈을 가져온다....
//															// 서버가 실행될때 서버 메모리에 빈이 로드된 것을 가져오기위해? -.-;;;;;
//		
//		UserDao userDao = (UserDao) wac.getBean("userDao");
//		
//		boolean isUsedId = userDao.isUsedId(userId);
//		System.out.println("isUsedId : " + isUsedId);
//		try {
//			if (isUsedId) { // 사용중인 id
//				result.put("status", "NO");
//			} else {
//				result.put("status", "YES");
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		
//		String jsonString = new Gson().toJson(result); // result(HashMap)을 jsonString(JSON)으로 바꾼다. 
//		return new ResponseEntity<String>(jsonString, headers, HttpStatus.OK);
//	}
//	
	@RequestMapping("/isDupCarnum.do")
	public ResponseEntity<String> isDupCarnum(@RequestParam("carNum") String carNum, HttpServletRequest request) throws Exception {
		HttpHeaders headers = new HttpHeaders();	// json을 전송할때 이런 형식으 기본적인 정보를 헤더에 붙여 보낸다.
		headers.set("Content-Type", "text/plain;charset=UTF-8"); 
		
		HashMap<String,String> result = new HashMap<String,String>();
		
		System.out.println("carNum : " + carNum);
				 
		WebApplicationContext wac = WebApplicationContextUtils
				.getWebApplicationContext(((HttpServletRequest) request)
						.getSession().getServletContext()); // 이미 구동되어져있는 빈을 가져온다....
															// 서버가 실행될때 서버 메모리에 빈이 로드된 것을 가져오기위해? -.-;;;;;
		
		CarDao carDao = (CarDao) wac.getBean("carDao");
		
		Car car = carDao.getCar(carNum);
		System.out.println("isDupCarnum : " + car);
		try {
			if (car==null) { 
				result.put("status", "no");
			} else {
				result.put("status", "yes");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String jsonString = new Gson().toJson(result); // result(HashMap)을 jsonString(JSON)으로 바꾼다. 
		return new ResponseEntity<String>(jsonString, headers, HttpStatus.OK);
	}
	

}
