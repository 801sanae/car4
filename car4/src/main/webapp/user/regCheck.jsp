<%@ page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@ page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<%@ page import="com.model2.mvc.service.user.*"%>
<%@ page import="com.model2.mvc.service.user.impl.*"%>
<%
	WebApplicationContext wac = WebApplicationContextUtils
			.getWebApplicationContext(((HttpServletRequest) request)
					.getSession().getServletContext());
	UserDao userDao = (UserDao) wac.getBean("userDao");
%>
<%
	System.out.println("EMAIL  " + request.getParameter("email"));
%>
<%
	System.out.println("PWD    " + request.getParameter("pwd"));
%>
<%
	if (userDao.getUser(request.getParameter("email")) == null) {
		System.out.println("emailNULL");
		out.println("NO");
	}
	if (userDao.getUser(request.getParameter("email")) != null) {
		if (userDao.getUser(request.getParameter("email")).getUserId()
				.equals(request.getParameter("email"))
				&& userDao.getUser(request.getParameter("email"))
						.getPassword()
						.equals(request.getParameter("pwd"))//base64 algorithm ��
						) {
			out.println("OK");
		} else {
			System.out.println("���ư��� �ų��� 1-2");
			out.println("NO");
		}
	}
%>

