<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 내용</title>
<link href="main.css" type="text/css" rel="styleSheet" />
</head>
<body>

	<% String category = request.getParameter("category"); %>
	<% String title = request.getParameter("title"); %>
	<% String name = request.getParameter("name"); %>
	<% String date = request.getParameter("date"); %>
	<% String content = request.getParameter("content"); %>

	<div id="board_view">
		<h1><%= title %></h1>
		<ul>
			<li><span>카테고리 :</span> <%= category %></li>
			<li><span>주문자 이름 :</span> <%= name %></li>
			<%
			int birthYear = Integer.parseInt(date.substring(0,4));
        int birthMonth = Integer.parseInt(date.substring(5,7));
        int birthDay = Integer.parseInt(date.substring(8,10));
			%>
			
			<li><span>주문 날짜 :</span> <%= birthYear %>년 <%= birthMonth%>월 <%=birthDay %>일 </li>
			<li class="board_content"><%= content %></li>
		</ul>

	</div>


</body>
</html>