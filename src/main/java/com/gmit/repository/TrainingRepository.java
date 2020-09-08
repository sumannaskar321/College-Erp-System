package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.gmit.model.TrainingModel;

public interface TrainingRepository extends CrudRepository<TrainingModel, Integer> {
	
	@Query(value="SELECT * FROM training WHERE batch = :batch AND department = :department",nativeQuery = true)
	public ArrayList<TrainingModel> getTrainingDetailsByDept(String department,String batch);

}
