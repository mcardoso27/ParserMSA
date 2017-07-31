package com.websystique.springmvc.dao;
 
import com.websystique.springmvc.model.Event;
import java.util.List;
 
public interface EventDao {
 
    void saveEvent(Event event);
    
    Event findByTransactionId(String transactionId);
    
    List<Event> findAllEvent(int pageNumber);
     
}