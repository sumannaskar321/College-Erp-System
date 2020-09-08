package com.gmit.repository;


import org.springframework.data.repository.CrudRepository;

import com.gmit.model.CdcUser;


public interface CdcUserRepository extends CrudRepository<CdcUser, Integer> {

	public CdcUser findByUsernameAndPassword(String username, String password);

	
	
}
