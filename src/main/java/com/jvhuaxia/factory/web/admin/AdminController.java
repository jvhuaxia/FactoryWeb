package com.jvhuaxia.factory.web.admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.jvhuaxia.factory.pojo.Admin;
import com.jvhuaxia.factory.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminService;

    @RequestMapping()
    public void index(HttpServletResponse httpServletResponse) throws IOException {
        httpServletResponse.sendRedirect("/admin/index");
    }

    @RequestMapping("/login")
    public String login() {
        return "admin/login";
    }


    @RequestMapping({"/index", "/"})
    public String index(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        return "admin/index";
    }


    @RequestMapping("/welcome")
    public String welcome() {
        return "admin/welcome";
    }


    @RequestMapping("/reg")
    public String reg() {
        return "admin/reg";
    }

    @RequestMapping("/list")
    public ModelAndView list(@RequestParam(required = true, defaultValue = "1") Integer pageNum, @RequestParam(required = true, defaultValue = "10") Integer pageSize) {
        ModelAndView modelAndView = new ModelAndView("admin/list");
        PageHelper.startPage(pageNum, pageSize);
        List<Admin> adminList = adminService.getAllAdmin();
        PageInfo<Admin> pageInfo = new PageInfo<>(adminList, 3);
        modelAndView.addObject("adminList", adminList);
        modelAndView.addObject("pageInfo", pageInfo);
        return modelAndView;
    }

    @RequestMapping("/changePwd")
    public ModelAndView changePwd(@RequestParam(required = true) int id) {
        ModelAndView modelAndView = new ModelAndView("admin/changePwd");
        Admin admin = adminService.getAdmin(id);
        modelAndView.addObject("admin", admin);
        return modelAndView;
    }

    @RequestMapping("/update")
    public ModelAndView update(@RequestParam(required = true) int id) {
        ModelAndView modelAndView = new ModelAndView("admin/update");
        Admin admin = adminService.getAdmin(id);
        modelAndView.addObject("admin", admin);
        return modelAndView;
    }
}
