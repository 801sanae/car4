<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.model2.mvc.service.user.impl.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true" %>
	<%
		WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(((HttpServletRequest) 
				request).getSession().getServletContext());
		UserDao userDao = (UserDao) wac.getBean("userDao");

		String userId = request.getParameter("userid");
		System.out.print(userId);
		String str = "";
		System.out.println(userDao.getUser(userId));
		try {
			if (userDao.getUser(userId) != null ) {
				str = "NO";
				out.print(str);
				System.out.println(str);
			} else if(userDao.getUser(userId) == null) {
				str = "YES";
				out.print(str);
				System.out.println(str);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>