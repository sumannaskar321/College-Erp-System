package com.gmit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.StudentDetails;
import com.gmit.services.GmitBatchesService;
import com.gmit.services.StudentRegisterService;

@Controller
public class StudentRegisterController {
	
	@Autowired
	private StudentRegisterService studregser;
	
	@Autowired
	private GmitBatchesService gmitbatchservice;

	
	
	@RequestMapping(method=RequestMethod.POST,value="/studentRegister")
	public String studentRegistersave1(StudentDetails studDetail, HttpSession request)
	{
		System.out.println("a");
		request.setAttribute("stud", studDetail );
		return "studentRegistrationPage2";
	}
	
	
	
	

	
	@RequestMapping(method=RequestMethod.POST,value="/studentRegistrationPage2")
	public String studentRegistersave2(StudentDetails studDetail, HttpSession request)
	{
		System.out.println("b");
		
		
		StudentDetails stud1 = (StudentDetails)request.getAttribute("stud");
		studDetail.setStudentName(stud1.getStudentName());
		studDetail.setEmailAddress(stud1.getEmailAddress());
		studDetail.setCollegeCode(stud1.getCollegeCode());
		studDetail.setRegistration(stud1.getRegistration());
		studDetail.setRollNo(stud1.getRollNo());
		studDetail.setStudentDob(stud1.getStudentDob());
		studDetail.setMobileNumber(stud1.getMobileNumber());
		studDetail.setAlternatemobileNumber(stud1.getAlternatemobileNumber());
		studDetail.setDepartment(stud1.getDepartment());
		studDetail.setBatch(stud1.getBatch());
		studDetail.setGender(stud1.getGender());
		
		
		request.setAttribute("stud", studDetail );
		
		return "studentRegistrationPage3";
	}
	
	
	
	
	
	
	
	@RequestMapping(method=RequestMethod.POST,value="/studentRegistrationPage3")
	public String studentRegistersave3(StudentDetails studDetail, HttpSession request)
	{
		System.out.println("c");
		 StudentDetails stud1 = (StudentDetails)request.getAttribute("stud");
		 stud1.setHighestQualification(studDetail.getHighestQualification());
		 stud1.setClass10Marks(studDetail.getClass10Marks());
		 stud1.setClass12Marks(studDetail.getClass12Marks());
		 stud1.setDiplomaMarks(studDetail.getDiplomaMarks());
		 stud1.setForeignLanguageDetails(studDetail.getForeignLanguageDetails());
		  stud1.setForeignLanguageKnown(studDetail.getForeignLanguageKnown());
		  stud1.setIndianLanguageDetails(studDetail.getIndianLanguageDetails());
		  
		 
		
		request.setAttribute("stud", stud1 );
		return "studentRegistrationPage4";
	}
	
	
	
	
	
	
	  @RequestMapping(method=RequestMethod.POST,value="/studentRegistrationPage4")
	  public String studentRegistersave4(StudentDetails studDetail, HttpSession request) 
	  {
		  
		  System.out.println("d");
		  int a=0;
	  StudentDetails stud1 = (StudentDetails)request.getAttribute("stud");
	  stud1.setBloodGroup(studDetail.getBloodGroup());
	  stud1.setHobbies(studDetail.getHobbies());
	  stud1.setSubjectofInterest(studDetail.getSubjectofInterest());
	  stud1.setReasonChooseEng(studDetail.getReasonChooseEng());
	  stud1.setYourStrenghts(studDetail.getYourStrenghts());
	  stud1.setYourWeakness(studDetail.getYourWeakness());
	  stud1.setInterest(studDetail.getInterest());
	  stud1.setFuturegoal(studDetail.getFuturegoal());
	  stud1.setPassword(studDetail.getPassword());
	 
	  
	  stud1.setFirstsemsgpa(a);
	  stud1.setSecondsemsgpa(a);
	  stud1.setThirdsemsgpa(a);
	  stud1.setFourthsemsgpa(a);
	  stud1.setFifthsemsgpa(a);
	  stud1.setSixthsemsgpa(a);
	  stud1.setSeventhsemsgpa(a);
	  stud1.setEighthsemsgpa(a);
	  
	  if(studregser.findbyRollNo(stud1.getRollNo())!= null)
	  {
		  request.setAttribute("errormsg", "User Is Already Exists");
		  return "studentLogin";
	  }
	  else
	  {
	  
	  
	  studDetail = studregser.studentRegister(stud1);
	  System.out.println("bye");
		 return "Index";
	}
	  }
	 
	
	 
	  
	
	
	@RequestMapping("/student-register")
	public String studentRegister(HttpServletRequest request)
	{
		
		List<String> batch = gmitbatchservice.getTop5Batches();
		request.setAttribute("batch", batch);
		return "studentRegister";
	}
}
