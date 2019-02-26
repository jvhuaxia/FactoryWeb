package com.jvhuaxia.factory.pojo;

public class Admin {
    private int id;
    private String name;
    private String password;
    private String trueName;

    public Admin() {
    }

    public Admin(String name, String password, String trueName) {
        this.name = name;
        this.password = password;
        this.trueName = trueName;
    }

    public Admin(int id, String name, String password, String trueName) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.trueName = trueName;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getTrueName() {
        return trueName;
    }

    public void setTrueName(String trueName) {
        this.trueName = trueName;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", trueName='" + trueName + '\'' +
                '}';
    }
}
