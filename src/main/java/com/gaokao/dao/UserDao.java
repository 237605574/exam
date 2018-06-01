package com.gaokao.dao;

import com.gaokao.entity.UserObj;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

/**
 * @author lurongzhi
 * <p>
 * 获取用户数据
 */
public interface UserDao {
    UserObj getUser(String userName);

    int insert(@Param("name") String name, @Param("password") String password);

    int pay(@Param("userName") String name, @Param("payDays") Date payDays);

    int updateVipState();
}
