<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="section1.DBconnShop"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>게시판 정보</h2>

	<%
	DBconnShop db = new DBconnShop();
	%>
	<%
	db.findBoard();
	%>

</body>
</html>