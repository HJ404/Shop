package cn.hj.Factory;

import cn.hj.Proxy.ImplDAOProxy;
import cn.hj.dao.UserDAO;

public class DAOFactory {
    public static UserDAO getUserDAOInstance() throws Exception {   //取得DAO接口的实例
        return new ImplDAOProxy();                                  //取得代理类的实例
    }
}
