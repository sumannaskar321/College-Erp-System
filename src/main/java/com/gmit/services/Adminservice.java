package com.gmit.services;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.adminmodel;
import com.gmit.repository.adminrepository;



@Service
public class Adminservice {
 @Autowired
 private adminrepository adminrepo;
 public adminmodel findByUsername(String username)
 {
	 return adminrepo.findById(username).orElse(new adminmodel());
		 
 }

}
