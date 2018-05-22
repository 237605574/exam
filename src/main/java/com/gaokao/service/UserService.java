package com.gaokao.service;

import com.gaokao.common.constants.ResultCodes;
import com.gaokao.common.constants.SessionStr;
import com.gaokao.dao.UserDao;
import com.gaokao.entity.ResultObj;
import com.gaokao.entity.UserObj;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Enumeration;

/**
 * @author lurongzhi
 */
@Service
public class UserService {
    @Autowired
    private UserDao userDao;

    public ResultObj<Void> login(UserObj uncheckUser, HttpSession session) {
        if (uncheckUser == null || uncheckUser.getName() == null || uncheckUser.getPassword() == null) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR, "用户参数错误");
        }
        UserObj dbUser = userDao.getUser(uncheckUser.getName());
        if (dbUser == null || !dbUser.getPassword().equals(uncheckUser.getPassword())) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR, "密码错误");
        }
        session.setAttribute(SessionStr.LOGIN_INFO, dbUser);
        return new ResultObj<>(ResultCodes.SUCCESS);
    }

    public ResultObj<Void> register(UserObj uncheckUser, HttpSession session) {
        if (uncheckUser == null || uncheckUser.getName() == null || uncheckUser.getPassword() == null) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR, "用户参数错误");
        }
        int insertResult = userDao.insert(uncheckUser.getName(), uncheckUser.getPassword());
        if (insertResult <= 0) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR, "用户名重复，请换一个用户名");
        }
        UserObj dbUser = userDao.getUser(uncheckUser.getName());
        if (dbUser == null) {
            return new ResultObj<>(ResultCodes.DATABASE_ERROR, "注册失败");
        }
        session.setAttribute(SessionStr.LOGIN_INFO, dbUser);
        return new ResultObj<>(ResultCodes.SUCCESS);
    }

    public ResultObj<Void> logout( HttpSession session) {
        //  移除所有session
        Enumeration<String> attributeNames = session.getAttributeNames();
        while (attributeNames.hasMoreElements()) {
            session.removeAttribute(attributeNames.nextElement());
        }
        return new ResultObj<>(ResultCodes.SUCCESS);
    }

    public ResultObj<UserObj> getUserInfo(HttpSession session) {
        UserObj userObj = (UserObj) session.getAttribute(SessionStr.LOGIN_INFO);
        if (userObj == null) {
            return new ResultObj<>(ResultCodes.COMMON_ERROR, "用户未登录");
        }
        UserObj safeUser = new UserObj();
        safeUser.setName(userObj.getName());
        safeUser.setAuthority(userObj.getAuthority());
        return new ResultObj<>(ResultCodes.SUCCESS, safeUser);
    }
}
