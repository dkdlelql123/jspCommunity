<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int dan = 1;
if( request.getParameter("dan") != null ){
	dan = Integer.parseInt(request.getParameter("dan"));
}
%>

<%
int limit = 1;
if( request.getParameter("limit") != null ){
	limit= Integer.parseInt(request.getParameter("limit"));
}
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
		for(int a=0; a<=limit; a++){
	%>
		<div><%=dan %>*<%=a %>=<%=dan*a %> </div>
	<%	
		} 
	%>
</body>
</html>
