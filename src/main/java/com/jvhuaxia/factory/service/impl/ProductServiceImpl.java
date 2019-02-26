package com.jvhuaxia.factory.service.impl;

import com.jvhuaxia.factory.dao.ProductDao;
import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.Product;
import com.jvhuaxia.factory.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    ProductDao productDao;

    @Override
    public List<Product> all() {
        return productDao.selectAll();
    }

    @Override
    public List<Product> searchName(String name) {
        return productDao.selectLikeName(name);
    }

    @Override
    public Result<String> insert(Product product) {
        if (productDao.select(product.getId()) == null) {
            productDao.insert(product);
            return new Result<>(true, 0, "插入成功");
        } else {
            return new Result<>(false, 1, "id被占用");
        }
    }

    @Override
    public Product get(int id) {
        return productDao.select(id);
    }

    @Override
    public Result<String> update(Product product) {
        productDao.update(product);
        return new Result<>(true, "修改成功");
    }

    @Override
    public Result<String> del(int id) {
        productDao.del(id);
        return new Result<>(true, "删除成功");
    }

    @Override
    public List<Product> getByType(int id) {
        return productDao.selectByType(id);
    }

    @Override
    public void addHis(int id) {
        productDao.addHis(id);
    }
}
