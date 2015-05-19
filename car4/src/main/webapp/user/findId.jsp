<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.model2.mvc.service.user.impl.UserDao"%>
<%@page import="com.model2.mvc.service.domain.User"%>
<%@ page import="com.google.gson.Gson"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%
	WebApplicationContext wac = WebApplicationContextUtils
			.getWebApplicationContext(((HttpServletRequest) request)
					.getSession().getServletContext());
	UserDao userDao = (UserDao) wac.getBean("userDao");

	String userName = request.getParameter("userName");
	String phone = request.getParameter("phone");

	User user = new User();

	user.setUserName(userName);
	user.setPhone(phone);

	System.out.println("유져 : " + user);

	Map<String, String> map = new HashMap<String, String>();

	try {

		User dbUser = userDao.findUserId(user);

		System.out.println("findId.jsp 디비유저 : " + dbUser);

		if (dbUser == null) {

			String no = "";
			map.put("NO", no);
			String jsonString = new Gson().toJson(map);

			out.print(jsonString);

		} else {

			map.put("userName", dbUser.getUserName());
			map.put("userId", dbUser.getUserId());

			String jsonString = new Gson().toJson(map);

			out.print(jsonString);

		}

	} catch (Exception e) {
		e.printStackTrace();

	}
%>