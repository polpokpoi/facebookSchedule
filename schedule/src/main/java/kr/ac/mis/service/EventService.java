package kr.ac.mis.service;

import java.util.List;

import kr.ac.mis.model.Event;

public interface EventService {
  void insertEvent(Event event);
  List<Event> getEvents();
   
}
