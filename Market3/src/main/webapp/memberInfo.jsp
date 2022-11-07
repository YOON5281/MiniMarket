<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="section1.DBconnShop"%>
<%@ page import="section1.Member"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
h1 {
	width: 100%;
	display:flex;
	justify-content:center;
	margin:50px 0;

}

#memberList {
	display:flex;
	list-style:none;
}
#memberList li {
	margin-right:5%;
		border: 1px solid gray;
		padding : 20px;
}

#memberList span{

	font-weight:bold;
}
</style>
</head>
<body>

	<h1>회원 정보</h1>

	<%
	DBconnShop db = new DBconnShop();
	%>
	<%
	db.findMember();
	ArrayList<Member> memberList1 = new ArrayList<Member>();
	%>
	<%
	memberList1 = db.getMemberList();
	%>

	<ul id="memberList">

		<%
		for (int i = 0; i < memberList1.size(); i++) {
		%><li>
			<%
			Member member = memberList1.get(i);
			out.println("<p><span>아이디 : </span>" + member.getId() + "</p>");
			out.println("<p><span>이름 : </span>" + member.getName() + "</p>");
			out.println("<p><span>비밀번호 : </span>" + member.getPw() + "</p>");
			out.println("<p><span>날짜 : </span>" + member.getDate() + "</p>");
			out.println("<p><span>성별 : </span>" + member.getGender() + "</p>");
			out.println("<p><span>전화번호 : </span>" + member.getTel() + "</p>");
			out.println("<p><span>스타일 리스트 : </span>" + member.getStyleList() + "</p>");
			}
			%>
		</li>

	</ul>


</body>
</html>