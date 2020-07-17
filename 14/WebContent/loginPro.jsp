<%@page import="csdit.LoginDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	
	LoginDAO dbpro.checkUser(id, pwd);
	
	if(check=1){
		Cookie cookie = new Cookie("id", id);
		cookie.setMaxAge(20*60);
		response.addCookie(cookie);
		response.sendRedirect("welcome.jsp");
	}else if(check=0){ //비번 잘못 입력했을 경우
%>	
	
	<script>
	alert("비번을 잘못 입력. 다시 로그인 화면으로 이동");
	location.href="loginForm.jsp"
	</script>
<% 	}else{ //아이디도 비번도 없는 상태 -> 사용자 등록
%>	
	<script>
	alert("없는 사용자입니다. 회원가입 화면으로 이동");
	location.href="../12주차/insertDB.jsp"
	</script>

<% } %>   

%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>