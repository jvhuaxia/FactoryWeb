package com.jvhuaxia.factory.service.impl;

import com.jvhuaxia.factory.dao.NewsDao;
import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.News;
import com.jvhuaxia.factory.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class NewsServiceImpl implements NewsService {
    @Autowired
    NewsDao newsDao;

    @Override
    public List<News> allNews() {
        return newsDao.selectAll();
    }


    @Override
    public Result<String> save(News news) {
        System.out.println(news);
        Result<String> result = new Result<>();
        if (newsDao.selectNews(news.getId()) == null) {
            news.setTime(LocalDateTime.now());
            news.setClick(0);
            newsDao.insertNews(news);
            result.setSuccess(true);
            result.setStatus(0);
            result.setMsg("插入成功");
        } else {
            result.setSuccess(false);
            result.setStatus(1);
            result.setMsg("插入失败");
        }
        return result;
    }

    @Override
    public Result<String> update(News news) {
        Result<String> result = new Result<>();
        if (newsDao.selectNews(news.getId()) == null) {
            result.setSuccess(false);
            result.setStatus(0);
            result.setMsg("没有此用户");
        } else {
            newsDao.update(news);
            result.setSuccess(true);
            result.setStatus(1);
            result.setMsg("修改成功");
        }
        return result;
    }

    @Override
    public News getNews(int id) {
        return newsDao.selectNews(id);
    }

    @Override
    public Result<String> del(int id) {
        Result<String> result = new Result<>();
        if (newsDao.selectNews(id) == null) {
            result.setMsg("没有此用户");
            result.setStatus(0);
            result.setSuccess(true);
        } else {
            newsDao.del(id);
            result.setMsg("删除成功");
            result.setStatus(1);
            result.setSuccess(true);
        }
        return result;
    }

    @Override
    public void addClick(int id) {
        newsDao.addClick(id);
    }
}
