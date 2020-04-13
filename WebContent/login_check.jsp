<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_check.jsp</title>
</head>
<body>
	<%
/* 		Cookie[] cookies = request.getCookies();
		boolean isLogin = false;
		if (cookies != null || cookies.length > 0) {
			for (int i = 0; i < cookies.length; i++) {
				String cookie_name = cookies[i].getName();
				String cookie_value = cookies[i].getValue();
				if (cookie_name.equals("ID") ||
						cookie_value.equals("ADMIN")) {
					isLogin = true;
					break;
				}
			}
		} */
		String id = (String)session.getAttribute("LOGIN");
		boolean isLogin = false;
		if (id != null) isLogin = true;
		if (isLogin) {
			out.print("<h2>로그인을 한 상태입니다. ID= " + id + "</h2>");
		} else {
			out.print("<h2>로그인을 안한 상태입니다.</h2>");
		}
	%>
</body>
</html>
