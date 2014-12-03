package kr.ac.mis.mapper;

import java.util.Date;
import java.util.List;

import kr.ac.mis.model.Event;
import kr.ac.mis.model.User;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


public interface User_EventMapper {
	

	@Insert("INSERT INTO user_event(userId, eventId) values (#{userId}, #{eventId})")
	public void insertUser_Event(@Param("userId") String userId,@Param("eventId") int eventId);
	
	
	
	
	
	
	
}