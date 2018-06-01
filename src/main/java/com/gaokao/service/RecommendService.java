package com.gaokao.service;

import com.gaokao.common.constants.Authority;
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
        ResultObj<List<RecommendObj>> resultObj = checkQuery(queryObj, session);
        if (!resultObj.isSuccess()) {
            return resultObj;
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

    private ResultObj<List<RecommendObj>> checkQuery(QueryObj queryObj, HttpSession session) {
        if (queryObj.getOffset() > 0) {
            if (!checkLogin(session)) {
                TimeCostUtils.getInstance().print();
                return new ResultObj<>(ResultCodes.PARAM_ERROR, "未登录，不可继续查询");
            }
            UserObj userObj = (UserObj) session.getAttribute(SessionStr.LOGIN_INFO);

            if (!checkVip(userObj)) {
                return new ResultObj<>(ResultCodes.COMMON_ERROR, "开通VIP使用完整功能");
            }
        }
        return new ResultObj<>(ResultCodes.SUCCESS);
    }

    public ResultObj<List<RecommendObj>> queryByScore(QueryObj queryObj, HttpSession session) {
        ResultObj<List<RecommendObj>> resultObj = checkQuery(queryObj, session);
        if (!resultObj.isSuccess()) {
            return resultObj;
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

    public ResultObj<List<RecommendObj>> schoolRankRecommend(QueryObj queryObj, HttpSession session) {
        TimeCostUtils.getInstance().start();
        ResultObj<List<RecommendObj>> resultObj = checkQuery(queryObj, session);
        if (!resultObj.isSuccess()) {
            TimeCostUtils.getInstance().print();
            return resultObj;
        }
        if (!queryObj.checkRank()) {
            TimeCostUtils.getInstance().print();
            return new ResultObj<>(ResultCodes.PARAM_ERROR);
        }
        TimeCostUtils.getInstance().setPoint("检测查询是否正确");
        List<RecommendObj> recommendObjList = new ArrayList<>();
        //  获取学校
        List<SchoolObj> schoolObjList = schoolDao.querySchoolByRank(queryObj);
        TimeCostUtils.getInstance().setPoint("获得学校数据");
        for (SchoolObj schoolObj : schoolObjList) {
            //  计算风险
            schoolObj.genRankRisk(queryObj.getRank());
            TimeCostUtils.getInstance().setPoint("计算风险");
            //  获得历年分数线
            schoolObj.setScoreRankList(schoolScoreRankDao.getScoreRankList(schoolObj, queryObj));
            TimeCostUtils.getInstance().setPoint("获得学校分数");
            //  获取专业信息
            List<MajorObj> majorObjList = majorDao.queryMajorBySchoolRank(queryObj, schoolObj);
            TimeCostUtils.getInstance().setPoint("获得专业信息");
            //  获取专业排名
            for(MajorObj majorObj:majorObjList){
                //  获取分数
                majorObj.setScoreRankList(majorScoreRankDao.getScoreRankList(majorObj));
                //  计算风险
                majorObj.genRankRisk(queryObj.getRank());
            }
            TimeCostUtils.getInstance().setPoint("专业分数获取");
            RecommendObj recommendObj = new RecommendObj(schoolObj, majorObjList);
            recommendObjList.add(recommendObj);
        }
        TimeCostUtils.getInstance().print();
        return new ResultObj<>(ResultCodes.SUCCESS, recommendObjList);
    }

    public ResultObj<List<RecommendObj>> schoolScoreRecommend(QueryObj queryObj, HttpSession session) {
        ResultObj<List<RecommendObj>> resultObj = checkQuery(queryObj, session);
        if (!resultObj.isSuccess()) {
            return resultObj;
        }
        if (!queryObj.checkScore()) {
            return new ResultObj<>(ResultCodes.PARAM_ERROR);
        }
        List<RecommendObj> recommendObjList = new ArrayList<>();
        //  获取学校分数推荐
        List<SchoolObj> schoolObjList = schoolDao.querySchoolByScore(queryObj);
        for (SchoolObj schoolObj : schoolObjList) {
            //  计算风险
            schoolObj.genScoreRisk(queryObj.getScore());
            //  获得历年分数线
            schoolObj.setScoreRankList(schoolScoreRankDao.getScoreRankList(schoolObj, queryObj));
            //  获取专业信息
            List<MajorObj> majorObjList = majorDao.queryMajorBySchoolScore(queryObj, schoolObj);
            for(MajorObj majorObj:majorObjList){
                //  获取分数
                majorObj.setScoreRankList(majorScoreRankDao.getScoreRankList(majorObj));
                //  计算风险
                majorObj.genScoreRisk(queryObj.getScore());
            }
            RecommendObj recommendObj = new RecommendObj(schoolObj, majorObjList);
            recommendObjList.add(recommendObj);
        }
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
            TimeCostUtils.getInstance().setPoint("开始获取专业分数");
            majorObj.setScoreRankList(majorScoreRankDao.getScoreRankList(majorObj));
            TimeCostUtils.getInstance().setPoint("获取专业分数");
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

    private boolean checkVip(UserObj user) {
        return user.getAuthority() != null && user.getAuthority().equals(Authority.VIP);
    }

}
