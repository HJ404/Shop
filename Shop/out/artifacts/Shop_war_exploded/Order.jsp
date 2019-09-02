<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>订单管理</title>
</head>
<jsp:include page="isLogin.jsp"></jsp:include>
<frameset rows="20%,*">
	<frame src="top.jsp">
	<frameset cols="20%,*">
		<frame src ="main_left.jsp">
		<frame src ="main_right.jsp" name="main_right">
	</frameset>
</frameset>
<body>

</body>
</html>