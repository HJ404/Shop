<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="cn.hj.vo.User"%>
<!DOCTYPE html>
<html>
  <head>
    <title>网上购物</title>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
  </head>
    <%
	//装载MySQL5.5的JDBC驱动
	Class.forName("com.mysql.jdbc.Driver");
	//建立数据库连接
	String url ="jdbc:mysql://localhost:3306/shop?user=root&password=123456&useUnicode=true&characterEncoding=gb2312";
	Connection conn= DriverManager.getConnection(url);
	//建立一个Statement对象，用于执行SQL语句
	Statement stat = conn.createStatement();
	//执行查询并得到查询结果
	String sql = "select * from shop.show ";
	ResultSet rs = stat.executeQuery(sql);	
  %>
  <body>
  	<jsp:useBean id ="user" class="cn.edu.hpu.model.User"></jsp:useBean>
  	<jsp:setProperty property="*" name="user"/>
    	<!-- 最上面的部分 购物车部分-->
    	<table width="80%">
    		<td>
    			<img  src="images/logo.png"  width="50%" length="50%">
    		</td>
    		<td>
    			<img src=images/cart.gif width="50" align="middle">
    			<a href="addUser.jsp">用户注册</a>|<a href="userInfo.jsp">个人信息</a>|<a href="cart.jsp">购物车</a>|<a href="Order.jsp">订单管理</a>
    		</td>
    		<td >
    			<img  src="images/girl.png"  width="20%" length="10%" align="right" >
    		</td>
    		<td ><a href="userInfo.jsp" align="right"><%=user.getUsername() %></a></td>
    		<td ><a href="exit.jsp" align="right">退出</a></td>
    	</table>
    	
    	<!-- 第二部分 目录部分 -->
    	<table width="100%" bgcolor="#1C3F09" align="center">
    		<td align="center">
    			<font color="#ffffff">文字&nbsp;&nbsp;&nbsp;生活&nbsp;&nbsp;&nbsp;计算机&nbsp;&nbsp;&nbsp;外语&nbsp;&nbsp;&nbsp;经营&nbsp;&nbsp;&nbsp;励志&nbsp;&nbsp;&nbsp;社科&nbsp;&nbsp;&nbsp;学术&nbsp;&nbsp;&nbsp;少儿&nbsp;&nbsp;&nbsp;艺术&nbsp;&nbsp;&nbsp;原版&nbsp;&nbsp;&nbsp;科技 &nbsp;&nbsp;&nbsp;考试&nbsp;&nbsp;&nbsp;生活百科  <font color="yellow">&nbsp;&nbsp;&nbsp;全部商品目录</font></font>
    		</td>
    	</table>
    	
    	<!-- 第三部分 -->
    	<table width="100%" bgcolor="#B6B684">
    		<tr>
    			<td align="right">
    				Search<input type="text"/><button type="button">搜索</button>
    			</td>
    		</tr>
    	</table>
    	
    	<!-- 第四部分 导引行 -->
    	<div align="right">首页 > 文学 > 图书列表</div>
    	
    	<!-- 第五部分 商品目录 -->
    	<h3>商品目录 > 文学类</h3>
    	<br/>
    	
    	<!-- 第六部分 共多少种商品 -->
    	<span>共 8 种商品</span>
    	<hr>
    	
    	<!-- 第七部分 图片 -->
    	<img  src="images/productlist.gif" width="100%"/>
    	
    	<!-- 第八部分 图书 -->
    	<table width="100%" align="center">
    		<tr>
    			<td align="center">
    				<img src="images/101.jpg"/>
    			</td>
    			<td align="center">
    				<img src="images/102.jpg"/>
    			</td>
    			<td  align="center">
    				<img src="images/103.jpg"/>
    			</td>
    			<td align="center">
    				<img src="images/104.jpg"/>
    			</td>
    		</tr>
    		<tr>
    			<td align="center">书名：时空穿行<br/>售价：24.5元</td>
    			<td align="center">书名：感悟<br/>售价：33.0元</td>
    			<td align="center">书名：赢在影响力<br/>售价：26.0元</td>
    			<td align="center">书名：谁动了我的奶酪<br/>售价：33.0元</td>
    		</tr>
    		<tr>
    			<td align="center">
    				<img src="images/105.jpg"/>
    			</td>
    			<td align="center">
    				<img src="images/106.jpg"/>
    			</td>
    			<td  align="center">
    				<img src="images/107.jpg"/>
    			</td>
    			<td align="center">
    				<img src="images/107.jpg"/>
    			</td>
    		</tr>
    		<tr>
    			<td align="center">书名：红鞋子<br/>售价：19.9元</td>
    			<td align="center">书名：秘密花园<br/>售价：20.0元</td>
    			<td align="center">书名：哈里波特<br/>售价：18.9元</td>
    			<td align="center">书名：小王子<br/>售价：30.5元</td>
    		</tr>
    	</table>
    	<hr>
    		<table border="1" width="1000">
		<tr bgcolor="#dddddd">
			<td align="center" width="80">商品缩图</td> 
			<td align="center">商品摘要</td>
			<td align="center" width="100">在线购买</td>
		</tr>
		<%
			String bm,name,price,info,img;
			//将查询结果集中的记录输出到页面上
			while (rs.next()){
				//从当前记录中读取各字段的值
				img = rs.getString("SP_PIC").trim();
				bm = rs.getString("SP_NO").trim();
				name = rs.getString("SP_NAME").trim();
				price = rs.getString("SP_PRICE").trim();
				info = rs.getString("SP_INFO").trim();


				out.println("<td><img src='"+ img +"' border=0 height=60 width=60></td>");
				out.println("<td>");
				out.println("商品编号："+ bm +"<br>");
				out.println("商品名称："+ name +"<br>");
				out.println("商品价格："+ price +"元<br>");
				out.println("商品简介："+ info +"<br>");
				out.println("</td>");
				out.println("<td><a href='buy.jsp?op=add&bm="+bm+"'>放入购物车</a></td>");
				out.println("</tr>");
			}
		%>		
	</table>
	<br>
	<a href="cart.jsp">查看购物车</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
	<a href="buy.jsp?op=clear">清空购物车</a>
    	<!-- 第九部分 最后 -->
    	<table width="100%" bgcolor="#EFEEDC">
    			<td align="center">欢迎来到</td>
    		</tr>
    		<tr>
    			<td align="center">购物商城</td>
    		</tr>
    	</table>
	
  </body>
</html>