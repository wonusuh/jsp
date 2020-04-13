<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>taglib.jsp</title>
</head>
<body>
	<c:choose>
		<c:when test="${param.name == 'Jimmy' }">
			당신의 이름은 Jimmy입니다.<br>	
		</c:when>
		<c:when test="${param.age == 25 }">
			당신의 나이는 25입니다.<br>
		</c:when>
		<c:otherwise>
			당신은 누구입니까?<br>
		</c:otherwise>
	</c:choose>
</body>
</html>
