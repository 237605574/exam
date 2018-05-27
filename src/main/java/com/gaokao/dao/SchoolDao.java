package com.gaokao.dao;

import com.gaokao.entity.MajorObj;
import com.gaokao.entity.QueryObj;
import com.gaokao.entity.SchoolObj;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface SchoolDao {
    SchoolObj getSchoolByMajor(@Param("majorObj") MajorObj majorObj);

    List<SchoolObj> querySchoolByRank(@Param("queryObj") QueryObj queryObj);

    List<SchoolObj> querySchoolByScore(@Param("queryObj") QueryObj queryObj);
}
