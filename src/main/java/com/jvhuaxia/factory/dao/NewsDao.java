package com.jvhuaxia.factory.dao;

import com.jvhuaxia.factory.pojo.News;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface NewsDao {

    @Insert("INSERT INTO tb_news (NID,NTitle,NDes,NClick,NTime)VALUES(#{news.id},#{news.title},#{news.des},#{news.click},#{news.time})")
    public void insertNews(@Param("news") News news);

    @Select("SELECT * FROM tb_news")
    @Results(
            id = "baseResult",
            value = {
                    @Result(id = true, column = "NID", property = "id"),
                    @Result(column = "NTitle", property = "title"),
                    @Result(column = "NDes", property = "des"),
                    @Result(column = "NClick", property = "click"),
                    @Result(column = "NTime", property = "time")
            }
    )
    public List<News> selectAll();

    @Select("SELECT * FROM tb_news WHERE NID=#{id}")
    @ResultMap(value = "baseResult")
    public News selectNews(int id);


    @Update("UPDATE tb_news SET NTitle = #{news.title},NDes = #{news.des},NClick = #{news.click},NTime = #{news.time} WHERE NID = #{news.id}")
    public void update(@Param("news") News news);


    @Delete("DELETE FROM tb_news WHERE NID = #{id}")
    public void del(@Param("id") int id);

    @Update("UPDATE tb_news SET NClick = NClick+1 WHERE NID = #{id}")
    public void addClick(int id);
}
