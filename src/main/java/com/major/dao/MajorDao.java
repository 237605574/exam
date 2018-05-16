package com.major.dao;

import com.major.entity.MajorObj;
import com.major.entity.QueryObj;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface MajorDao {
    List<MajorObj> queryMajorByRank(@Param("queryObj") QueryObj queryObj);
    List<MajorObj> queryMajorByScore(@Param("queryObj") QueryObj queryObj);
}
