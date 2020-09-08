package com.gmit.repository;


import org.springframework.data.repository.CrudRepository;

import com.gmit.model.adminmodel;

public interface adminrepository extends CrudRepository<adminmodel, String> {
	/* adminmodel findByUsername(String username); */

}
