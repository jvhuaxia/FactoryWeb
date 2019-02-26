package com.jvhuaxia.factory.dao;

import com.jvhuaxia.factory.pojo.Admin;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdminDao {

    @Select("SELECT * FROM tb_admin")
    @Results(
            id = "baseResult",
            value = {
                    @Result(id = true, property = "id", column = "AID"),
                    @Result(property = "name", column = "ALoginName"),
                    @Result(property = "password", column = "APassWord"),
                    @Result(property = "trueName", column = "ATrueName"),
            }
    )
    List<Admin> selectAllAdmin();


    @Select("SELECT * FROM tb_admin WHERE AID = #{id}")
    @ResultMap(value = "baseResult")
    Admin selectAdminById(@Param("id") int id);

    @Select("SELECT * FROM tb_admin WHERE ALoginName = #{name}")
    @ResultMap(value = "baseResult")
    Admin selectAdminByName(@Param("name") String name);

    @Insert("INSERT INTO tb_admin(AID,ALoginName,APassWord,ATrueName)VALUES(#{admin.id},#{admin.name},#{admin.password},#{admin.trueName})")
    void insertAdmin(@Param("admin") Admin admin);

    @Update("UPDATE tb_admin SET ALoginName=#{admin.name},APassWord = #{admin.password},ATrueName = #{admin.trueName} WHERE AID = #{admin.id}")
    void updateAdmin(@Param("admin") Admin admin);

    @Delete("DELETE FROM tb_admin WHERE AID = #{id}")
    void delAdmin(@Param("id") int id);
}
