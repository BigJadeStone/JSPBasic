<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%     
    //상단부 선언
    int a = 10;
	String str = "hello world";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 
	<%
		out.println(a + "<br>");
		out.println(str + "<br>");
	%>
	 --%>
	 
	 <!-- html주석 -->
	 
	<%=a %><br>
	<%=str %><br>
	
	<h2>구구단 3단을 표현식을 통해서 출력</h2>
	<% for(int i=1; i<=9; i++){ %>
	
		3 x <%=i %> = <%=3*i %><br>
		<%--  <%= "3"+"x"+i+"="+3*i %><br> 위에 줄은 선생님이 하신거 --%>
	<% } %>
	<h2>반복문으로 체크박스에 1~20까지 이름을 붙여서 가로 출력</h2>
	<% for(int i=1; i<=20; i++){ %>
		<input type="checkbox" name=box><%= i  %>
	<% } %>
	
	
</body>
</html>