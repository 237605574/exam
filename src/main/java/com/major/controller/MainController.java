package com.major.controller;

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
        return "mbti_test";
    }
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String index() {
        return "index";
    }
}
