package com.major.common.init;

import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;

/**
 * @author Administrator
 */
public class Init implements ApplicationListener<ContextRefreshedEvent> {
    private static ApplicationContext applicationContext;


    //  初始化操作
    @Override
    public void onApplicationEvent(ContextRefreshedEvent cre) {
        if (cre.getApplicationContext().getParent() == null) {
            //  在这里进行初始化操作
        }
    }

    public static  <T> T getBean(Class<T> beanClass) {
        return applicationContext.getBean(beanClass);
    }

}
