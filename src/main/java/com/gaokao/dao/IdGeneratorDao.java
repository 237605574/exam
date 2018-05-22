package com.gaokao.dao;


import com.gaokao.entity.IdGenObj;

import java.util.List;

/**
 * @author lurongzhi
 */
public interface IdGeneratorDao  {


    int update(IdGenObj idGenPojo);

    List<IdGenObj> findAll();

}
