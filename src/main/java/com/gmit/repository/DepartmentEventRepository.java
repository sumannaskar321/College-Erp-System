package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.gmit.model.DepartmentEventModel;

public interface DepartmentEventRepository extends CrudRepository<DepartmentEventModel, Integer> {

	@Query(value="SELECT * FROM departmentevent WHERE department = :department",nativeQuery = true)
	public ArrayList<DepartmentEventModel> getEvent(String department);
}
