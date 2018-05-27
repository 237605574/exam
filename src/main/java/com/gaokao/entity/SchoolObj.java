package com.gaokao.entity;

import com.gaokao.common.constants.RiskLevel;

import java.util.List;

/**
 * @author lurongzhi
 */
public class SchoolObj {
    private String name;
    private Integer schoolId;
    private Integer schoolRank;
    private String schoolPici;
    private String schoolType;
    private String schoolAddress;
    private List<ScoreRankObj> scoreRankList;

    private Integer maxRank;
    private Integer highRank;
    private Integer middleRank;
    private Integer lowRank;
    private Integer maxScore;
    private Integer highScore;
    private Integer middleScore;
    private Integer lowScore;


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


    public List<ScoreRankObj> getScoreRankList() {
        return scoreRankList;
    }

    public void setScoreRankList(List<ScoreRankObj> scoreRankList) {
        this.scoreRankList = scoreRankList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(Integer schoolId) {
        this.schoolId = schoolId;
    }

    public Integer getSchoolRank() {
        return schoolRank;
    }

    public void setSchoolRank(Integer schoolRank) {
        this.schoolRank = schoolRank;
    }

    public String getSchoolPici() {
        return schoolPici;
    }

    public void setSchoolPici(String schoolPici) {
        this.schoolPici = schoolPici;
    }

    public String getSchoolType() {
        return schoolType;
    }

    public void setSchoolType(String schoolType) {
        this.schoolType = schoolType;
    }

    public String getSchoolAddress() {
        return schoolAddress;
    }

    public void setSchoolAddress(String schoolAddress) {
        this.schoolAddress = schoolAddress;
    }
}
