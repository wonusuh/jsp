<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	인코딩 : <%=request.getCharacterEncoding() %><br>
	프로토콜 : <%=request.getProtocol() %><br>
	메서드 방식 : <%=request.getMethod() %>
	<ul>
		<li>문서경로 : <%=request.getContextPath() %></li>
		<li>서버 주소 : <%=request.getServerName() %></li>
		<li>서버 포터 : <%=request.getServerPort() %></li>
	</ul>
</body>
</html>
