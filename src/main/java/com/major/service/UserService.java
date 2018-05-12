package com.major.service;

import com.major.common.constants.ResultCodes;
import com.major.common.constants.SessionStr;
import com.major.dao.UserDao;
import com.major.entity.ResultObj;
import com.major.entity.UserObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

/**
 * @author lurongzhi
 */
@Service
public class UserService {
    @Autowired
    private UserDao userDao;

    public ResultObj<Void> login(UserObj uncheckUser, HttpSession session) {
        if (uncheckUser == null || uncheckUser.getName() == null || uncheckUser.getPassword() == null) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR);
        }
        UserObj dbUser = userDao.getUser(uncheckUser.getName());
        if (dbUser == null || !dbUser.getPassword().equals(uncheckUser.getPassword())) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR, "密码错误");
        }
        session.setAttribute(SessionStr.LOGIN_INFO, dbUser);
        return new ResultObj<>(ResultCodes.SUCCESS);
    }
}
