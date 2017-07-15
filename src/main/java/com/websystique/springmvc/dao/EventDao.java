package com.websystique.springmvc.dao;
 
import com.websystique.springmvc.model.Events;
 
public interface EventDao {
 
    void saveEvent(Events event);
    
    Events findByTransactionId(String transactionId);
     
}