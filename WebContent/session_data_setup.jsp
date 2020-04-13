<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%
	session.setAttribute("NAME", "Jimmy");
	session.setAttribute("ADDRESS", "Seoul");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_data_setup.jsp</title>
</head>
<body>
	<h3>
		세션 속성 설정하기<br />
		<a href="session_data_view.jsp">여기</a>를 클릭하면
		설정 된 속성을 확인할 수 있습니다.
	</h3>
</body>
</html>
