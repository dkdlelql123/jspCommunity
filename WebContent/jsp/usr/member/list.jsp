<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%
List<Map<String, Object>> memberMapList = (List<Map<String, Object>>)request.getAttribute("memberMapList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
</head>
<body>
<h1>회원 리스트</h1>
<%
for( Map<String, Object> member : memberMapList ){
%>

	<span>번호 : <%= member.get("id") %></span>
	<span>이름 : <%= member.get("name")%></span>
	<span>닉네임 : <%= member.get("nickname") %></span>
	<hr />
	
<%	
} 
%>
</body> 
</html>