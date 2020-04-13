<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
</head>
<body>
	<%
		for (int i = 0; i <= 100; i++) {
			if (i % 2 == 0) {
				%>
				<%=i%>는 짝수입니다.<br>
				<%
			} else {
				%>
				<%=i%>는 홀수입니다.<br>
				<%
			}
		}
	%>
</body>
</html>
