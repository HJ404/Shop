
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>网上购物</title>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
  </head>
  
  <body>
    	<!-- 最上面的部分 购物车部分-->
    	<marquee ><font color="#FF0000">欢迎来到图书购物商城</font></marquee>
    	<table width="80%">
    		<td>
    			<img  src="images/logo.png"  width="50%" length="50%">
    		</td>
    		<td>
    			<img src=images/cart.gif width="50" align="middle">
    			<a href="addUser.jsp">用户注册</a>|<a href="login.jsp">我的账号</a>|<a href="cart.jsp">购物车</a>|<a href="Order.jsp">订单管理</a>
    		</td>
    		<td >
    			<img  src="images/girl.png"  width="20%" length="10%" align="right" >
    		</td>
    		<td ><a  align="right">游客</a></td>
    		<td ><a href="login.jsp" align="right">登录</a></td>
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
    	<div align="right">首页 > 旅游 > 图书列表</div>
    	
    	<!-- 第五部分 商品目录 -->
    	<h3>商品目录</h3>
    	<hr/>

    	<!-- 第六部分 文学类 -->
    	<h3>文学类</h3>
    	<br/>
    	
    	<!-- 第七部分 共多少种商品 -->
    	<span>共 8 种商品</span>
    	<hr>
    	
    	<!-- 第八部分 图片 -->
    	<img  src="images/productlist.gif" width="100%"/>
    	
    	<!-- 第九部分 图书 -->
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
    	
    	<!-- 第十部分 最后 -->
    	<table width="100%" bgcolor="#EFEEDC">
    			<td align="center">欢迎来到</td>
    		</tr>
    		<tr>
    			<td align="center">购物商城</td>
    		</tr>
    	</table>
	
  </body>
</html>