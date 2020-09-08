package com.gmit.repository;

import java.util.ArrayList;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.gmit.model.DepartmentTeacherModel;

public interface DepartmentTeacherRepository extends CrudRepository<DepartmentTeacherModel, Integer>
{
	
	public DepartmentTeacherModel findByTeacherEmailIdAndPassword(String EmailId,String password);

	@Query(value="SELECT * FROM departmentteacher WHERE teacher_department =:department",nativeQuery = true)
	public ArrayList<DepartmentTeacherModel> getTeacherDetails(String department);

}
