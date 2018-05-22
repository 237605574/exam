package com.gaokao.service;

import com.gaokao.common.constants.SessionStr;
import com.gaokao.common.uitls.GsonUtils;
import com.gaokao.entity.QueryObj;
import com.gaokao.entity.RecommendObj;
import com.gaokao.entity.ResultObj;
import com.gaokao.entity.UserObj;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.MockitoAnnotations;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @author lurongzhi
 */
@RunWith(SpringJUnit4ClassRunner.class) //spring的单元测试
@ContextConfiguration({"classpath:spring/spring-*.xml"})    //上下文配置
@WebAppConfiguration("src/main/resources")
public class RecommendServiceTest {
    @Autowired
    private RecommendService recommendService;

    private MockHttpServletRequest request;
    private MockHttpServletResponse response;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.initMocks(this);
        request = new MockHttpServletRequest();
        response = new MockHttpServletResponse();
        HttpSession session = request.getSession();
        UserObj userObj = new UserObj();
        session.setAttribute(SessionStr.LOGIN_INFO, userObj);
    }

    @Test
    public void testQuery() {
        QueryObj queryObj = new QueryObj();
        queryObj.setOffset(0);
        queryObj.setProvince("广东");
        queryObj.setRank(5100);
        queryObj.setScore(611);
        queryObj.setRiskLevel(0);
        queryObj.setStudentType(0);
//        queryObj.setKeyWord("设计");
        ResultObj<List<RecommendObj>> resultObj = recommendService.queryByRank(queryObj, request.getSession());
        System.out.println(GsonUtils.toJson(resultObj));
    }
}
