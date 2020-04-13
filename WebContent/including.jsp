<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int data = 20;
	%>
	including.jsp : <%= data %><br>
	<%@ include file="included.jsp" %>
	including.jsp : <%= data %>
</body>
</html>
