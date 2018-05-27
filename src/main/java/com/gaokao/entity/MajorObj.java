package com.gaokao.entity;

import com.gaokao.common.constants.RiskLevel;

import java.util.List;

/**
 * @author lurongzhi
 * 对应数据库中的 专业 表格
 */
public class MajorObj {

    private String name;
    private Integer majorId;
    private Integer schoolId;
    private String province;
    private Integer studentType;    //文理科

    private Integer maxRank;
    private Integer highRank;
    private Integer middleRank;
    private Integer lowRank;
    private Integer maxScore;
    private Integer highScore;
    private Integer middleScore;
    private Integer lowScore;

    private List<ScoreRankObj> scoreRankList;
    private Integer riskLevel = RiskLevel.HIGH_RISK;

    public void genRankRisk(Integer rank) {
        if (middleRank == null || highRank == null || lowRank == null || maxRank == null) {
            riskLevel = RiskLevel.HIGH_RISK;
            return;
        }
        if (rank < middleRank) {
            riskLevel = RiskLevel.LOW_RISK;
        } else if (rank < highRank) {
            riskLevel = RiskLevel.MIDDLE_RISK;
        } else {
            riskLevel = RiskLevel.HIGH_RISK;
        }
    }

    public void genScoreRisk(Integer score) {
        if (middleScore == null || highScore == null || lowScore == null || maxScore == null) {
            riskLevel = RiskLevel.HIGH_RISK;
            return;
        }
        if (score >= middleScore) {
            riskLevel = RiskLevel.LOW_RISK;
        } else if (score >= highScore) {
            riskLevel = RiskLevel.MIDDLE_RISK;
        } else {
            riskLevel = RiskLevel.HIGH_RISK;
        }
    }

    public Integer getRiskLevel() {
        return riskLevel;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getMajorId() {
        return majorId;
    }

    public void setMajorId(Integer majorId) {
        this.majorId = majorId;
    }

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public Integer getStudentType() {
        return studentType;
    }

    public void setStudentType(Integer studentType) {
        this.studentType = studentType;
    }


    public List<ScoreRankObj> getScoreRankList() {
        return scoreRankList;
    }

    public void setScoreRankList(List<ScoreRankObj> scoreRankList) {
        this.scoreRankList = scoreRankList;
    }

    public Integer getMaxRank() {
        return maxRank;
    }

    public void setMaxRank(Integer maxRank) {
        this.maxRank = maxRank;
    }

    public Integer getHighRank() {
        return highRank;
    }

    public void setHighRank(Integer highRank) {
        this.highRank = highRank;
    }

    public Integer getMiddleRank() {
        return middleRank;
    }

    public void setMiddleRank(Integer middleRank) {
        this.middleRank = middleRank;
    }

    public Integer getLowRank() {
        return lowRank;
    }

    public void setLowRank(Integer lowRank) {
        this.lowRank = lowRank;
    }

    public Integer getMaxScore() {
        return maxScore;
    }

    public void setMaxScore(Integer maxScore) {
        this.maxScore = maxScore;
    }

    public Integer getHighScore() {
        return highScore;
    }

    public void setHighScore(Integer highScore) {
        this.highScore = highScore;
    }

    public Integer getMiddleScore() {
        return middleScore;
    }

    public void setMiddleScore(Integer middleScore) {
        this.middleScore = middleScore;
    }

    public Integer getLowScore() {
        return lowScore;
    }

    public void setLowScore(Integer lowScore) {
        this.lowScore = lowScore;
    }
}
