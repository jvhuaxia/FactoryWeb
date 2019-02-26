package com.jvhuaxia.factory.service.impl;

import com.jvhuaxia.factory.dao.AboutDao;
import com.jvhuaxia.factory.pojo.About;
import com.jvhuaxia.factory.service.AboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AboutServiceImpl implements AboutService {

    @Autowired
    AboutDao aboutDao;


    @Override
    public About get() {
        return aboutDao.selectAbout(1);
    }

    @Override
    public void update(About about) {
        aboutDao.update(about);
    }
}
