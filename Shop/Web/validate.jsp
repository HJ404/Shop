<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id ="user" class="cn.edu.hpu.model.User"></jsp:useBean>
	<jsp:useBean id ="username" class="cn.edu.hpu.model.User"></jsp:useBean>
	<jsp:useBean id ="userservice" class="cn.edu.hpu.service.userservice"></jsp:useBean>
	<jsp:setProperty property="*" name="user"/>

<%
	out.print(user.getUsername());
	out.print(user.getPassword());
	if(userservice.valiUser(user))
		{
		session.setAttribute("user", user);
		session.setAttribute("username",user.getUsername());
		%>
		<jsp:forward page="index.jsp"></jsp:forward>
<% 
	}		
	else
	{%>
	<jsp:forward page="login.jsp"></jsp:forward>
<% 
}
%>
</body>
</html>