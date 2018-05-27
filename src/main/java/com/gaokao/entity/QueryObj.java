package com.gaokao.entity;

import com.gaokao.common.constants.RiskLevel;

/**
 * @author lurongzhi
 * <p>
 * 前端查询数据封装
 */
public class QueryObj {
    private String province;
    private Integer studentType; // 文理科。0:理科，1:文科
    private Integer rank;
    private Integer score;
    private String keyWord; //  专业关键词
    private Integer riskLevel; // 0:全部；1:风险低；2:中；3:高
    private Integer offset = 0;
    private String schoolProvince;

    public String getSchoolProvince() {
        return schoolProvince;
    }

    public void setSchoolProvince(String schoolProvince) {
        this.schoolProvince = schoolProvince;
    }

    public boolean checkRank() {
        return (rank != null) && checkOther();
    }

    public boolean checkScore() {
        return (score != null) && checkOther();
    }


    private boolean checkOther() {
        return (province != null) && (studentType != null) && (riskLevel != null) && (offset != null)
                && (riskLevel <= RiskLevel.LOW_RISK && riskLevel >= RiskLevel.ALL_LEVEL);
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
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

    public Integer getRank() {
        return rank;
    }

    public void setRank(Integer rank) {
        this.rank = rank;
    }

    public Integer getScore() {
        return score;
    }

    public void setScore(Integer score) {
        this.score = score;
    }

    public String getKeyWord() {
        return keyWord;
    }

    public void setKeyWord(String keyWord) {
        this.keyWord = keyWord;
    }

    public Integer getRiskLevel() {
        return riskLevel;
    }

    public void setRiskLevel(Integer riskLevel) {
        this.riskLevel = riskLevel;
    }
}
