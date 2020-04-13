<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>logout.jsp</title>
</head>
<body>
<%-- 	<%
		Cookie cookie = new Cookie("ID", "ADMIN");
		cookie.setMaxAge(0);
		response.addCookie(cookie);
	%> --%>
	<h2>로그아웃 되었습니다.</h2>
</body>
</html>
