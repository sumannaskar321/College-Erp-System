package com.gmit.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.Placementmodel;
import com.gmit.model.StudentRegmodel;
import com.gmit.services.Placementservice;
import com.gmit.services.Studentserv;


@Controller
public class StudCont {
		
	@Autowired
	private Studentserv studentt;
	
	@Autowired
	private Placementservice placementserviceobject;
	
	@RequestMapping("/student-applyforCompany{placementCompanyName}{campusSelection}{companyjobdescription}{student}{noticeid}{department}{batch}{rollno}")
	public String saveInformationTakingwithStudentName(@RequestParam String placementCompanyName ,
			@RequestParam String campusSelection ,@RequestParam String companyjobdescription, 
			@RequestParam String student,
			HttpServletRequest request ,
			@RequestParam int noticeid, 
			@RequestParam String department,
			@RequestParam String batch,
			@RequestParam long rollno,
			HttpSession session
			)
	{
		
		StudentRegmodel pm=new StudentRegmodel();
		System.out.println(student);
		
		  pm.setPlacementnoticeid(noticeid);
		  pm.setCampusSelection(campusSelection); 
		  pm.setCompanyjobdescription(companyjobdescription); 
		 pm.setBatch(batch);
		 pm.setRollno(rollno);
			
			  pm.setDepartment(department);
			 		  
		  pm.setPlacementCompanyName(placementCompanyName); 
		  pm.setStudentName(student);									// STUDENT APPLYFORCOMPANY <SHOWPOSTEDPLACEMENTDETAILS.JSP> SAVE INTO DB
		  
		  pm=studentt.saveDet(pm);
		  ArrayList<Placementmodel> pms = placementserviceobject.getAll();
			request.setAttribute("abc", pms);
		return "showpostedplacementdetails";
	}
	
	
	
	
	
	
	@RequestMapping("/registered-Student-list")
	public String viewNot(HttpServletRequest request)
	{
		ArrayList<StudentRegmodel> pm = studentt.getAll();
		
		if (pm.size()>0)
		{
			request.setAttribute("abc", pm);
			System.out.println(pm.get(0).getCompanyjobdescription());		//REGISTERED STUDENTLIST AHREF <PLACEMENTdETAILS.jSP>
			System.out.println(pm.get(0).getStudentName());					// VALUE TAKEN FROM STUDENTREGMODEL AND SHOW IN TEACHERPOV.JSP
		}
		
		else
		{
			System.out.println("test");
		}
		
		
		return "teacherpointofview";
	}
}
