package com.gaokao.common.init;

import com.gaokao.common.idgenerator.IdMgr;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

/**
 * @author lurongzhi
 * 用于网站刚开始时启动初始化的服务
 */
public class Init implements ApplicationListener<ContextRefreshedEvent> {
    private static ApplicationContext applicationContext;


    //  初始化操作
    @Override
    public void onApplicationEvent(ContextRefreshedEvent cre) {
        if (cre.getApplicationContext().getParent() == null) {
            applicationContext = cre.getApplicationContext();
            //  在这里进行初始化操作
            //  初始化id
            IdMgr.getInstance().init();
        }
    }

    public static  <T> T getBean(Class<T> beanClass) {
        return applicationContext.getBean(beanClass);
    }

}
