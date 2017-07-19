package com.websystique.springmvc.service;
 
import com.websystique.springmvc.model.File;
 
public interface FileService {
     
    void saveFile(File file);
    
    File findByFilePath(String fp);
     
}