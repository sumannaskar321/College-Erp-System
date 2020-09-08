package com.gmit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.StudentDetails;
import com.gmit.repository.StudentRegisterRepository;

@Service
public class StudentRegisterService {

	@Autowired
	private StudentRegisterRepository studregrep;
	
	public StudentDetails studentRegister(StudentDetails studDetail)
	{
		System.out.println("ser");
		System.out.println(studDetail.getId());
		return studregrep.save(studDetail);
	}
	public StudentDetails findbyRollNo( long rollNo )
	{
		System.out.println("rollnumber");
		return studregrep.findByrollNo(rollNo);
				
	}
}
