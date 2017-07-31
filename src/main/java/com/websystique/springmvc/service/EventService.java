package com.websystique.springmvc.service;
 
import com.websystique.springmvc.model.Event;
import java.util.List;
 
public interface EventService {
     
    void saveEvent(Event event);
    
    Event findByTransactionId(String transactionId);
    
    List<Event> findAllEvents(int pageNumber);
     
}