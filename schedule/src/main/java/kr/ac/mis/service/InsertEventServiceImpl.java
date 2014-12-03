package kr.ac.mis.service;

import java.util.List;

import kr.ac.mis.mapper.EventMapper;
import kr.ac.mis.model.Event;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("insertEventService")
public class InsertEventServiceImpl implements InsertEventService {
   
	@Autowired
	private EventMapper eventMapper;
	
	@Transactional
	public void insertEvent(Event event){
		 eventMapper.insertEvent(event);
		 
		 
	}
	
	
	
	@Transactional
	public List<Event> getEvents(){
		List<Event> events =eventMapper.getEvents();
		
		
		return events;
		
	}
}
