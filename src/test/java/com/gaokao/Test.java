package com.gaokao;

import com.gaokao.entity.MajorObj;
import com.gaokao.entity.RecommendObj;
import com.gaokao.entity.SchoolObj;

import java.util.Arrays;

/**
 * @author lurongzhi
 */
public class Test {
    public static void main(String[] args) {
//        recommendTest();
        String str;
        str = "安徽\n" +
                "北京\n" +
                "重庆\n" +
                "福建\n" +
                "广东\n" +
                "广西\n" +
                "甘肃\n" +
                "贵州\n" +
                "河北\n" +
                "河南\n" +
                "湖南\n" +
                "湖北\n" +
                "海南\n" +
                "黑龙江\n" +
                "吉林\n" +
                "江苏\n" +
                "江西\n" +
                "辽宁\n" +
                "内蒙古\n" +
                "宁夏\n" +
                "青海\n" +
                "上海\n" +
                "四川\n" +
                "山西\n" +
                "山东\n" +
                "陕西\n" +
                "天津\n" +
                "新疆\n" +
                "西藏\n" +
                "云南\n" +
                "浙江";
        System.out.println(str);;
        String[] provinces = str.split("\n");
        System.out.println(Arrays.toString(provinces));
        for(String province:provinces){
            System.out.println(String.format(" <option value=\"%s\">%s</option>", province,province));
        }
    }

    private static void recommendTest() {
        RecommendObj recommendObj =  new RecommendObj();
        MajorObj majorObj = new MajorObj();
        SchoolObj schoolObj = new SchoolObj();
        for (int i= 0;i<10;i++){
            recommendObj.addMajor(majorObj);;
            majorObj =  new MajorObj();
            majorObj.setName(String.valueOf(i));
        }
        System.out.println(majorObj.getSchoolId());

        recommendObj.setSchool(schoolObj);
        schoolObj.setName("sdasdas");

        System.out.println("-------------");
        System.out.println(recommendObj.getSchool().getName());
        for(MajorObj majorObj1:  recommendObj.getMajorList()){
            System.out.println(majorObj1.getName());
        }
    }
}
