package com.gaokao.entity;

/**
 * @author lurongzhi
 */
public class ScoreRankObj {
    private Integer maxRank;
    private Integer minRank;
    private Integer avgRank;
    private Integer maxScore;
    private Integer minScore;
    private Integer avgScore;
    private Integer year;

    public Integer getMaxScore() {
        return maxScore;
    }

    public void setMaxScore(Integer maxScore) {
        this.maxScore = maxScore;
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

    public Integer getMaxRank() {
        return maxRank;
    }

    public void setMaxRank(Integer maxRank) {
        this.maxRank = maxRank;
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

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }
}
