package com.gaokao.dao;

import com.gaokao.entity.MajorObj;
import com.gaokao.entity.SchoolObj;
import org.apache.ibatis.annotations.Param;

/**
 * @author lurongzhi
 */
public interface SchoolDao {
    SchoolObj getSchoolByMajor(@Param("majorObj")MajorObj majorObj);
}
