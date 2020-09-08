package com.gmit.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.gmit.model.StudentCrackModel;

public interface StudentCrackServiceRepository extends CrudRepository<StudentCrackModel, Integer> {
	
	List<StudentCrackModel> findByStatus1(String status1);

}
