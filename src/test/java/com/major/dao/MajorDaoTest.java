package com.major.dao;

import com.major.entity.MajorObj;
import com.major.entity.QueryObj;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.List;

/**
 * @author lurongzhi
 */
@RunWith(SpringJUnit4ClassRunner.class) //spring的单元测试
@ContextConfiguration({"classpath:spring/spring-*.xml"})    //上下文配置
@WebAppConfiguration("src/main/resources")
public class MajorDaoTest {
    @Autowired
    private MajorDao majorDao;

    @Test
    public void testQueryRank(){
        QueryObj queryObj = new QueryObj();
        queryObj.setOffset(0);
        queryObj.setProvince("广东");
        queryObj.setSchoolProvince("安徽");
        queryObj.setRank(5100);
        queryObj.setScore(611);
        queryObj.setRiskLevel(0);
        queryObj.setStudentType(0);
//        queryObj.setKeyWord("设计");
        List<MajorObj> majorObjList = majorDao.queryMajorByRank(queryObj);
        for(MajorObj majorObj:majorObjList){
            System.out.println("----------------------------");
            System.out.println("school id:"+ majorObj.getSchoolId());
            System.out.println("major name:"+ majorObj.getName());
            System.out.println("major id:" + majorObj.getMajorId());
            System.out.println("province:"+ majorObj.getProvince());
        }
    }
}
