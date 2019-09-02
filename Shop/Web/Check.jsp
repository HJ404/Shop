<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>检验注册页面</title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
  </head>
  
  <body>
    <br>
   
   <%
   request.setCharacterEncoding("utf-8");
   String users=request.getParameter("username");
   String password=request.getParameter("password");
   String Email=request.getParameter("Email");
   %>
   <% 
    String driver = "com.mysql.jdbc.Driver";  
    String url = "jdbc:mysql://localhost:3306/shop?user=root&password=123456&useUnicode=true&characterEncoding=gb2312";   
    Class.forName(driver);  
    Connection conn= DriverManager.getConnection(url);  
    PreparedStatement sql =conn.prepareStatement("insert into user(username,password,Email)values(?,?,?)");
    sql.setString(1,users);
    sql.setString(2,password); 
    sql.setString(3,Email);
    int rtn=sql.executeUpdate();
    sql.close();
    conn.close();
    %>
	<jsp:forward page="login.jsp"></jsp:forward>
  </body>
</html>