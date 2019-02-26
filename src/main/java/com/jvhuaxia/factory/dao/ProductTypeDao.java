package com.jvhuaxia.factory.dao;

import com.jvhuaxia.factory.pojo.ProductType;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductTypeDao {
    @Insert("INSERT INTO tb_producttype(PID,PName,PFather_ID,POrder)VALUES(#{id},#{name},${fatherType.id},${order})")
    public void insert(ProductType productType);

    @Select("SELECT * FROM tb_producttype")
    @Results(
            id = "baseResult",
            value = {
                    @Result(id = true, column = "PID", property = "id"),
                    @Result(column = "PName", property = "name"),
                    @Result(column = "PFather_ID", property = "fatherType", one = @One(select = "com.jvhuaxia.factory.dao.ProductTypeDao.selectProductType")),
                    @Result(column = "POrder", property = "order"),
            }
    )
    public List<ProductType> selectAllProductType();

    @Select("SELECT * FROM tb_producttype WHERE PID = #{id}")
    @ResultMap(value = "baseResult")
    public ProductType selectProductType(int id);

    @Update("UPDATE tb_producttype SET PName=#{name},PFather_ID=#{fatherType.id},POrder=#{order} WHERE PID=#{id}")
    public void update(ProductType productType);

    @Delete("DELETE FROM tb_producttype WHERE PID = #{id}")
    public void del(int id);


}