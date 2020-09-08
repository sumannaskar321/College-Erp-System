package com.gmit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.TeacherResponseModel;
import com.gmit.repository.TeacherResponseServiceRepository;


@Service
public class TeacherResponseService {

	@Autowired
	private TeacherResponseServiceRepository response;
	
	
	public TeacherResponseModel saveDetailsintoDb(TeacherResponseModel trm)
	{
		trm=response.save(trm);
		return trm;
	}
	
	
	public List<TeacherResponseModel> presentCount(String status)
	{
		System.out.println(status);
		
		List<TeacherResponseModel> tlist =response.findByStatus(status);
		return tlist;
	}
	
	
	public void deleteFromTeacherResponseModel(int sno)
	{
		response.deleteById(sno);
	}
}
