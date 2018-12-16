package cn.yml.blog.domain;

import java.io.Serializable;

/**
 * 用户类
 *
 * @author:Liuym
 * @create:2018-06-20-下午 19:03
 */
public class User implements Serializable{
    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
