package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.StudentDetails;
import com.gmit.repository.DepartmentStudentDetailsRepository;

@Service
public class DepartmentStudentDetailsService {
	
	@Autowired
	private DepartmentStudentDetailsRepository departmentstudentdetailsrepo;

	public ArrayList<StudentDetails> getStudentDetails(String batch,String department)
	{
		return departmentstudentdetailsrepo.getStudentDetails(batch, department);
	}
}
