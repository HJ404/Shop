<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%
	//装载MySQL5.5的JDBC驱动
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	//建立数据库连接
	String url ="jdbc:mysql://localhost:3306/shop?user=root&password=123456&useUnicode=true&characterEncoding=gb2312";
	Connection conn= DriverManager.getConnection(url);
	PreparedStatement pstat = null;
	ResultSet rs = null;
	
	String sql = null;
	String op = request.getParameter("op");
	
	//将商品放入购物车
	if (op.equals("add")){
		//从商品库中取出所选购商品的数据
		String bm = request.getParameter("bm");
		String name=null,price=null;
		sql = "select * from shop.show where SP_NO=?";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1,bm);
		rs = pstat.executeQuery();
		if (rs.next()){
			name = rs.getString("SP_NAME").trim();
			price = rs.getString("SP_PRICE").trim();
		}
		rs.close();
		pstat.close();
		
		//将所选购商品加入到购物车中
		sql = "insert into shop.cart(SP_NAME,SP_PRICE,BUY_NUM,COUNT) values(?,?,?,?)";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1,name);
		pstat.setString(2,price);
		pstat.setInt(3,1);
		pstat.setString(4,price);
		pstat.executeUpdate();
		pstat.close();
		
		//关闭数据库连接
		conn.close();
		
		//重定向到购物车页面
		response.sendRedirect("cart.jsp");
	}
	
	//更改商品的数量
	if (op.equals("update")){
		int id = Integer.parseInt(request.getParameter("id"));
		int num = Integer.parseInt(request.getParameter("num"));
		double price=Double.parseDouble(request.getParameter("price"));
		sql = "update shop.cart set BUY_NUM = ?, COUNT = ? where ID=?";
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1,num);
		pstat.setString(2,new Double(price*num).toString());
		pstat.setInt(3,id);
		pstat.executeUpdate();
		pstat.close();
		
		//关闭数据库连接
		conn.close();
		
		//重定向到购物车页面
		response.sendRedirect("cart.jsp");
	}	
	
	//将商品退回到商品架(将商品从购物车中删除)
	if (op.equals("del")){
		int id = Integer.parseInt(request.getParameter("id"));
		sql = "delete from shop.cart where ID=?";
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1,id);
		pstat.executeUpdate();
		pstat.close();	
		
		//关闭数据库连接
		conn.close();
		
		//重定向到购物车页面
		response.sendRedirect("cart.jsp");
	}
	
	//清空购物车
	if (op.equals("clear")){
		sql = "delete from shop.cart";
		pstat = conn.prepareStatement(sql);
		pstat.executeUpdate();
		pstat.close();
		
		//关闭数据库连接
		conn.close();
		
		//重定向到购物车页面
		response.sendRedirect("cart.jsp");
	}
%> 
