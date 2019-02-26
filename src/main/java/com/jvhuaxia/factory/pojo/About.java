package com.jvhuaxia.factory.pojo;


import java.time.LocalDateTime;

public class About {
    private int id;
    private String name;
    private String des;
    private LocalDateTime dateTime;

    public About() {
    }

    public About(int id, String name, String des, LocalDateTime dateTime) {
        this.id = id;
        this.name = name;
        this.des = des;
        this.dateTime = dateTime;
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

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public LocalDateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(LocalDateTime dateTime) {
        this.dateTime = dateTime;
    }

    @Override
    public String toString() {
        return "About{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", des='" + des + '\'' +
                ", dateTime=" + dateTime +
                '}';
    }
}
