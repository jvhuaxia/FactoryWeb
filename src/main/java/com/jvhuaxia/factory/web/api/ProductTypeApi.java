package com.jvhuaxia.factory.web.api;

import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.ProductType;
import com.jvhuaxia.factory.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/api/productType")
public class ProductTypeApi {

    @Autowired
    ProductTypeService productTypeService;

    @RequestMapping("/save")
    public @ResponseBody
    Result<String> save(HttpServletRequest httpServletRequest) {
        String name = httpServletRequest.getParameter("name");
        int fatherId = Integer.parseInt(httpServletRequest.getParameter("fatherId"));
        int order = Integer.parseInt(httpServletRequest.getParameter("order"));
        ProductType productType = new ProductType(name, fatherId, order);
        return productTypeService.insert(productType);
    }

    @RequestMapping("/update")
    public @ResponseBody
    Result<String> update(HttpServletRequest httpServletRequest) {
        int id = Integer.parseInt(httpServletRequest.getParameter("id"));
        String name = httpServletRequest.getParameter("name");
        int fatherId = Integer.parseInt(httpServletRequest.getParameter("fatherId"));
        int order = Integer.parseInt(httpServletRequest.getParameter("order"));
        ProductType productType = new ProductType(id, name, fatherId, order);
        return productTypeService.udpate(productType);
    }

    @RequestMapping("/del")
    public @ResponseBody
    Result<String> del(int id) {
        return productTypeService.del(id);
    }
}
