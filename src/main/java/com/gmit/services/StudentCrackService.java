package com.gmit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.StudentCrackModel;
import com.gmit.repository.StudentCrackServiceRepository;

@Service
public class StudentCrackService {
	
	@Autowired
	private StudentCrackServiceRepository crack;
	
	
	public StudentCrackModel saveDetailsCrackorNot(StudentCrackModel scm)
	{
		scm=crack.save(scm);
		return scm;
	}

	public List<StudentCrackModel> crackCount(String status1)
	{
		System.out.println(status1);
		
		List<StudentCrackModel> list = crack.findByStatus1(status1);
		return list;
	
	}
	
	
	public void DeleteFromCracklist(int crackid)
	{
		crack.deleteById(crackid);
	}
	
	
	
}
