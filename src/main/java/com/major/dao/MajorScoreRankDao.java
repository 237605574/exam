package com.major.dao;

import com.major.entity.MajorObj;
import com.major.entity.ScoreRankObj;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface MajorScoreRankDao {
    List<ScoreRankObj> getScoreRankList(@Param("majorObj")MajorObj majorObj);
}
