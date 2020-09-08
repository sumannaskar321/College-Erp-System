package com.gmit.services;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.SearchModel;
import com.gmit.repository.StudentRepository;
import com.gmit.model.StudentDetails;

@Service
public class SearchService {

	
	/*------- Before Update this file --------*/
//	  @Autowired private StudentRegisterRepository studentregisterrepo;
//	  
//	  
//	  public List<StudentDetails> searchStudent(String query) {
//	  //ArrayList<StudentDetails> student =
//	  studentregisterrepo.searchStudent(query); List<StudentDetails> student =
//	  studentregisterrepo.gender(query); return student; }
//	 

	@Autowired
	private StudentRepository studrep;
	
	
	public List<StudentDetails> searchDb(SearchModel srcmod)
	{
		
		switch(srcmod.getFilteroption()) {
		case "rollno": return studrep.findByrollNo(srcmod.getNumericvalue());
		              
			
		case "regno": return studrep.findByregistration(srcmod.getNumericvalue());
						
			
		case "name": return studrep.findBystudentName(srcmod.getTextbox());
					
			
		case "10markslessthan": return studrep.findByclass10Markslessthan(Double.parseDouble(srcmod.getTextbox()));
		
		case "10marksgreaterequal": return studrep.findByclass10Marksgreaterthan(Double.parseDouble(srcmod.getTextbox()));
							
			
			
		case "12markslessthan":return studrep.findByclass12Markslessthan(Double.parseDouble(srcmod.getTextbox()));
			
		case "12marksgreaterequal": return studrep.findByclass12Marksgreaterthan(Double.parseDouble(srcmod.getTextbox()));
			
			
			
		case "bloodgroup": return studrep.findByclassbloodGroup(srcmod.getDynamicselect());
			
		case "department": return studrep.findByclassdepartment(srcmod.getDynamicselect());
		
		case "batch": return studrep.findByclassbatch(srcmod.getDynamicselect());
		
			
		case "dob": return studrep.findByclassstudentDob(srcmod.getDatevalue());
			
		case "gender": return studrep.findByclassgender(srcmod.getDynamicselect());
			
		case "category": return studrep.findByclasscatagory(srcmod.getDynamicselect());
			
		case "differentlyabled": return studrep.findByclassdifferentlyAbled(srcmod.getDynamicselect());
		
		default: return studrep.findAll();
		}
		
				
	}
}
