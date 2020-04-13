<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>from.jsp</title>
</head>
<body>
	<%
		request.setAttribute("name", "Jimmy");
		request.setAttribute("phone", "010-2222-3333");
	%>
	<h2>여기는 from.jsp 페이지입니다.</h2>
	<jsp:forward page="to.jsp"></jsp:forward>
</body>
</html>
