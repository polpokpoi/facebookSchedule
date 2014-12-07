package kr.ac.mis.mapper;

import java.util.Date;
import java.util.List;

import kr.ac.mis.model.Event;
import kr.ac.mis.model.User;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


public interface EventMapper {
		
	@Insert("INSERT INTO event(title, start, end,"+
			"allday) VALUES" +
			"(#{title}, #{start}, #{end}, #{allDay})")
	@Options(useGeneratedKeys=true, keyProperty="id", flushCache=true, keyColumn="id")
		public void insertEvent(Event event);
	
	@Delete("DELETE FROM event WHERE id = #{id}")
		public void deleteEventById(@Param("id")Integer Id);
	
	@Update("UPDATE  event"+
			"SET title=#{title} and start=#{start} and end=#{end}"+
			"WHERE id =#{id}")
	    public void updateEventById(@Param("id")Integer id);
		
	
	
	
	
	@Select("SELECT id FROM event where title=#{title} and start=#{start} and end=#{end}")
		public Integer getEventIdByAtts(Event event);
		
	@Select("SELECT E.id, title, start, end, allDay FROM event E, user_event UE, user U " +
	         "WHERE E.id = UE.eventId AND UE.userId = U.id "+
	         "AND U.id = #{userId}")
		public List<Event> getEventsByUserId(@Param("userId")String userId); 
	  
	 
	
	@Select("SELECT *" +
			"FROM event")
		public List<Event> getEvents();
	
    

}
