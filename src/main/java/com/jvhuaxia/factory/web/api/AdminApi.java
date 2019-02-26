package com.jvhuaxia.factory.web.api;

import com.jvhuaxia.factory.constant.Global;
import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.Admin;
import com.jvhuaxia.factory.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/api/admin")
public class AdminApi {
    @Autowired
    AdminService adminService;

    /**
     * 返回一个status = ? 的值
     * status = 0; 没有用户
     * status = 1; 密码错误
     * status = 2; 密码成功 同时将用户存到session admin中
     * status = 3; 黑人问号
     */
    @RequestMapping("/loginCheck")
    public @ResponseBody
    Result<Admin> loginCheck(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        String userName = httpServletRequest.getParameter("name");
        String txtPwd = httpServletRequest.getParameter("pwd");
        Result<Admin> result = adminService.login(userName, txtPwd);
        if (result.isSuccess()) {
            httpServletRequest.getSession().setAttribute(Global.ADMIN_SESSION_KEY, result.getData());
        }
        return result;
    }

    /**
     * 返回一个status = ? 的值
     */
    @RequestMapping("/save")
    public @ResponseBody
    Result<String> saveAdmin(Admin admin) {
        return adminService.saveAdmin(admin);
    }

    @RequestMapping("/changePwd")
    public @ResponseBody
    Result<String> changePwd(String prePassword, Admin admin) {
        return adminService.changePwd(prePassword, admin);
    }

    @RequestMapping("/update")
    public @ResponseBody
    Result<String> update(Admin admin) {
        return adminService.update(admin);
    }

    @RequestMapping("/del")
    public @ResponseBody
    Result<String> del(int id) {
        return adminService.del(id);
    }
}
