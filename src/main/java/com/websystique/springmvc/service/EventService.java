package com.websystique.springmvc.service;
 
import com.websystique.springmvc.model.Event;
 
public interface EventService {
     
    void saveEvent(Event event);
    
    Event findByTransactionId(String transactionId);
     
}