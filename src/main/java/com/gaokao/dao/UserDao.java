package com.gaokao.dao;

import com.gaokao.entity.UserObj;
import org.apache.ibatis.annotations.Param;

/**
 * @author lurongzhi
 * <p>
 * 获取用户数据
 */
public interface UserDao {
    UserObj getUser(String userName);

    int insert(@Param("name") String name, @Param("password") String password);
}
