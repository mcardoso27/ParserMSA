package com.websystique.springmvc.dao;
 
import java.util.List;
 
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
 
import com.websystique.springmvc.model.Events;
 
@Repository("EventDao")
public class EventDaoImpl extends AbstractDao<Integer, Events> implements EventDao {
 
    public void saveEvent(Events event) {
        persist(event);
    }
    
    @Override
    public Events findByTransactionId(String transactionId){
        Criteria crit = createEntityCriteria();
        crit.add(Restrictions.eq("transactionId", transactionId));
        Events event = (Events) crit.uniqueResult();
        return event;
    }
 
}