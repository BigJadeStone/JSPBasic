<%@page import="java.util.ArrayList"%>
<%@page import="com.example.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	
	ArrayList<User> list = new ArrayList<>();

	for(int i=1; i<=10; i++){
		User user = new User();
		user.setId(i+"");
		user.setName("홍길동"+i);
		user.setEmail(i+"@naver.com");
		
		list.add(user);
	}

	//리퀘스트에 담는다
	request.setAttribute("list",list);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>list를 행별로 번호를 붙여서 반복문으로 출력</h3>
	
	<c:set var="sum" value="0"/>
	<c:forEach var="l" items="${list}" varStatus="s" >
		${s.count }번:
		${l.id }
		${l.name}
		${l.email}
		<c:set var="sum" value="${sum + d.count }"/>
		<br>
	</c:forEach>
	

</body>
</html>