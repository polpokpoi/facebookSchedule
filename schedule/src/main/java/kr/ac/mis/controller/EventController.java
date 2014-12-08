package kr.ac.mis.controller;


import java.util.List;








import kr.ac.mis.facebookservice.FacebookService;
import kr.ac.mis.model.Event;
import kr.ac.mis.service.EventService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.SessionAttributes;




@Controller
@SessionAttributes("user")
public class EventController {
	
	@Autowired 
	private EventService eventService;
	
	
	
	@Autowired
	private FacebookService facebookService;
	
	
	
	
	
	
	
	@RequestMapping(value="/start", method=RequestMethod.GET)
	public String start(Model model){
		
		
	    List<Event> events = eventService.getEvents();
		model.addAttribute("events",events); 
		
		return "start";
	
	}
	

	
	
	@RequestMapping(value = "/callback", method = RequestMethod.GET)
	public String handleRequestInternal(
			@RequestParam(value = "code", required = false) String code,
			ModelMap model) throws Exception {
	   
	   
		facebookService.getToken(code);
		facebookService.getInfo();
		 
		 
	      //model.put("friendsList",friendsList );
         
		
		 
	
		return "test";
	}
	

	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String signup(Model model){
		
		
	    List<Event> events = eventService.getEvents();
		model.addAttribute("events",events); 
		
		return "main";
	}
	

	@RequestMapping(value="/main2", method=RequestMethod.GET)
	public String signupd(Model model){
		
		
	    List<Event> events = eventService.getEvents();
		model.addAttribute("events",events); 
		
		return "main2";
		
		
		
		
	}
	
	
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String signupd3(Model model){
		
		
	    List<Event> events = eventService.getEvents();
		model.addAttribute("events",events); 
		
		return "test";
	}
	
	
	@RequestMapping(value="/original", method=RequestMethod.GET)
	public String signupd4(Model model){
		
		
	    List<Event> events = eventService.getEvents();
		model.addAttribute("events",events); 
		
		return "original";
	}
	
	

	
	@RequestMapping(value="/events",
			method=RequestMethod.GET,produces={"application/xml", "application/json"})// guarantee the result type 
    @ResponseStatus(value=HttpStatus.OK)//about exception handling
	public @ResponseBody
	List<Event> getUserEvents() {
		
		List<Event> events = eventService.getEvents(); 
		
		return events;
	}

		
	   
		
	

}
