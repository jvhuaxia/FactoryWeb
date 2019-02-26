package com.jvhuaxia.factory.service;

import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.Product;

import java.util.List;

public interface ProductService {

    public List<Product> all();

    public List<Product> searchName(String name);

    public Result<String> insert(Product product);

    public Product get(int id);

    public Result<String> update(Product product);

    public Result<String> del(int id);

    public List<Product> getByType(int id);

    public void addHis(int id);
}
