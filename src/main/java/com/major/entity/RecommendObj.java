package com.major.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * @author lurongzhi
 */
public class RecommendObj {
    private SchoolObj school;
    private List<MajorObj> majorList = new ArrayList<>();

    public void addMajor(MajorObj majorObj) {
        majorList.add(majorObj);
    }

    public SchoolObj getSchool() {
        return school;
    }

    public void setSchool(SchoolObj school) {
        this.school = school;
    }

    public List<MajorObj> getMajorList() {
        return majorList;
    }

    public void setMajorList(List<MajorObj> majorList) {
        this.majorList = majorList;
    }
}
