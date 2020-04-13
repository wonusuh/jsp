<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= request.getAttribute("member_login") %></title>
</head>
<body>
	login
	<h2>
		<%= request.getAttribute("member_login") %>
	</h2>
</body>
</html>
