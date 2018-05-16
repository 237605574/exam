package com.major.dao;


import com.major.entity.IdGenObj;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface IdGeneratorDao  {


    int update(IdGenObj idGenPojo);

    List<IdGenObj> findAll();

}
