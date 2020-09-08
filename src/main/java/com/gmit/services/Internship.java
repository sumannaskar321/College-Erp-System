package com.gmit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.InternshipDetailsSave;
import com.gmit.repository.InternshipRepository;

@Service
public class Internship {

	@Autowired
	private InternshipRepository internship;
	
	
	public InternshipDetailsSave SaveInternDetails(InternshipDetailsSave ids)
	{
		ids=internship.save(ids);
		return ids;
		
	}
	
	
	public List<InternshipDetailsSave> count(String status)
	{
		System.out.println(status);
		
		List<InternshipDetailsSave> list= internship.findByStatus(status);
		
		return list; 
	}
	
//	public void deleteInternDetails(int internshipid)
//	{
//		internship.deleteById(internshipid);
//	}
	
}
