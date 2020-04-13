<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>remove_session.jsp</title>
</head>
<body>
	<h3>
		세션 삭제되었습니다.<br />
		<a href="session_data_view.jsp">를 클릭하여 삭제되었는지
		확인 할 수 있습니다.</a>
	</h3>
</body>
</html>
