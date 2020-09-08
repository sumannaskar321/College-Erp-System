package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.gmit.Cust;
import com.gmit.model.StudentDetails;
 
@Repository
public interface StudentRegisterRepository extends CrudRepository<StudentDetails, Integer>,Cust {
	
	@Query(value="SELECT * FROM studentdetails WHERE batch = :batch",nativeQuery = true)
	public ArrayList<StudentDetails> findByBatch(String batch);

	@Query(value="SELECT * FROM studentdetails WHERE batch = :batch AND department = :department",nativeQuery = true)
	public ArrayList<StudentDetails> showAllStudentDetails(String batch,String department);
	
	public StudentDetails findByrollNoAndPassword(long rollNo,String password);
	
	public StudentDetails findByrollNo(long rollNo);
	
	@Query(value="SELECT * FROM studentdetails WHERE ?1",nativeQuery = true)
	public ArrayList<StudentDetails> searchStudent(String query);
	
	
	
	
	
	
	
}
