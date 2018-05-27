package com.gaokao.dao;

import com.gaokao.entity.MajorObj;
import com.gaokao.entity.QueryObj;
import com.gaokao.entity.SchoolObj;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface MajorDao {
    List<MajorObj> queryMajorByRank(@Param("queryObj") QueryObj queryObj);

    List<MajorObj> queryMajorByScore(@Param("queryObj") QueryObj queryObj);

    List<MajorObj> queryMajorBySchoolRank(@Param("queryObj") QueryObj queryObj, @Param("schoolObj") SchoolObj schoolObj);

    List<MajorObj> queryMajorBySchoolScore(@Param("queryObj") QueryObj queryObj, @Param("schoolObj") SchoolObj schoolObj);
}
