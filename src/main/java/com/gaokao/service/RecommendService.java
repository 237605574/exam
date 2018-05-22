package com.gaokao.service;

import com.gaokao.common.constants.ResultCodes;
import com.gaokao.common.constants.SessionStr;
import com.gaokao.common.uitls.TimeCostUtils;
import com.gaokao.dao.*;
import com.gaokao.entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lurongzhi
 */
@Service
public class RecommendService {
    @Autowired
    private MajorDao majorDao;

    @Autowired
    private MajorScoreRankDao majorScoreRankDao;
    @Autowired
    private SchoolDao schoolDao;
    @Autowired
    private SchoolScoreRankDao schoolScoreRankDao;


    public ResultObj<List<RecommendObj>> queryByRank(QueryObj queryObj, HttpSession session) {
        TimeCostUtils.getInstance().start();
        if (queryObj.getOffset() > 0 && !checkLogin(session)) {
            TimeCostUtils.getInstance().print();
            return new ResultObj<>(ResultCodes.PARAM_ERROR, "未登录，不可继续查询");
        }
        if (!queryObj.checkRank()) {
            TimeCostUtils.getInstance().print();
            return new ResultObj<>(ResultCodes.PARAM_ERROR);
        }
        TimeCostUtils.getInstance().setPoint("测试登录");
        //  得到根据学校归类过的专业信息
        List<MajorObj> majorObjList = majorDao.queryMajorByRank(queryObj);
        TimeCostUtils.getInstance().setPoint("查询major_info");
        //  计算风险
        for (MajorObj majorObj : majorObjList) {
            majorObj.genRankRisk(queryObj.getRank());
        }
        TimeCostUtils.getInstance().setPoint("计算风险");
        //  生成推荐列表
        List<RecommendObj> recommendObjList = getRecommendList(majorObjList, queryObj);
        TimeCostUtils.getInstance().setPoint("生成推荐列表");
        TimeCostUtils.getInstance().print();
        return new ResultObj<>(ResultCodes.SUCCESS, recommendObjList);
    }

    public ResultObj<List<RecommendObj>> queryByScore(QueryObj queryObj, HttpSession session) {
        if (queryObj.getOffset() > 0 && !checkLogin(session)) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR, "未登录，不可继续查询");
        }
        if (!queryObj.checkScore()) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR);
        }
        //  得到根据学校归类过的专业信息
        List<MajorObj> majorObjList = majorDao.queryMajorByScore(queryObj);
        //  计算风险
        for (MajorObj majorObj : majorObjList) {
            majorObj.genScoreRisk(queryObj.getScore());
        }
        //  生成推荐列表
        List<RecommendObj> recommendObjList = getRecommendList(majorObjList, queryObj);
        return new ResultObj<>(ResultCodes.SUCCESS, recommendObjList);
    }

    private List<RecommendObj> getRecommendList(List<MajorObj> majorObjList, QueryObj queryObj) {
        List<RecommendObj> recommendObjList = new ArrayList<>();
        RecommendObj recommendObj = null;
        Integer lastSchoolId = null;
        for (MajorObj majorObj : majorObjList) {
            //  获取学校信息
            if (lastSchoolId == null) {
                recommendObj = new RecommendObj();
                recommendObj.setSchool(getSchoolObj(majorObj, queryObj));
                lastSchoolId = majorObj.getSchoolId();
            } else if (!lastSchoolId.equals(majorObj.getSchoolId())) {
                //  开始新的学校分类
                recommendObjList.add(recommendObj);
                recommendObj = new RecommendObj();
                recommendObj.setSchool(getSchoolObj(majorObj, queryObj));
                lastSchoolId = majorObj.getSchoolId();
            }
            //  获取分数
            majorObj.setScoreRankList(majorScoreRankDao.getScoreRankList(majorObj));
            //  获取排名
            recommendObj.addMajor(majorObj);
        }
        //  把最后一个推荐加进去结果列表
        if (recommendObj != null) {
            recommendObjList.add(recommendObj);
        }
        return recommendObjList;
    }

    private SchoolObj getSchoolObj(MajorObj majorObj, QueryObj queryObj) {
        SchoolObj schoolObj;
        schoolObj = schoolDao.getSchoolByMajor(majorObj);
        schoolObj.setScoreRankList(schoolScoreRankDao.getScoreRankList(schoolObj, queryObj));
        return schoolObj;
    }


    private boolean checkLogin(HttpSession session) {
        return session.getAttribute(SessionStr.LOGIN_INFO) != null;
    }

}
