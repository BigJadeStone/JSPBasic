<%@page import="java.util.Arrays"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%     
	//리퀘스트객체에서 관련정보 얻기
	StringBuffer url = request.getRequestURL();//전체주소
	String uri = request.getRequestURI();//전체주소 - ip주소,포트값
	String path = request.getContextPath();//프로젝트 식별이름
	String remoteAddr = request.getRemoteAddr();//ip주소

	//단일값
  	String id = request.getParameter("id"); 
  	String pw = request.getParameter("pw");
  	//다중값
  	String[] agrees = request.getParameterValues("agree");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	url: <%=url %><br>
	uri: <%=uri %><br>
	컨패스: <%=path %><br>
	접속한주소: <%= remoteAddr %><br>
	
	
	아이디:<%=id %><br>
	pw:<%=pw %><br>
	동의항목:<%=Arrays.toString(agrees) %>
	
	
	
</body>
</html>