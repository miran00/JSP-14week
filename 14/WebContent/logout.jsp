<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookie = request.getCookies();
	String id = "";

	if(cookie != null){
		for(int i = 0; i<cookie.length; i++){
			if(cookie[i].getName().equals("id")){
				cookie[i].setMaxAge(0);
				response.addCookie(cookie[i]);
			}
		}
	}
%>    
<script>
	alert("로그아웃");
	location.href="loginForm.jsp"
	</script>