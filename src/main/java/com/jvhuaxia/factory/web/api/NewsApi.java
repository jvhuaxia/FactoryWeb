package com.jvhuaxia.factory.web.api;

import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.News;
import com.jvhuaxia.factory.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/api/news")
public class NewsApi {

    @Autowired
    NewsService newsService;

    @RequestMapping("/save")
    public @ResponseBody
    Result<String> save(News news) {
        return newsService.save(news);
    }

    @RequestMapping("/update")
    public @ResponseBody
    Result<String> update(HttpServletRequest httpServletRequest) {
        Result<String> result = new Result<>();
        int id = Integer.parseInt(httpServletRequest.getParameter("id"));
        String title = httpServletRequest.getParameter("title");
        String des = httpServletRequest.getParameter("des");
        int click = Integer.parseInt(httpServletRequest.getParameter("click"));
        String time = httpServletRequest.getParameter("time");
        LocalDateTime localDateTime = LocalDateTime.parse(time, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));

        News news = new News(id, title, des, click, localDateTime);

        result = newsService.update(news);
        return result;
    }

    @RequestMapping("/del")
    public @ResponseBody
    Result<String> del(int id) {
        System.out.println(id);
        return newsService.del(id);
    }

}
