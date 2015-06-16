<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true" %>
<%@ page import="com.google.gson.Gson"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>

<%
String temp = request.getParameter("qu");
String[] t  = temp.split("=on&");

Map<String,String> map = new HashMap<String,String>();

for(int i=0; i<t.length; i++) {
	map.put(t[i]+"", t[i]);
	
}
String result = new Gson().toJson(map);
System.out.println("Song "+result);
out.print(result);
%>