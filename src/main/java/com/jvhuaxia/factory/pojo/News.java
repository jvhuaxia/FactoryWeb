package com.jvhuaxia.factory.pojo;

import java.sql.Date;
import java.time.LocalDateTime;

public class News {
    private int id;
    private String title;
    private String des;
    private int click;
    private LocalDateTime time;

    public News() {

    }

    public News(int id, String title, String des, int click, LocalDateTime time) {
        this.id = id;
        this.title = title;
        this.des = des;
        this.click = click;
        this.time = time;
    }

    public News(String title, String des, int click, LocalDateTime time) {
        this.title = title;
        this.des = des;
        this.click = click;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public int getClick() {
        return click;
    }

    public void setClick(int click) {
        this.click = click;
    }

    public LocalDateTime getTime() {
        return time;
    }

    public void setTime(LocalDateTime time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", des='" + des + '\'' +
                ", click=" + click +
                ", time=" + time +
                '}';
    }
}
