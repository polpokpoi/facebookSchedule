package kr.ac.mis.service;

import static org.junit.Assert.*;

import java.util.List;

import kr.ac.mis.mapper.EventMapper;
import kr.ac.mis.mapper.User_EventMapper;
import kr.ac.mis.model.Event;


import kr.ac.mis.service.InsertEventService;

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
    InsertEventService eventService;
    
    @Autowired
    User_EventMapper user_EventMapper;
    
    
	@Test
	public void test() {
		/*
		Event event = new Event();
		
		event.setId(1121);
		event.setTitle("dddd");
		eventService.insertEvent(event);
		
		List<Event> events = eventService.getEvents();
		
		assertTrue(events.size()==3);
		 */
		
		
		user_EventMapper.insertUser_Event("1111", 1);
		
		
		
		
		assertTrue(true);
		
		
		
	}

}
