package com.jvhuaxia.factory.service.impl;

import com.jvhuaxia.factory.dao.AdminDao;
import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.Admin;
import com.jvhuaxia.factory.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;


    @Override
    public Admin getAdmin(int id) {
        return adminDao.selectAdminById(id);
    }

    @Override
    public Admin getAdmin(String name) {
        return adminDao.selectAdminByName(name);
    }

    @Override
    public Result<Admin> login(String name, String pwd) {
        Result<Admin> result = new Result<>();
        Admin admin = this.getAdmin(name);
        if (admin == null) {
            result.setStatus(0);
            result.setSuccess(false);
            result.setMsg("没有这位用户");
            return result;
        }
        if (!admin.getPassword().equals(pwd)) {
            result.setStatus(1);
            result.setSuccess(false);
            result.setMsg("密码错误");
            return result;
        }
        if (admin.getPassword().equals(pwd)) {
            result.setStatus(2);
            result.setSuccess(true);
            result.setMsg("登录成功");
            admin.setPassword(null);
            result.setData(admin);
            return result;
        }
        result.setStatus(3);
        result.setMsg("黑人问号");
        return result;
    }

    @Override
    public Result<String> saveAdmin(Admin admin) {

        Result<String> stringResult = new Result<>();
        if (adminDao.selectAdminByName(admin.getName()) == null) {
            adminDao.insertAdmin(admin);
            stringResult.setStatus(0);
            stringResult.setSuccess(true);
            stringResult.setMsg("添加管理员成功");
        } else {
            stringResult.setStatus(1);
            stringResult.setSuccess(false);
            stringResult.setMsg("添加失败 已经有人叫这个名字");
        }
        return stringResult;
    }

    @Override
    public List<Admin> getAllAdmin() {
        return adminDao.selectAllAdmin();
    }

    @Override
    public Result<String> changePwd(String prePassword, Admin admin) {
        Result<String> result = new Result<>();
        int id = admin.getId();
        Admin preAdmin = adminDao.selectAdminById(id);
        if (preAdmin == null) {
            result.setStatus(0);
            result.setSuccess(false);
            result.setMsg("没有这位用户,黑人问号");
            return result;
        }
        if (!preAdmin.getPassword().equals(prePassword)) {
            result.setStatus(1);
            result.setSuccess(false);
            result.setMsg("原密码错误 无法修改");
            return result;
        }
        adminDao.updateAdmin(admin);
        result.setSuccess(true);
        result.setStatus(2);
        result.setMsg("修改成功");
        return result;
    }

    @Override
    public Result<String> update(Admin admin) {
        Result<String> result = new Result<>();
        if (adminDao.selectAdminById(admin.getId()) == null) {
            result.setSuccess(false);
            result.setStatus(0);
            result.setMsg("修改用户失败 没有找到传来的原用户");
        } else {
            adminDao.updateAdmin(admin);
            result.setSuccess(true);
            result.setStatus(1);
            result.setMsg("修改用户成功");
        }
        return result;
    }

    @Override
    public Result<String> del(int id) {
        adminDao.delAdmin(id);
        return new Result<>(true, "删除成功");
    }

}
