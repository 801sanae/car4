<%@page
	import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	trimDirectiveWhitespaces="true" %>
<%@ page import="com.google.gson.Gson"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>

<%String carNum= request.getParameter("carNum");
String manuCountry = request.getParameter("manuCountry");
String manuCo = request.getParameter("manuCo");
String model = request.getParameter("model");
String color =request.getParameter("color");
int year = Integer.parseInt(request.getParameter("year"));
int month=Integer.parseInt(request.getParameter("month"));
int carYear = Integer.parseInt(request.getParameter("carYear"));
String transmission = request.getParameter("transmission");
String fuel = request.getParameter("fuel");
int cc = Integer.parseInt(request.getParameter("cc"));
int mileage = Integer.parseInt(request.getParameter("mileage"));
String sell = request.getParameter("sell");
String accident = request.getParameter("accident");
String professor = request.getParameter("professor");


Map<String,String> map = new HashMap<String,String>();
map.put("carNum", carNum);
map.put("manuCountry",manuCountry);
map.put("manuCo", manuCo);
map.put("model", model);
map.put("color", color);
map.put("year", year+"");
map.put("month", month+"");
map.put("carYear", carYear+"");
map.put("transmission", transmission);
map.put("fuel", fuel);
map.put("cc",cc+"");
map.put("mileage",mileage+"");
map.put("sell", sell);
map.put("accident", accident);
map.put("professor",professor);

String jsonString = new Gson().toJson(map);
System.out.println("jSSong "+jsonString);
out.print(jsonString);
%>