<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
</head>
<body>
	<table border=1>
		<tr>
			<td><jsp:include page="/${text}/top.jsp" flush="false"/></td>
		</tr>
		<tr>
			<td><jsp:include page="menu.jsp" flush="false"/></td>
			<td><jsp:include page="contents.jsp" flush="false"/></td>
		</tr>
	</table>
</body>
</html>
