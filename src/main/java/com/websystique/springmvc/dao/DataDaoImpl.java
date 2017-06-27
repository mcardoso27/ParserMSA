package com.websystique.springmvc.dao;
 
import java.util.List;
 
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
 
import com.websystique.springmvc.model.Data;
 
@Repository("DataDao")
public class DataDaoImpl extends AbstractDao<Integer, Data> implements DataDao {
 
    public void saveData(Data data) {
        persist(data);
    }
 
}