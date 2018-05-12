package com.major.entity;

/**
 * @author lurongzhi
 */
public class UserObj {
    private String name;
    private String password;
    private Integer authority;

    public Boolean checkUserLogin(UserObj userObj){
        if(userObj==null) {
            return false;
        }
        return name.equals(userObj.getName()) && password.equals(userObj.getPassword());
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Integer getAuthority() {
        return authority;
    }

    public void setAuthority(Integer authority) {
        this.authority = authority;
    }
}
