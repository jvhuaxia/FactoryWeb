package com.jvhuaxia.factory.service;

import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.ProductType;

import java.util.List;

public interface ProductTypeService {
    public List<ProductType> all();

    public Result<String> insert(ProductType product);

    public ProductType get(int id);

    public Result<String> udpate(ProductType productType);

    public Result<String> del(int id);
}
