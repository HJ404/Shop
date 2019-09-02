<%--
  Created by IntelliJ IDEA.
  User: HJ
  Date: 2019/8/29
  Time: 19:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册界面</title>
</head>
<body>
    <form action="addUserProcess.jsp" >
        <h5>用户名：</h5><input type="text" name="username">
        <h5>密码：</h5><input type="password" name="password">
        <h5>邮件：</h5><input type="text" name="Email">
        <h5>tel：</h5><input type="text" name="tel">
        <h5>fun：</h5><input type="text" name="fun"><br><br>
        <input type="submit" value="注册">
    </form>
</body>
</html>
