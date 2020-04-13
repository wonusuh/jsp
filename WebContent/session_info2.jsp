<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	HttpSession httpSession = request.getSession();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>
		세션 아이디1 : <%= session.getId() %><br />
		세션 아이디2 : <%= httpSession.getId() %><br />
	</h3>
</body>
</html>
