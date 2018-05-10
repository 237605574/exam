package com.major.entity;

/**
 * @author lurongzhi
 * 专业推荐中返回的数据，对应数据库中的 专业 表格
 */
public class MajorObj {
    private String name;
    private Integer minScore;
    private Integer avgScore;
    private Integer maxScore;
    private Integer minRank;
    private Integer avgRank;
    private Integer maxRank;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getMinScore() {
        return minScore;
    }

    public void setMinScore(Integer minScore) {
        this.minScore = minScore;
    }

    public Integer getAvgScore() {
        return avgScore;
    }

    public void setAvgScore(Integer avgScore) {
        this.avgScore = avgScore;
    }

    public Integer getMaxScore() {
        return maxScore;
    }

    public void setMaxScore(Integer maxScore) {
        this.maxScore = maxScore;
    }

    public Integer getMinRank() {
        return minRank;
    }

    public void setMinRank(Integer minRank) {
        this.minRank = minRank;
    }

    public Integer getAvgRank() {
        return avgRank;
    }

    public void setAvgRank(Integer avgRank) {
        this.avgRank = avgRank;
    }

    public Integer getMaxRank() {
        return maxRank;
    }

    public void setMaxRank(Integer maxRank) {
        this.maxRank = maxRank;
    }
}
