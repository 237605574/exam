package com.major.dao;

import com.major.entity.UserObj;

/**
 * @author lurongzhi
 * <p>
 * 获取用户数据
 */
public interface UserDao {
    UserObj getUser(String UserName);
}
