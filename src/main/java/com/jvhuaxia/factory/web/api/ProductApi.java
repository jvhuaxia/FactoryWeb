package com.jvhuaxia.factory.web.api;

import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.Product;
import com.jvhuaxia.factory.pojo.ProductType;
import com.jvhuaxia.factory.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
@RequestMapping("/api/product")
public class ProductApi {

    @Autowired
    ProductService productService;

    @RequestMapping("/update")
    public @ResponseBody
    Result<String> update(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        int id = Integer.parseInt(httpServletRequest.getParameter("id"));
        String img = httpServletRequest.getParameter("img");
        int typeId = Integer.parseInt(httpServletRequest.getParameter("typeId"));
        String name = httpServletRequest.getParameter("name");
        String des = httpServletRequest.getParameter("des");
        int his = Integer.parseInt(httpServletRequest.getParameter("his"));
        String addDate = httpServletRequest.getParameter("addDate");
        LocalDateTime localDateTime = LocalDateTime.parse(addDate, DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss"));
        return productService.update(new Product(id, new ProductType(typeId), img, name, des, his, localDateTime));
    }

    @RequestMapping("/del")
    public @ResponseBody
    Result<String> del(int id) {
        return productService.del(id);
    }
}