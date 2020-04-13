<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_info.jsp</title>
</head>
<body>
	<%
		Date c_time = new Date(), m_time = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		c_time.setTime(session.getCreationTime());
		m_time.setTime(session.getLastAccessedTime());
	%>
	<h3>
		세션 아이디 : <%= session.getId() %><br>
		세션 생성 시각 : <%= formatter.format(c_time) %><br>
		세션 최종 접근 시각 : <%= formatter.format(m_time) %><br>
	</h3>
</body>
</html>
