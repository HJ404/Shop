package cn.hj.Proxy;

import cn.hj.dbc.DatabaseConnection;
import cn.hj.impl.UserDAOImpl;
import cn.hj.vo.User;
import cn.hj.dao.UserDAO;

public class ImplDAOProxy implements UserDAO {
    private DatabaseConnection dbc = null;                          //取得数据连接类
    private UserDAO dao =null;                                      //声明DAO对象
    public ImplDAOProxy () throws Exception{                        //构造方法中实例化连接，同时实例化DAO对象
        this.dbc = new DatabaseConnection();                        //连接数据库
        this.dao = new UserDAOImpl(this.dbc.getconnection());
    }

    @Override
    public void findUser(User user) throws Exception {
        this.dao.findUser(user);
        this.dbc.close();
    }

    @Override
    public void doCreate(User user) throws Exception{
            this.dao.doCreate(user);
            this.dbc.close();
    }
}
