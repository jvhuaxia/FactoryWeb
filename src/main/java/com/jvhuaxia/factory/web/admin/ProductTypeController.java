package com.jvhuaxia.factory.web.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jvhuaxia.factory.pojo.ProductType;
import com.jvhuaxia.factory.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/admin/product/type")
public class ProductTypeController {

    @Autowired
    ProductTypeService productTypeService;

    @RequestMapping("/list")
    public ModelAndView list(@RequestParam(required = true, defaultValue = "1") int pageNum, @RequestParam(required = true, defaultValue = "10") int pageSize) {
        ModelAndView modelAndView = new ModelAndView("admin/product/type/list");

        PageHelper.startPage(pageNum, pageSize);
        List<ProductType> typeList = productTypeService.all();

        PageInfo<ProductType> pageInfo = new PageInfo<>(typeList, 3);

        modelAndView.addObject("typeList", typeList);
        modelAndView.addObject("pageInfo", pageInfo);
        return modelAndView;
    }

    @RequestMapping("/save")
    public ModelAndView save() {
        ModelAndView modelAndView = new ModelAndView("admin/product/type/saveNewType");
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("productTypeList", productTypeList);
        return modelAndView;
    }

    @RequestMapping("/update")
    public ModelAndView update(int id) {
        ModelAndView modelAndView = new ModelAndView("admin/product/type/editType");
        List<ProductType> productTypeList = productTypeService.all();
        ProductType productType = productTypeService.get(id);
        modelAndView.addObject("productType", productType);
        modelAndView.addObject("productTypeList",productTypeList);
        return modelAndView;
    }
}
