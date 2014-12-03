package kr.ac.mis.service;

import java.util.List;

import kr.ac.mis.model.Event;

public interface InsertEventService {
  void insertEvent(Event event);
  List<Event> getEvents();
   
}
