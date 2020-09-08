package com.gmit.repository;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import com.gmit.model.StudentDetails;


public interface StudentRepository extends CrudRepository<StudentDetails, Long> 
{
	@Query(value="SELECT * FROM studentpersonal p WHERE p.roll_no = rollN AND p.registration = registration",nativeQuery = true)
	List<StudentDetails> findByrollNoAndregistration(long rollNo, long registration);
	
	List<StudentDetails> findByrollNo(long rollNo);
	List<StudentDetails> findByregistration(long registration);
	List<StudentDetails> findBystudentName(String name);
	@Query(value="SELECT * FROM studentdetails   WHERE class10Marks >= :Xmarks",nativeQuery = true)
	List<StudentDetails> findByclass10Marksgreaterthan(double Xmarks);
//	@Query(value="SELECT * FROM studentdetails   WHERE class10Marks = :Xmarks",nativeQuery = true)
//	List<StudentDetails> findByclass10Marksequals(double Xmarks);
	@Query(value="SELECT * FROM studentdetails  WHERE class10Marks < :Xmarks",nativeQuery = true)
	List<StudentDetails> findByclass10Markslessthan(double Xmarks);
//	@Query(value="SELECT * FROM studentdetails  WHERE class10Marks != :Xmarks",nativeQuery = true)
//	List<StudentDetails> findByclass10Marksnotequal(double Xmarks);
	
	@Query(value="SELECT * FROM studentdetails  WHERE class12Marks >= :XIImarks",nativeQuery = true)
	List<StudentDetails> findByclass12Marksgreaterthan(double XIImarks);
//	@Query(value="SELECT * FROM studentdetails  WHERE class12Marks = :XIImarks",nativeQuery = true)
//	List<StudentDetails> findByclass12Marksequals(double XIImarks);
	@Query(value="SELECT * FROM studentdetails  WHERE class12Marks < :XIImarks",nativeQuery = true)
	List<StudentDetails> findByclass12Markslessthan(double XIImarks);
//	@Query(value="SELECT * FROM studentdetails  WHERE class12Marks != :XIImarks",nativeQuery = true)
//	List<StudentDetails> findByclass12Marksnotequal(double XIImarks);
	
	@Query(value="SELECT * FROM studentdetails  WHERE blood_group = :bloodGroup",nativeQuery = true)
	List<StudentDetails> findByclassbloodGroup(String bloodGroup);
	
	@Query(value="SELECT * FROM studentdetails  WHERE department = :department",nativeQuery = true)
	List<StudentDetails> findByclassdepartment(String department);
	
	@Query(value="SELECT * FROM studentdetails  WHERE batch = :batch",nativeQuery = true)
	List<StudentDetails> findByclassbatch(String batch);
	
	@Query(value="SELECT * FROM studentdetails  WHERE student_dob = :studentDob",nativeQuery = true)
	List<StudentDetails> findByclassstudentDob(String studentDob);
	
	@Query(value="SELECT * FROM studentdetails  WHERE gender = :gender",nativeQuery = true)
	List<StudentDetails> findByclassgender(String gender);
	
	@Query(value="SELECT * FROM studentdetails  WHERE catagory = :catagory",nativeQuery = true)
	List<StudentDetails> findByclasscatagory(String catagory);
	
	@Query(value="SELECT * FROM studentdetails  WHERE differently_abled = :differentlyAbled",nativeQuery = true)
	List<StudentDetails> findByclassdifferentlyAbled(String differentlyAbled);
	
	List<StudentDetails> findAll();
}
