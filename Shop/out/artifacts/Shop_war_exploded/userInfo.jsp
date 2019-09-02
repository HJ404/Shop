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
   
	String driver = "com.mysql.jdbc.Driver";  
	String url = "jdbc:mysql://localhost:3306/shop?user=root&password=123456&useUnicode=true&characterEncoding=gb2312";    
	Class.forName(driver);  
    Connection conn= DriverManager.getConnection(url);   
    Statement stmt = conn.createStatement();   
    String sql="SELECT username,Email,phone,fun from user where username= '" + session.getAttribute("username") +"'";   
    ResultSet rs = stmt.executeQuery(sql); 
    out.print("<h2>用户信息</h2>");
    out.print("<table border='2' width='70%'><tr>"); 
    out.print("<th width='33%'>用户姓名</th>");      
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
	out.print("</tr>");   
    } 
    out.print("</table>");  
    rs.close();   
    stmt.close();   
    conn.close();   

%>
  </body>
</html>