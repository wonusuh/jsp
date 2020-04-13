<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>getTest2.jsp</h3>
	<%
		String name = request.getParameter("name");
		// JAVA 한글이 깨질경우 인코딩 확인하기
		String[] charSet = {
				"utf-8",
				"euc-kr",
				"ksc5601",
				"iso-8859-1",
				"x-windows-949",
		};
		for (int i = 0; i < charSet.length; i++) {
			for (int j = 0; j < charSet.length; j++) {
				try {
					System.out.println("[" + charSet[i] + ", ]");
				}
			}
		}
	%>
</body>
</html>
