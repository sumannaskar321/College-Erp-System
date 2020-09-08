package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.StudentApplyModel;
import com.gmit.repository.StudentApplyServiceRep;



@Service
public class StudentApplyService {

	@Autowired
	private StudentApplyServiceRep ssr;
	
	public StudentApplyModel addStudentApplyModel(StudentApplyModel a)
	{
		System.out.println("INSIDE THE EMPLOYEEREGMOdel in SERVICE CLASS");
		a=ssr.save(a);
		return a;
		
	}
	
	public ArrayList<StudentApplyModel> getAllNotices()
	{
		ArrayList<StudentApplyModel> cm = new ArrayList<StudentApplyModel>();
		ssr.findAll().forEach(cm :: add);
		return cm;

	}
}
