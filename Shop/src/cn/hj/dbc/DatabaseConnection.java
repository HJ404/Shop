package cn.hj.dbc;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    private final String driver = "com.mysql.jdbc.Driver";
    private final String url ="jdbc:mysql://localhost/shop?useUnicode=true&characterEncoding=utf-8";
    private final String DB_name = "root";
    private final String DB_password = "123456";
    private Connection conn = null;

    public DatabaseConnection() {
        try {
            Class.forName(driver);                                      //加载数据库
            conn = DriverManager.getConnection(url,DB_name,DB_password);//链接数据库
        }catch (Exception e){
           // e.printStackTrace();
            System.out.print("连接失败");
        }
    }

    public Connection getconnection(){
        return this.conn;                                                 //取得数据库连接
    }

    public void close() throws Exception{                                  //关闭数据库
        if(this.conn!=null){
                this.conn.close();
        }
    }

//    public static void main(String[] args) throws Exception {
//        DatabaseConnection databaseConnection = new DatabaseConnection();
//        databaseConnection.getconnection();
//    }
}
