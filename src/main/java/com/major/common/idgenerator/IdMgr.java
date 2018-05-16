package com.major.common.idgenerator;


import com.major.common.init.Init;
import com.major.dao.IdGeneratorDao;
import com.major.entity.IdGenObj;

import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @author lurongzhi
 */
public class IdMgr {
    private  final String USER_KEY = "user";
    private ConcurrentHashMap<String, Generator> generatorMap = new ConcurrentHashMap<>();

    public static IdMgr getInstance() {
        return SingletonHolder.instance;
    }

    private IdMgr() {
    }

    private static class SingletonHolder {
        private static final IdMgr instance = new IdMgr();
    }

    public void init() {
        IdGeneratorDao idgenDao = Init.getBean(IdGeneratorDao.class);
        List<IdGenObj> idGenObjs = idgenDao.findAll();
        for (IdGenObj idGenPojo : idGenObjs) {
//            System.out.println(idGenPojo.getName() + " " +
//                    idGenPojo.getCurrentId() + " " +
//                    idGenPojo.getStep());
            Generator generator = new Generator(idGenPojo);
            this.generatorMap.put(idGenPojo.getName(),generator);
        }

    }

    private Long genId(String key) {
        Generator generator = generatorMap.get(key);
        if (generator == null) {
            return -1L;
        }
        return generator.genId();
    }

    public Long genUserId(){
        return genId(USER_KEY);
    }
}
