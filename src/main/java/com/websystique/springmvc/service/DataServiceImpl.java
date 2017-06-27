package com.websystique.springmvc.service;
 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.websystique.springmvc.dao.DataDao;
import com.websystique.springmvc.model.Data;
 
@Service("dataService")
@Transactional
public class DataServiceImpl implements DataService {
 
    @Autowired
    private DataDao dao;
 
    public void saveData(Data data) {
        dao.saveData(data);
    }
     
}