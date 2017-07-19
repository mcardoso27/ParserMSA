package com.websystique.springmvc.dao;
 
import com.websystique.springmvc.model.Event;
 
public interface EventDao {
 
    void saveEvent(Event event);
    
    Event findByTransactionId(String transactionId);
     
}