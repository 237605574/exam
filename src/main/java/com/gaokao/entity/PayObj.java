package com.gaokao.entity;

import java.util.Calendar;
import java.util.Date;

/**
 * @author lurongzhi
 */
public class PayObj {
    private Long userid;
    private String userName;
    private Integer channelId;
    private Integer money;
    private Integer payDays;


    public Date genVipEndDate() {
        Date vipEndDate = new Date();
        if (payDays == null) {
            return null;
        }
        Calendar cal = Calendar.getInstance();

        cal.setTime(vipEndDate);

        cal.add(Calendar.DATE, payDays);

        vipEndDate = cal.getTime();
        return vipEndDate;

    }

    public Long getUserId() {
        return userid;
    }

    public void setUserId(Long userid) {
        this.userid = userid;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public Integer getChannelId() {
        return channelId;
    }

    public void setChannelId(Integer channelId) {
        this.channelId = channelId;
    }

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Integer getPayDays() {
        return payDays;
    }

    public void setPayDays(Integer payDays) {
        this.payDays = payDays;
    }
}
