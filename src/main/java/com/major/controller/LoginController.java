package com.major.controller;

import com.major.common.uitls.GsonUtils;
import com.major.entity.ResultObj;
import com.major.entity.UserObj;
import com.major.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author lurongzhi
 */
@Controller
@RequestMapping("/userAction")
public class LoginController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String login(HttpServletRequest request, HttpServletResponse response, UserObj uncheckedUser, HttpSession session) {
        ResultObj<Void> resultObj = userService.login(uncheckedUser, session);
        return GsonUtils.toJson(resultObj);
    }
}
