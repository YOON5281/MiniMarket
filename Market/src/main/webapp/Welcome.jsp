<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%@ page import= "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다!</title>
<link href="main.css" type="text/css" rel="styleSheet" />
</head>
<body>

	<% String name = request.getParameter("name"); %>
	<% String[] style = request.getParameterValues("style"); %>
	<% String date = request.getParameter("date"); %>

	<div id="welcome_ment">
		<p><span><%= name %></span>님, 가입을 환영합니다.”</p>
		“선택하신 스타일은
		<i style="color:red;">
		<% 
		for(int i = 0 ; i <style.length ; i++){
			out.println(style[i]+ " " );
		} %>
		</i>
		이네요, 스타일대로 추천해드릴게요”<br>
		<%
		
	     Calendar current = Calendar.getInstance();
        int currentYear  = current.get(Calendar.YEAR);
        int currentMonth = current.get(Calendar.MONTH) + 1;
        int currentDay   = current.get(Calendar.DAY_OF_MONTH);
        
    
        //out.println(currentYear + " "+currentMonth+ " " +currentDay);
        
        
        int birthYear = Integer.parseInt(date.substring(0,4));
        int birthMonth = Integer.parseInt(date.substring(5,7));
        int birthDay = Integer.parseInt(date.substring(8,10));
        
        int age = currentYear - birthYear;
        // 생일 안 지난 경우 -1
        if (birthMonth * 100 + birthDay > currentMonth * 100 + currentDay) {
            age--;}
        
        out.println("현재 나이가 만 " +age +"세 이시군요.");
        if(age < 19) out.println("청소년이시네요!");
		
		%>
	
		<p>
			<a href="index.html">홈으로</a>
		</p>
	</div>
</body>
</html>