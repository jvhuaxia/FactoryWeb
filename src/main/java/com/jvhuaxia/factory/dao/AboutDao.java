package com.jvhuaxia.factory.dao;

import com.jvhuaxia.factory.pojo.About;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AboutDao {

    @Select("SELECT * FROM tb_about")
    @Results(
            id = "baseResult", value = {
            @Result(id = true, property = "id", column = "AID"),
            @Result(property = "name", column = "AName"),
            @Result(property = "des", column = "ADes"),
            @Result(property = "dateTime", column = "ADate"),
    })
    List<About> selectAllAbout();


    @Select("SELECT * FROM tb_about WHERE AID = #{id}")
    @ResultMap(value = "baseResult")
    About selectAbout(int id);


    @Insert("INSERT INTO tb_about (AID,AName,ADes,ADate) VALUES(#{id},#{name},#{des},#{dateTime})")
    void insert(About about);


    @Delete("DELETE FROM tb_about WHERE AID = #{id}")
    void del(int id);

    @Update("UPDATE tb_about SET AName = #{name} , ADes = #{des},ADate = #{dateTime} WHERE AID = #{id}")
    void update(About about);

}
