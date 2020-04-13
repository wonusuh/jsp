<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view.jsp</title>
</head>
<body>
	표현식
	<%= request.getAttribute("result") %><br>
	표현언어
	${requestScope.result}
</body>
</html>
