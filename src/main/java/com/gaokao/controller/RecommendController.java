package com.gaokao.controller;

import com.gaokao.common.uitls.GsonUtils;
import com.gaokao.entity.QueryObj;
import com.gaokao.service.RecommendService;
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
@RequestMapping("/recommendAction")
public class RecommendController {
    @Autowired
    private RecommendService recommendService;


    @RequestMapping(value = "/rankRecommend", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String rankRecommend(HttpServletRequest request, HttpServletResponse response, QueryObj queryObj, HttpSession session) {
        return GsonUtils.toJson(recommendService.queryByRank(queryObj, session));
    }

    @RequestMapping(value = "/scoreRecommend", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String scoreRecommend(HttpServletRequest request, HttpServletResponse response, QueryObj queryObj, HttpSession session) {
        return GsonUtils.toJson(recommendService.queryByScore(queryObj, session));
    }

    @RequestMapping(value = "/schoolRankRecommend", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String schoolRankRecommend(HttpServletRequest request, HttpServletResponse response, QueryObj queryObj, HttpSession session) {
        return GsonUtils.toJson(recommendService.schoolRankRecommend(queryObj, session));
    }

    @RequestMapping(value = "/schoolScoreRecommend", method = RequestMethod.POST, produces = {
            "application/json; charset=utf-8"})
    @ResponseBody
    public String schoolScoreRecommend(HttpServletRequest request, HttpServletResponse response, QueryObj queryObj, HttpSession session) {
        return GsonUtils.toJson(recommendService.schoolScoreRecommend(queryObj, session));
    }

}
