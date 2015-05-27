<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="java.util.*" %>
<%
System.out.println("Form"+request.getParameter("qu"));
String temp = request.getParameter("qu");
String[] t  = temp.split("&");

Map<String,String> map = new HashMap<String,String>();

for(int i=0; i<t.length; i++) {
	map.put(i+"", t[i+1]);
}
System.out.println("Map"+map);
%>