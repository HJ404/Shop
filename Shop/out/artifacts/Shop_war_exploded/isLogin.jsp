<%@ page import="cn.hj.vo.User" %>
<%@ page import="cn.hj.Factory.DAOFactory" %><%--
  Created by IntelliJ IDEA.
  User: HJ
  Date: 2019/8/29
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>注册处理界面</title>
</head>
<body>
<%
	//获取表单数据并进行处理
	try {
		User user = new User();
		user.setUsername(request.getParameter("loginUsername"));
		user.setPassword(request.getParameter("loginPassword"));
		DAOFactory.getUserDAOInstance().findUser(user);
	}catch (Exception e){
		e.printStackTrace();
	}
%>
<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>
