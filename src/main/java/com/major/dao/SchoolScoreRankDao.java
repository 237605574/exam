package com.major.dao;

import com.major.entity.QueryObj;
import com.major.entity.ScoreRankObj;
import com.major.entity.SchoolObj;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface SchoolScoreRankDao {
    List<ScoreRankObj> getScoreRankList(@Param("schoolObj")SchoolObj schoolObj , @Param("queryObj")QueryObj queryObj);
}
