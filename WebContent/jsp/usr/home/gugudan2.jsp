<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int dan = (int)request.getAttribute("dan");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>구구단 JSP 구현</title>
</head>
<body>
	<div>hello</div>
	<div>구구단을 시작합니다~</div>
	<%
		for(int a=0; a<=9; a++){
	%>
		<div><%=dan %>*<%=a %>=<%=dan*a %> </div>
	<%	
		} 
	%>
</body>
</html>
