package cn.edu.hpu.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.edu.hpu.model.User;
import cn.edu.hpu.util.conn;

public class userservice {
	private Connection conn;
	private PreparedStatement pstmt;

	public userservice() {
		conn = new cn.edu.hpu.util.conn().getCon();
	}
	
	public boolean valiUser(User user) {
		try {

		pstmt= conn.prepareStatement("select * from user where username=? and password=?");
		pstmt.setString(1,user.getUsername());
		pstmt.setString(2,user.getPassword());
		ResultSet rs=pstmt.executeQuery();
		if(rs.next())
			return true;
		else
			return false;
	} catch (SQLException e)
	{
		e.printStackTrace();
		return false;
	}
}
	}
