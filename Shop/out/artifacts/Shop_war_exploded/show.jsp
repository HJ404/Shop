<%@ page contentType="text/html; charset=utf-8" %>   
<%@ page language="java" %>   
<%@ page import="com.mysql.jdbc.Driver" %>   
<%@ page import="java.sql.*" %>   
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>检验注册页面</title>
 
  </head>
  
  <body>
  <%     
	Class.forName("com.mysql.jdbc.Driver"); 
	System.out.print("123");
    Connection conn= DriverManager.getConnection("jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf-8","root","123456");   
    Statement stmt = conn.createStatement();   
    String sql="SELECT username,password,Email,phone,fun from user";   
    ResultSet rs = stmt.executeQuery(sql); 
    out.print("<h2>用户信息</h2>");
    out.print("<table border='2' width='70%'><tr>"); 
    out.print("<th width='33%'>用户姓名</th>");    
    out.print("<th width='33%'>用户密码</th>");   
    out.print("<th width='33%'>用户电子邮件</th>");
    out.print("<th width='33%'>用户电话</th>");
    out.print("<th width='40%'>用户爱好</th>");
    out.print("</tr>");   
    while(rs.next()) {
	out.print("<tr>");
	out.print("<td>"+rs.getString(1)+"</td>");     
	out.print("<td>"+rs.getString(2)+"</td>");   
	out.print("<td>"+rs.getString(3)+"</td>"); 
	out.print("<td>"+rs.getString(4)+"</td>"); 
	out.print("<td>"+rs.getString(5)+"</td>"); 
	out.print("</tr>");   
    } 
    out.print("</table>");  
    rs.close();   
    stmt.close();   
    conn.close();   

%>
  </body>
</html>