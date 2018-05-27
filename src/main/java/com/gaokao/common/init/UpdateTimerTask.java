package com.gaokao.common.init;

import com.gaokao.entity.ResultObj;
import com.gaokao.service.UserService;

import java.util.Timer;
import java.util.TimerTask;

/**
 * @author lurongzhi
 */
public class UpdateTimerTask {
    private UserService userService;
    private Timer timer = new Timer();
    private Long timerSecond = 5L; // 方便测试，五秒更新VIP状态

    public static UpdateTimerTask getInstance() {
        return SingletonHolder.instance;
    }

    private UpdateTimerTask() {
    }

    private static class SingletonHolder {
        private static final UpdateTimerTask instance = new UpdateTimerTask();
    }

    public void init() {
        userService = Init.getBean(UserService.class);
    }

    public void start() {
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                ResultObj<Integer> result = userService.updateVipState();
                System.out.println("upadte:" + result.getData());
            }
        }, 0, timerSecond * 1000);
    }

    public void restart() {
        timer.cancel();
        start();
    }
}
