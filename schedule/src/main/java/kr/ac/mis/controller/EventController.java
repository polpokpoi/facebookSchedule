package kr.ac.mis.controller;


import java.util.List;




import kr.ac.mis.model.Event;
import kr.ac.mis.service.InsertEventService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.SessionAttributes;


@Controller
@SessionAttributes("event")
public class EventController {
	
	@Autowired 
	private InsertEventService eventService;
	
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String signup(Model model){
		
		
	    List<Event> events = eventService.getEvents();
		model.addAttribute("events",events); 
		
		return "main";
	}
	
	/*
	@RequestMapping(value="/Events",
			method=RequestMethod.GET,produces={"application/xml", "application/json"})
    @ResponseStatus(HttpStatus.OK)
	public @ResponseBody
	List<Event> getUserEvents() {
		
		List<Event> events = eventService.getEvents(); 
		
		return events;
	}

		
		*/
	

}
