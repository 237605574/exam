package com.major.entity;

import java.util.List;

/**
 * @author lurongzhi
 */
public class SchoolObj {
    private String name;
    private Integer id;
    private Integer schoolRank;
    private String schoolPici;
    private String schoolType;
    private String schoolAddress;
    private List<ScoreRankObj> scoreRankList;


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

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
