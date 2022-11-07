<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="section1.DBconnShop"%>
<!DOCTYPE html>

<%@ page import="section1.DBconnShop"%>
<%@ page import="section1.Board"%>
<%@ page import="java.util.ArrayList"%>


<html>
<head>
<meta charset="UTF-8">
<title>게시판 정보</title>
<style>
h1 {
	width: 100%;
	display: flex;
	justify-content: center;
	margin: 50px 0;
}

.container {
  display: flex;
  justify-content: space-between;
   flex-wrap: wrap; 
}

#boardList {
	width: 100%;
	list-style: none;
}

#boardList li {
	width: 40%;
	margin-right: 5%;
	padding: 20px;
}

#boardList span {
	font-weight: bold;
}

#boardList .content {
	border: 1px solid gray;
	padding:10px;
	height:300px;
}
</style>


</head>
<body>

	<h1>게시판 정보</h1>

	<%
	DBconnShop db = new DBconnShop();
	%>
	<%
	db.findBoard();
	ArrayList<Board> boardList = new ArrayList<Board>();
	boardList = db.getBoardList();
	%>
	<ul id="boardList" class="container">

		<%
		for (int i = 0; i < boardList.size(); i++) {
		%><li>
			<%
			Board board = boardList.get(i);
			out.println("<p><span>제목 : </span>" + board.getTitle() + "</p>");
			out.println("<p><span>카테고리 : </span>" + board.getCategory() + "</p>");
			out.println("<p><span>이름 : </span>" + board.getName() + "</p>");
			out.println("<p><span>날짜 : </span>" + board.getDate() + "</p>");
			out.println("<p><div  class='content'>" + board.getContent() + "</div></p>");
			}
			%>
		</li>

	</ul>




</body>
</html>