package com.jvhuaxia.factory.service;

import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.News;

import java.util.List;

public interface NewsService {

    public List<News> allNews();

    Result<String> save(News news);

    Result<String> update(News news);

    public News getNews(int id);

    public Result<String> del(int id);

    public void addClick(int id);
}
