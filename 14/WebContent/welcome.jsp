<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookie = request.getCookies();
	String id = "";

	if(cookie != null){
		for(int i = 0; i<cookie.length; i++){
			if(cookie[i].getName().equals("id")){
				id = cookie[i].getValue();
			}
		}
	}else
		response.sendRedirect("loginForm.jsp");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
	환영합니다.<br>
	<%=id %> 님 로그인 하셨습니다. <br>
	<input type ="button" onclick="location.href='logout.jsp'" value="로그아웃">
</body>
</html>