package kr.ac.mis.mapper;

import java.util.List;

import kr.ac.mis.model.Event;
import kr.ac.mis.model.User;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;


public interface UserMapper {
	
	@Insert("INSERT INTO USER(id,name) VALUES" +
			"(#{id},#{name})")
	@Options(useGeneratedKeys=false, keyProperty="id", flushCache=true, keyColumn="id")
	public void insertUser(User user);
	//WHAT IS the "flushCache"
	
	
	
	
    

}
