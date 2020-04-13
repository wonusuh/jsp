<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>view_member_list.jsp</title>
</head>
<body>
	<table border=1>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>전화번호</th>
			<th>주소</th>
		</tr>
		<%
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			String url = "jdbc:mariadb://localhost:3306/my_db";
			String user = "root";
			String pw = "qwer1234";
			try {
				con = DriverManager.getConnection(url, user, pw);
				stmt = con.createStatement();
				rs = stmt.executeQuery("SELECT * FROM member");
				while (rs.next()) {
					out.print("<tr>");
					out.print("<td>" + rs.getString("id") + "</td>");
					out.print("<td>" + rs.getString("pass") + "</td>");
					out.print("<td>" + rs.getString("name") + "</td>");
					out.print("<td>" + rs.getString("phone") + "</td>");
					out.print("<td>" + rs.getString("address") + "</td>");
					out.print("</tr>");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
</body>
</html>
