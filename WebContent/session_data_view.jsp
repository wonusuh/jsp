<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session_data_view.jsp</title>
</head>
<body>
	<h3>
		NAME : <%= session.getAttribute("NAME") %><br />
		ADDRESS : <%= session.getAttribute("ADDRESS") %><br />
	</h3>
</body>
</html>
