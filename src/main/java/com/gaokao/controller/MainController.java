package com.gaokao.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author lurongzhi
 * 负责界面的跳转
 */
@Controller
@RequestMapping("/gaokao")
public class MainController {
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    public String home() {
        return "test";
    }
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register() {
        return "register";
    }
    @RequestMapping(value = "/mbti_test", method = RequestMethod.GET)
    public String mbtiTest() {
        return "mbti_test";
    }
    @RequestMapping(value = "/recommend", method = RequestMethod.GET)
    public String recommend() {
        return "recommend";
    }
    @RequestMapping(value = "/pay", method = RequestMethod.GET)
    public String pay() {
        return "pay";
    }
}
