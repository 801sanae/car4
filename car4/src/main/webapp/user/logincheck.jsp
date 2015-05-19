<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="com.model2.mvc.service.user.impl.UserDao"%>
<%@page import="com.model2.mvc.service.domain.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true" %>
	<%
		WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(((HttpServletRequest) 
				request).getSession().getServletContext());
		UserDao userDao = (UserDao) wac.getBean("userDao");

		String userId = request.getParameter("userid");
		String userPwd = request.getParameter("userpwd");
		System.out.println(userId);
		System.out.println(userPwd);
		String str = "";
		//System.out.println(userDao.getUser(userId));
		
		try {
			User user = new User();
			
			user = userDao.getUser(userId);
			System.out.println(user);
		
			if(  user !=null ){
				if ( userPwd.equals(user.getPassword()) ) {
				str = "YES";
				out.print(str);
				System.out.println(str);
				} else {
				str = "NO";
				out.print(str);
				System.out.println(str);
				}
			}else{
				str = "NO";
				out.print(str);
				System.out.println(str);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>