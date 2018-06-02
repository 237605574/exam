package com.gaokao.controller;

import com.gaokao.common.uitls.GsonUtils;
import com.gaokao.entity.PayObj;
import com.gaokao.entity.ResultObj;
import com.gaokao.entity.UserObj;
import com.gaokao.service.UserService;
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
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String login(HttpServletRequest request, HttpServletResponse response, UserObj uncheckedUser, HttpSession session) {
        ResultObj<Void> resultObj = userService.login(uncheckedUser, session);
        return GsonUtils.toJson(resultObj);
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String register(HttpServletRequest request, HttpServletResponse response, UserObj uncheckedUser, HttpSession session) {
        ResultObj<Void> resultObj = userService.register(uncheckedUser, session);
        return GsonUtils.toJson(resultObj);
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        userService.logout(session);
        return "home";
    }

    @RequestMapping(value = "/getUserInfo", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String getUserInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        ResultObj<UserObj> resultObj = userService.getUserInfo(session);
        return GsonUtils.toJson(resultObj);
    }

    @RequestMapping(value = "/pay", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String pay(HttpServletRequest request, HttpServletResponse response, PayObj payInfo, HttpSession session) {
        ResultObj<Void> resultObj = userService.pay(payInfo, session);
        return GsonUtils.toJson(resultObj);
    }
}
