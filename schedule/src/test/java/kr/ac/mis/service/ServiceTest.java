package kr.ac.mis.service;

import static org.junit.Assert.*;

import java.util.List;

import kr.ac.mis.mapper.EventMapper;
import kr.ac.mis.mapper.UserMapper;
import kr.ac.mis.mapper.User_EventMapper;
import kr.ac.mis.model.Event;


import kr.ac.mis.service.EventService;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/*@ContextConfiguration(locations = {
        "file:src/resources/applicationContext-datasource.xml", 
        "file:src/resources/applicationContext-transaction.xml", 
        "file:src/resources/applicationContext.xml"
            })*/

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/config/springConfig.xml"})
public class ServiceTest {
	
	@Autowired 
	ApplicationContext ctx;
	
    @Autowired
    EventService eventService;
    
    @Autowired
    User_EventMapper user_EventMapper;
    
    @Autowired
    EventMapper eventMapper;
    
    @Autowired
    UserMapper userMapper;
    
    
	@Test
	public void test() {
		
		
		//user_EventMapper.insertUser_Event("1111", 1);
		
		//userMapper.getUserById("1111");
		
		//Event event = eventMapper.getEvents();
		
		List<Event> events = eventMapper.getEventsByUserId("1111");
		
		Event event1 = new Event();
		event1.setTitle(events.get(0).getTitle());
		event1.setStart(events.get(0).getStart());
		event1.setEnd(events.get(0).getEnd());
		Integer id = eventMapper.getEventIdByAtts(event1);
	    
		assertTrue(id.intValue() == 1);
		
		
		
	}

}
