package com.gaokao.dao;

import com.gaokao.entity.MajorObj;
import com.gaokao.entity.QueryObj;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface MajorDao {
    List<MajorObj> queryMajorByRank(@Param("queryObj") QueryObj queryObj);
    List<MajorObj> queryMajorByScore(@Param("queryObj") QueryObj queryObj);
}
