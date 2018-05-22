package com.gaokao.dao;

import com.gaokao.entity.MajorObj;
import com.gaokao.entity.ScoreRankObj;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface MajorScoreRankDao {
    List<ScoreRankObj> getScoreRankList(@Param("majorObj")MajorObj majorObj);
}
