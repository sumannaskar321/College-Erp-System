package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.gmit.model.CdcTrainingStudentDetails;

public interface StudentTrainingDetailRepository extends CrudRepository<CdcTrainingStudentDetails, Long>{

	public CdcTrainingStudentDetails findByrollNoAndTrainingid(long rollNo,int trainingId);
	
	@Query(value="SELECT * FROM cdctrainingstudentinfo WHERE trainingid = :trainingid",nativeQuery = true)
	public ArrayList<CdcTrainingStudentDetails> getAllStudent(int trainingid);
}
