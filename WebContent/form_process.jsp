<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration, java.util.Map" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>getParameter(), getParameterValues() 메서드 사용</b>
	<br /> 이름 : <%= request.getParameter("name") %>
	<br /> 전화번호 : <%= request.getParameter("phone") %>
	<br /> 성별 : <%= request.getParameter("gender") %>
	<br /> 좋아하는 운동 :
		<%
			String[] sports = request.getParameterValues("sports");
			if (sports != null) {
				for (int i = 0; i < sports.length; i++) {
					out.print(sports[i] + " ");
				}
			}
		%>
	<br /> 가장 좋아하는 계절 :
	<%= request.getParameter("season") %>
	<br />
	<br />
	<b>getParameter(), getParameterValues() 메서드 사용</b>
	<br />
		<%
			Enumeration<String> p = request.getParameterNames();
			Map<String, String[]> m = request.getParameterMap();
			while (p.hasMoreElements()) {
				String name = (String)p.nextElement();
				String[] values = (String[])m.get(name);
				out.print(name + " : ");
				if (values != null) {
					for (String value : values) {
						out.print(value + " ");
						out.print("<br>");
					}
				}
			}
		%>
</body>
</html>
