package com.gmit.repository;

import org.springframework.data.repository.CrudRepository;

import com.gmit.model.StudentApplyModel;



public interface StudentApplyServiceRep extends CrudRepository<StudentApplyModel, Long>{
	

}
