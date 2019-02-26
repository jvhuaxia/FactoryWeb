package com.jvhuaxia.factory.dao;

import com.jvhuaxia.factory.pojo.Product;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductDao {
    @Select("SELECT * FROM tb_product")
    @Results(id = "baseResult", value = {
            @Result(id = true, column = "PID", property = "id"),
            @Result(column = "PTID", property = "productType", one = @One(select = "com.jvhuaxia.factory.dao.ProductTypeDao.selectProductType")),
            @Result(column = "Pimg", property = "img"),
            @Result(column = "PProName", property = "proName"),
            @Result(column = "PDes", property = "des"),
            @Result(column = "PHis", property = "his"),
            @Result(column = "PAddDate", property = "addDate")
    })
    public List<Product> selectAll();

    @Select("SELECT * FROM tb_product WHERE PID = #{id}")
    @ResultMap(value = "baseResult")
    public Product select(int id);


    @Delete("DELETE FROM tb_product WHERE PID = #{id}")
    public void del(int id);

    @Insert("INSERT INTO tb_product (PID,PTID,Pimg,PProName,PDes,PHis,PAddDate)VALUES(#{id},#{productType.id},#{img},#{proName},#{des},#{his},#{addDate})")
    public void insert(Product product);

    @Update("UPDATE tb_product SET PTID = #{productType.id},Pimg=#{img},PProName=#{proName},PDes=#{des},PHis=#{his},PAddDate=#{addDate} WHERE PID = #{id}")
    public void update(Product product);

    @Select("SELECT * FROM tb_product WHERE PProName LIKE '%${proName}%'")
    @ResultMap(value = "baseResult")
    public List<Product> selectLikeName(@Param("proName") String proName);

    @Select("SELECT * FROM tb_product WHERE PTID = #{typeId}")
    @ResultMap(value = "baseResult")
    public List<Product> selectByType(int typeId);


    @Update("UPDATE tb_product SET PHis = PHis+1 WHERE PID=#{id}")
    public void addHis(int id);
}