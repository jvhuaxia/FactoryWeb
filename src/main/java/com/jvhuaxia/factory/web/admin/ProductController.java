package com.jvhuaxia.factory.web.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jvhuaxia.factory.pojo.Product;
import com.jvhuaxia.factory.pojo.ProductType;
import com.jvhuaxia.factory.service.ProductService;
import com.jvhuaxia.factory.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/admin/product")
public class ProductController {

    @Autowired
    ProductTypeService productTypeService;

    @Autowired
    ProductService productService;

    @RequestMapping("/saveView")
    public ModelAndView save() {
        ModelAndView modelAndView = new ModelAndView("admin/product/saveProduct");
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("productTypeList", productTypeList);
        return modelAndView;
    }

    @RequestMapping("/save")
    public void save(@RequestParam("img") MultipartFile img,
                     HttpServletRequest request, HttpServletResponse httpServletResponse) throws IOException {

        String filePath = request.getSession().getServletContext().getRealPath("/upload/img/");

        String fileName = img.getOriginalFilename();
        String[] splitFileName = fileName.split("[.]");
        String suffix = splitFileName[splitFileName.length - 1];
        String tempFileName = Long.toString(System.currentTimeMillis()) + "." + suffix;
        img.transferTo(new File(filePath + tempFileName));
        String name = request.getParameter("name");
        int ptId = Integer.parseInt(request.getParameter("typeId"));
        String des = request.getParameter("des");
        LocalDateTime dateTime = LocalDateTime.now();
        Product product = new Product(new ProductType(ptId), tempFileName, name, des, 0, dateTime);
        productService.insert(product);
        httpServletResponse.sendRedirect("/admin/product/list");
    }

    @RequestMapping("/list")
    public ModelAndView list(@RequestParam(required = true, defaultValue = "1") int pageNum, @RequestParam(required = true, defaultValue = "10") int pageSize) {
        ModelAndView modelAndView = new ModelAndView("admin/product/list");
        PageHelper.startPage(pageNum, pageSize);
        List<Product> productList = productService.all();
        PageInfo<Product> pageInfo = new PageInfo<>(productList, 3);
        modelAndView.addObject("productList", productList);
        modelAndView.addObject("pageInfo", pageInfo);
        return modelAndView;
    }

    @RequestMapping("/listByName")
    public ModelAndView listByName(@RequestParam(required = true, defaultValue = "1") int pageNum, @RequestParam(required = true, defaultValue = "10") int pageSize, @RequestParam(required = true) String name) {
        System.out.println(name);
        ModelAndView modelAndView = new ModelAndView("admin/product/list");
        PageHelper.startPage(pageNum, pageSize);
        List<Product> productList = productService.searchName(name);
        PageInfo<Product> pageInfo = new PageInfo<>();
        modelAndView.addObject("productList", productList);
        modelAndView.addObject("pageInfo", pageInfo);
        return modelAndView;
    }

    @RequestMapping("/update")
    public ModelAndView update(int id) {
        ModelAndView modelAndView = new ModelAndView("admin/product/editProduct");
        Product product = productService.get(id);
        List<ProductType> productTypeList = productTypeService.all();
        modelAndView.addObject("product", product);
        modelAndView.addObject("productTypeList", productTypeList);
        return modelAndView;
    }
}
