<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set_cookie2.jsp</title>
</head>
<body>
	<%
		Cookie cookie = new Cookie("name", "Jimmy");
		response.addCookie(cookie);
	%>
	<a href="test_cookie.jsp">쿠키 확인하기</a>
</body>
</html>
