package com.gmit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.metamodel.SetAttribute;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.CdcModel;
import com.gmit.model.DepartmentEventModel;
import com.gmit.model.NotificationModel;
import com.gmit.model.StudentDetails;
import com.gmit.model.TrainingModel;
import com.gmit.services.CdcService;
import com.gmit.services.DepartmentEventService;
import com.gmit.services.NotificationModelService;
import com.gmit.services.StudentProfileService;
import com.gmit.services.TrainingService;

@Controller
public class StudentprofileController {
	
	@Autowired
	private  StudentProfileService studentprofileservice;
	
	@Autowired
	private CdcService cds;
	
	@Autowired
	private TrainingService trainingservice;
	
	@Autowired
	private DepartmentEventService DepartmentEventService;
	
	@Autowired
	private NotificationModelService notificationservice;
	
	@RequestMapping("/studentlogin")
	public String studentLoginPage()
	{
		return "studentLogin";
	}
	
	
	@RequestMapping(value="/login-student",method = RequestMethod.POST)
	public String studentLogin(@ModelAttribute StudentDetails studentdetails,HttpServletRequest request)
	{
		StudentDetails studentdetail = studentprofileservice.findByRollNoAndPassword(studentdetails.getRollNo(),studentdetails.getPassword());
		if(studentdetail == null )
		{
			request.setAttribute("errormsg", "Invalid University Roll or Password!");
			
			return "studentLogin";
		}
		else
		{
		//System.out.println(studentdetail.getId());
		HttpSession session = request.getSession(false);
		List<DepartmentEventModel> departmentevent = DepartmentEventService.viewEvent();//get all department posted notices from database
		List<CdcModel> cdcm =cds.getAllNotices();//get all cdc posted notices from database
		int isNotification = notificationservice.getActiveNotification(studentdetail.getRollNo());
		System.out.println(isNotification);
		if(session.getAttribute("studentdetail")!=null)
		{
			if(isNotification > 0)
			{
				session.setAttribute("notifications", isNotification);
			}
			return "StudentHomepage";
		}
		else if(studentdetail != null)
		{
			if(isNotification > 0)
			{
				session.setAttribute("notifications", isNotification);
			}
			
			session.setAttribute("studentdetail", studentdetail);
			
			List<TrainingModel> training = trainingservice.TrainingDetailsforDept(studentdetail.getDepartment(),studentdetail.getBatch());// get all posted training by cdc from database
			if(training!= null)
				System.out.println(training.size());
			session.setAttribute("training", training);
			session.setAttribute("departmentevent", departmentevent);
			session.setAttribute("cdcm", cdcm);
			return "StudentHomepage";
		}
		else
		{
			
			return "studentLogin";
		 }
		
	}
	}
	
	@RequestMapping("/student-logout")
	public String studentLogout(HttpServletRequest request)
	{
		HttpSession session = request.getSession(false);
		System.out.println(session);
		session.invalidate();
		return "Index";
	}
	
	@RequestMapping("/update-student-profile{id}")
	public String updateStudentProfile(@RequestParam int id,HttpServletRequest request)
	{
		StudentDetails studentdetail = studentprofileservice.getStudentDetail(id);
		request.setAttribute("studentdetail", studentdetail);
		return "studentDetailsUpdate";
	}
	
	@RequestMapping(value="/save-student-update",method = RequestMethod.POST)
	public String updatesStudent(StudentDetails studentdetail)
	{		
		StudentDetails studentdetail1 = studentprofileservice.getStudentDetail(studentdetail.getId());
		
	
		studentdetail1.setMobileNumber(studentdetail.getMobileNumber());
		studentdetail1.setAlternatemobileNumber(studentdetail.getAlternatemobileNumber());
		studentdetail1.setEmailAddress(studentdetail.getEmailAddress());
		studentdetail1.setFatherPhoneNo(studentdetail.getFatherPhoneNo());
		studentdetail1.setMotherPhoneNo(studentdetail.getMotherPhoneNo());
		studentdetail1.setCurrentLocation(studentdetail.getCurrentLocation());
		studentdetail1.setHobbies(studentdetail.getHobbies());
		studentdetail1.setForeignLanguageKnown(studentdetail.getForeignLanguageKnown());
		studentdetail1.setForeignLanguageDetails(studentdetail.getForeignLanguageDetails());
		studentdetail1.setIndianLanguageDetails(studentdetail.getIndianLanguageDetails());
		studentdetail1.setSubjectofInterest(studentdetail.getSubjectofInterest());
		studentdetail1.setYourStrenghts(studentdetail.getYourStrenghts());
		studentdetail1.setYourWeakness(studentdetail.getYourWeakness());
		studentdetail1.setBloodGroup(studentdetail.getBloodGroup());
		studentdetail1.setLearningMethod(studentdetail.getLearningMethod());
		studentdetail1.setComputerlanguageknown(studentdetail.getComputerlanguageknown());
		studentdetail1.setInterest(studentdetail.getInterest());
		studentdetail1.setPersonalWish(studentdetail.getPersonalWish());
		studentdetail1.setFuturegoal(studentdetail.getFuturegoal());
		studentdetail1.setLookingfor(studentdetail.getLookingfor());
		studentdetail1.setFirstsemsgpa(studentdetail.getFirstsemsgpa());
		studentdetail1.setSecondsemsgpa(studentdetail.getSecondsemsgpa());
		studentdetail1.setThirdsemsgpa(studentdetail.getThirdsemsgpa());
		studentdetail1.setFourthsemsgpa(studentdetail.getFourthsemsgpa());
		studentdetail1.setFifthsemsgpa(studentdetail.getFifthsemsgpa());
		studentdetail1.setSixthsemsgpa(studentdetail.getSixthsemsgpa());
		studentdetail1.setSeventhsemsgpa(studentdetail.getSeventhsemsgpa());
		studentdetail1.setEighthsemsgpa(studentdetail.getEighthsemsgpa());
		studentdetail1.setComputerlanguageknown(studentdetail.getComputerlanguageknown());
		studentdetail1.setHighestQualification(studentdetail.getHighestQualification());
		System.out.println("update detail");
		
	     studentprofileservice.updateProfile(studentdetail1);
		return "StudentHomepage";
	}
	
	@RequestMapping("/view-profile{id}")
	public String viewProfile(@RequestParam int id,HttpServletRequest request)
	{
		StudentDetails student = studentprofileservice.getStudentDetail(id);
		System.out.println(student.getRollNo());
		request.setAttribute("student", student);
		return "viewProfile";
	}

	
}
