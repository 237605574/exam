package com.major.common.idgenerator;


import com.major.common.init.Init;
import com.major.dao.IdGeneratorDao;
import com.major.entity.IdGenObj;

/**
 * @author lurongzhi
 */
public class Generator {
    private IdGeneratorDao idGeneratorDao;
    private final IdGenObj idGenPojo;
    private long genId;

    public Generator(IdGenObj idGenPojo) {
        this.idGeneratorDao = Init.getBean(IdGeneratorDao.class);
        this.idGenPojo = idGenPojo;
        this.genId = idGenPojo.getCurrentId();
        idGenPojo.nextStep();
        this.idGeneratorDao.update(idGenPojo);

    }

    public Long genId() {
        synchronized (this.idGenPojo) {
            long curId = this.idGenPojo.getCurrentId();
            this.genId += 1;
            if (this.genId >= curId) {
                idGenPojo.nextStep();
                UpdateDb();
            }
            return this.genId;
        }
    }

    private void UpdateDb() {
        this.idGeneratorDao.update(idGenPojo);
    }
}
