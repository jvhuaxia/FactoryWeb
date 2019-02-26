package com.jvhuaxia.factory.service.impl;

import com.jvhuaxia.factory.dao.ProductTypeDao;
import com.jvhuaxia.factory.dto.Result;
import com.jvhuaxia.factory.pojo.ProductType;
import com.jvhuaxia.factory.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductTypeServiceImpl implements ProductTypeService {
    @Autowired
    ProductTypeDao productTypeDao;

    @Override
    public List<ProductType> all() {
        return productTypeDao.selectAllProductType();
    }

    @Override
    public Result<String> insert(ProductType product) {
        if (productTypeDao.selectProductType(product.getId()) == null) {
            productTypeDao.insert(product);
            return new Result<>(true, 1, "插入成功");
        } else {
            return new Result<>(false, 0, "插入失败 已经有这个产品类型ID了");
        }
    }

    @Override
    public ProductType get(int id) {

        return productTypeDao.selectProductType(id);
    }

    @Override
    public Result<String> udpate(ProductType productType) {
        productTypeDao.update(productType);
        return new Result<>(true, "编辑成功");
    }

    @Override
    public Result<String> del(int id) {
        productTypeDao.del(id);
        return new Result<>(true, "删除成功");
    }
}
