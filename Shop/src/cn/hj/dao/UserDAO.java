package cn.hj.dao;

import cn.hj.vo.User;

public interface UserDAO {
    /**
     *数据库的查询操作
     * @param user
     * @throws Exception
     */
    public void findUser(User user) throws Exception;

    /**
     * 数据库的增加操作
     * @param user
     * @throws Exception
     */
    public void doCreate(User user) throws Exception;
}
