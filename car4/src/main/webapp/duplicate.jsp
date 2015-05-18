<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" trimDirectiveWhitespaces="true"%>
<%@ page import="com.model2.mvc.service.user.*" %>    
<%@ page import="com.model2.mvc.service.user.impl.*" %>
<%WebApplicationContext wac = WebApplicationContextUtils.getWebApplicationContext(((HttpServletRequest)request).getSession().getServletContext());
	UserDao userDao = (UserDao)wac.getBean("userDao");%>
	<%if(userDao.getCheck(request.getParameter("name1"))!=null){
		out.println("O");	
	}else {
		out.println("X");
	}
	%>
	
	<%--회원가입 아이디 체크 AJAX --%>