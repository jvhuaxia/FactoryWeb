package com.jvhuaxia.factory.service;

import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.Admin;
import org.springframework.stereotype.Service;

import java.util.List;


public interface AdminService {

    Admin getAdmin(int id);

    Admin getAdmin(String name);

    Result<Admin> login(String name, String pwd);

    Result<String> saveAdmin(Admin admin);

    List<Admin> getAllAdmin();

    Result<String> changePwd(String prePassword, Admin admin);

    Result<String> update(Admin admin);

    Result<String> del(int id);
}