package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.DepartmentTeacherModel;
import com.gmit.repository.DepartmentTeacherRepository;

@Service
public class DepartmentTeacherService {

	@Autowired
	private DepartmentTeacherRepository departmentteacherrepo;
	
	
	public DepartmentTeacherModel registerTeacher(DepartmentTeacherModel departmentteacher)
	{
		System.out.println("ts");
		return departmentteacherrepo.save(departmentteacher);
	}
	
	public void deleteTeacher(int id)
	{
		System.out.println("ts");
		departmentteacherrepo.deleteById(id);
	}
	
	public DepartmentTeacherModel findByEmailIdAndPassword(String EmailId,String password)
	{
		return departmentteacherrepo.findByTeacherEmailIdAndPassword(EmailId,password);
	}
	
	public ArrayList<DepartmentTeacherModel> getTeacherDetails(String department)
	{
		System.out.println("jk");
		ArrayList<DepartmentTeacherModel> teacher =  departmentteacherrepo.getTeacherDetails(department);
		if(teacher != null)
		{
			System.out.println("j");
			return teacher;
		}
		System.out.println("hi");
		return null;
	}

	public ArrayList<DepartmentTeacherModel> getAllTeachers() {
		
		ArrayList<DepartmentTeacherModel> teachers = new ArrayList<DepartmentTeacherModel>();
		departmentteacherrepo.findAll().forEach(teachers :: add);
		return teachers;
	}

	public void deleteById(int id) {
		departmentteacherrepo.deleteById(id);
		
	}
}
