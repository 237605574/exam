package com.major.dao;

import com.major.entity.MajorObj;
import com.major.entity.SchoolObj;
import org.apache.ibatis.annotations.Param;

/**
 * @author lurongzhi
 */
public interface SchoolDao {
    SchoolObj getSchoolByMajor(@Param("majorObj")MajorObj majorObj);
}
