package com.jvhuaxia.factory.web.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jvhuaxia.factory.pojo.News;
import com.jvhuaxia.factory.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/admin/news")
public class NewsController {

    @Autowired
    NewsService newsService;

    @RequestMapping("/list")
    public ModelAndView list(@RequestParam(required = true, defaultValue = "1") int pageNum, @RequestParam(required = true, defaultValue = "10") int pageSize) {
        ModelAndView modelAndView = new ModelAndView("admin/news/list");
        PageHelper.startPage(pageNum, pageSize);
        List<News> newsList = newsService.allNews();
        PageInfo<News> pageInfo = new PageInfo<>(newsList, 3);
        modelAndView.addObject("newsList", newsList);
        modelAndView.addObject("pageInfo", pageInfo);
        return modelAndView;
    }

    @RequestMapping("/save")
    public String save(News news) {
        return "/admin/news/saveNews";
    }


    @RequestMapping("/update")
    public ModelAndView update(@RequestParam(required = true) int id) {
        ModelAndView modelAndView = new ModelAndView("admin/news/editNews");
        News news = newsService.getNews(id);
        modelAndView.addObject("news", news);
        return modelAndView;
    }
}
