<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="myForm_process.jsp" method="Post">
		아이디 : <input type="text" name="id"/><br />
		비밀번호 : <input type="password" name="password"/><br />
		비밀번호 확인 : <input type="password" name="passwordConfirm"/><br />
		이름 : <input type="text" name="name"/><br />
		생년월일 : <input type="text" name="name"/><br />
		성별 : <input type="radio" name="gender" value="남자"/>남자
			<input type="radio" name="gender" value="여자"/>여자<br />
		이메일 : <input type="email" value="email"/><br />
		주소 : <input type="text" value="address"/><br />
		전화번호 : <input type="tel" name="phone"/><br />
	</form>
</body>
</html>
