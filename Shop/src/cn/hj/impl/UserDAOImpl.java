package cn.hj.impl;

import cn.hj.vo.User;
import cn.hj.dao.UserDAO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAOImpl implements UserDAO {
    private Connection conn = null;             //数据库连接对象
    private PreparedStatement pst= null;        //数据库操作对象
    public UserDAOImpl(Connection conn){        //取得数据库对象
        this.conn = conn;
    }

    @Override
    public void findUser(User user) throws SQLException{
        String sql = "select * from user where username=? and password= ?";
        this.pst = this.conn.prepareStatement(sql);
        this.pst.setString(1,user.getUsername());
        this.pst.setString(2,user.getPassword());
        ResultSet rs = this.pst.executeQuery();
//        if (rs.next()){
//            user.setUsername(rs.getString(1));
//            user.setPassword(rs.getString(2));
//        }
        rs.close();
        this.pst.close();
    }

    @Override
    public void doCreate(User user) throws SQLException {
        String sql = "insert into user(username,password,Email,phone,fun) values (?,?,?,?,?)";
        this.pst = this.conn.prepareStatement(sql);
        this.pst.setString(1,user.getUsername());
        this.pst.setString(2,user.getPassword());
        this.pst.setString(3,user.getEamil());
        this.pst.setString(4,user.getPhone());
        this.pst.setString(5,user.getFun());
        this.pst.executeUpdate();
        this.pst.close();
    }
}
