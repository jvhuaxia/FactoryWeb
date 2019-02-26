package com.jvhuaxia.factory.web;

import com.jvhuaxia.factory.pojo.About;
import com.jvhuaxia.factory.pojo.News;
import com.jvhuaxia.factory.pojo.Product;
import com.jvhuaxia.factory.pojo.ProductType;
import com.jvhuaxia.factory.service.AboutService;
import com.jvhuaxia.factory.service.NewsService;
import com.jvhuaxia.factory.service.ProductService;
import com.jvhuaxia.factory.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class IndexController {

    @Autowired
    ProductService productService;

    @Autowired
    NewsService newsService;

    @Autowired
    ProductTypeService productTypeService;

    @Autowired
    AboutService aboutService;

    @RequestMapping({"/", "index"})
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("index");
        List<ProductType> productTypeList = productTypeService.all();
        List<News> newsList = newsService.allNews();
        List<Product> productList = productService.all();
        About about = aboutService.get();
        modelAndView.addObject("productTypeList", productTypeList);
        modelAndView.addObject("newsList", newsList);
        modelAndView.addObject("productList", productList);
        modelAndView.addObject("about", about);
        return modelAndView;
    }

    @RequestMapping("/pro")
    public ModelAndView pro() {
        ModelAndView modelAndView = new ModelAndView("pro");
        List<ProductType> productTypeList = productTypeService.all();
        List<Product> productList = productService.all();
        modelAndView.addObject("productTypeList", productTypeList);
        modelAndView.addObject("productList", productList);
        return modelAndView;
    }

    @RequestMapping("/pro/type/{id}")
    public ModelAndView proByType(@PathVariable("id") Integer id) {
        ModelAndView modelAndView = new ModelAndView("pro");
        List<Product> productList = productService.getByType(id);
        modelAndView.addObject("productList", productList);
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("productTypeList", productTypeList);
        return modelAndView;
    }

    @RequestMapping("/product/search/{name}")
    public ModelAndView proByName(@PathVariable("name") String name) {
        ModelAndView modelAndView = new ModelAndView("pro");
        List<Product> productList = productService.searchName(name);
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("productTypeList", productTypeList);
        modelAndView.addObject("productList", productList);
        return modelAndView;
    }

    @RequestMapping("/about")
    public ModelAndView about() {
        ModelAndView modelAndView = new ModelAndView("about-us");
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("productTypeList", productTypeList);
        About about = aboutService.get();
        modelAndView.addObject("about", about);
        return modelAndView;
    }

    @RequestMapping("/news")
    public ModelAndView news() {
        ModelAndView modelAndView = new ModelAndView("news");
        List<News> newsList = newsService.allNews();
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("newsList", newsList);
        modelAndView.addObject("productTypeList", productTypeList);
        return modelAndView;
    }

    @RequestMapping("/contact")
    public String contact() {
        return "contact";
    }

    @RequestMapping("/product/{id}")
    public ModelAndView proById(@PathVariable("id") Integer id) {
        ModelAndView modelAndView = new ModelAndView("product");
        productService.addHis(id);
        Product product = productService.get(id);
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("product", product);
        modelAndView.addObject("productTypeList", productTypeList);
        return modelAndView;
    }

    @RequestMapping("/new/{id}")
    public ModelAndView newById(@PathVariable("id") int id) {
        ModelAndView modelAndView = new ModelAndView("new");
        newsService.addClick(id);
        News news = newsService.getNews(id);
        modelAndView.addObject("news", news);
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("productTypeList", productTypeList);
        return modelAndView;
    }


}