package kr.ac.mis.mapper;

import java.util.Date;
import java.util.List;

import kr.ac.mis.model.Event;
import kr.ac.mis.model.User;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


public interface EventMapper {
	
	@Insert("INSERT INTO event(title, start, end,"+
			"allday) VALUES" +
			"(#{title}, #{start}, #{end}, #{allDay})")
	@Options(useGeneratedKeys=true, keyProperty="id", flushCache=true, keyColumn="id")
	public void insertEvent(Event event);
	//WHAT IS the "flushCache"
	/*	It should be matched with Class attribute
	private int id;
	private String title;
	private Date start;
	private Date end;
	private boolean allDay;*/
	

	
	
  @Select("SELECT id From event where title=#{title} and start=#{start} and end=#{end}")
   public int getEventId(Event event);
	
  
  
  
  
	
	@Select("SELECT *" +
			"FROM event" )
	public List<Event> getEvents();
	
    

}
