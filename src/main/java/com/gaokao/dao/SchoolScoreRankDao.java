package com.gaokao.dao;

import com.gaokao.entity.QueryObj;
import com.gaokao.entity.ScoreRankObj;
import com.gaokao.entity.SchoolObj;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface SchoolScoreRankDao {
    List<ScoreRankObj> getScoreRankList(@Param("schoolObj")SchoolObj schoolObj , @Param("queryObj")QueryObj queryObj);
}
