package com.websystique.springmvc.service;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.websystique.springmvc.dao.EventDao;
import com.websystique.springmvc.model.Event;
 
@Service("eventService")
@Transactional
public class EventServiceImpl implements EventService {
 
    @Autowired
    private EventDao dao;
 
    @Override
    public void saveEvent(Event event) {
        dao.saveEvent(event);
    }
    
    @Override
    public Event findByTransactionId(String transactionId) {
        Event event = dao.findByTransactionId(transactionId);
        return event;
    }
     
}