package cn.edu.hpu.util;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class conn {
	public  Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf-8";
		String user="root";
		String password="123456";
		Connection conn= DriverManager.getConnection(url,user,password);
		System.out.println(conn.getMetaData().getUserName());
		return conn;
		}	
		 catch (Exception e) {
		// TODO Auto-generated catch block
		System.out.println("连接出错");
		return null;
		}
	}
		}




