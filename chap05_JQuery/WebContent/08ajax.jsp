<%@page import="com.fasterxml.jackson.databind.ObjectMapper"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	Map map = new HashMap();
	map.put("id","dl1023");
	map.put("pass","1111");
	map.put("age",26);
	map.put("alive",true);
	map.put("name","이현원");
	map.put("hobby",new String[]{"독서","공부"});
	
	ObjectMapper om = new ObjectMapper(); //json형태로 변환
	String str = om.writeValueAsString(map);
	out.println(str);
	
	String q = request.getParameter("q");
	String v = request.getParameter("v");
	System.out.println(q+","+v);
	
%>