package com.gmit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.StudentDetails;
import com.gmit.repository.StudentRepository;

@Service
public class StudentService 
{
	@Autowired
	private StudentRepository studrep;
	
	public StudentDetails saveMyStudent(StudentDetails stud)
	{
		
		return studrep.save(stud);
	}
	
	public List<StudentDetails> findByEmail(long rollNo, long registration)
	{
		System.out.println(rollNo);
		return studrep.findByrollNoAndregistration(rollNo, registration);
	}

}
