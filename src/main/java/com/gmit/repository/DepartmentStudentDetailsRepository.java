package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.gmit.model.StudentDetails;

public interface DepartmentStudentDetailsRepository extends CrudRepository<StudentDetails, Integer> {

	@Query(value="SELECT * FROM studentdetails WHERE batch = :batch AND department = :department",nativeQuery = true)
	public ArrayList<StudentDetails> getStudentDetails(String batch,String department);
}
