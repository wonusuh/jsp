<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set_path.jsp</title>
</head>
<body>
	<%
		Cookie cookie1 = new Cookie("name", "Jimmy2");
		response.addCookie(cookie1);

		Cookie cookie2 = new Cookie("phone", "010-1234-5678");
		cookie2.setPath("/JSPProgramming");
		response.addCookie(cookie2);

		Cookie cookie3 = new Cookie("address", "Seoul");
		cookie3.setPath("/JSPProgramming/path2");
		response.addCookie(cookie3);
	%>
	<h2>쿠기 생성 결과 확인</h2>
	<%= cookie1.getName() %> : <%= cookie1.getValue() %> (<%= cookie1.getPath() %>)<br>
	<%= cookie2.getName() %> : <%= cookie2.getValue() %> (<%= cookie2.getPath() %>)<br>
	<%= cookie3.getName() %> : <%= cookie3.getValue() %> (<%= cookie3.getPath() %>)<br>
</body>
</html>
