package com.major;

import com.major.entity.MajorObj;
import com.major.entity.RecommendObj;
import com.major.entity.SchoolObj;

/**
 * @author lurongzhi
 */
public class Test {
    public static void main(String[] args) {
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
        for(MajorObj majorObj1 : recommendObj.getMajorList()){
            System.out.println(majorObj1.getName());
        }
    }
}
