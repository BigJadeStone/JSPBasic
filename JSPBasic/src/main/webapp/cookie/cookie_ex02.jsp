<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	이 페이지 처음 진입하면 idCheck쿠키를 찾아서 값을 얻고 아이디 태그안에
	미리값을 넣어주는 코드를 작성합니다.
	input태그에 value속성을 쓰면 됩니다.
	*/
	Cookie[] arr = request.getCookies();//쿠키가 여러개일 수 있으니까 []로 받음
	String id = "";
	if(arr != null){
		for(Cookie c : arr){
			if(c.getName().equals("id_check")){
				id = c.getValue();
			}
		}
	}

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2>쿠키 로그인 연습</h2>
	
	<form action="cookie_ex02_ok.jsp" method="post">
	
		아이디:<input type = "text" name="id" size="10" value="<%=id%>">
		비밀번호:<input type="password" name="pw" size="10"><br>
		
		<input type = "submit" value="로그인">
		<input type="checkbox" name="idCheck" value="y">아이디기억하기
	</form>
</body>
</html>