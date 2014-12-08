package kr.ac.mis.mapper;

import java.util.List;

import kr.ac.mis.model.Event;
import kr.ac.mis.model.EUser;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


public interface UserMapper {
	
	@Insert("INSERT INTO USER(id,name) VALUES" +
			"(#{id},#{name})")
	@Options(useGeneratedKeys=false, keyProperty="id", flushCache=true, keyColumn="id")
	public void insertUser(EUser eUser);
	//WHAT IS the "flushCache"
	
	
	@Select("SELECT id FROM user where id =#{id}")
	public EUser getUserById(@Param("id")String id);
	
	
	
	
    

}
