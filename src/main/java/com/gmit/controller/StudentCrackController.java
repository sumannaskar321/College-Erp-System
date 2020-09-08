package com.gmit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.IgnoreMerge;
import com.gmit.model.NotificationModel;
import com.gmit.model.StudentCrackModel;
import com.gmit.model.TeacherResponseModel;
import com.gmit.services.IgnoreMergeService;
import com.gmit.services.NotificationModelService;
import com.gmit.services.StudentCrackService;
import com.gmit.services.TeacherResponseService;


@Controller
public class StudentCrackController {
	
	@Autowired
	public StudentCrackService stud;
	
	@Autowired
	public TeacherResponseService teacher;
	
	@Autowired
	private IgnoreMergeService ignore;
	
	@Autowired
	private NotificationModelService notification;
	
	
	
	
	@RequestMapping(method=RequestMethod.POST , value="/teacherresponseforcrackednotcracked{placementCompanyName}{campusSelection}{companyjobdescription}{department}{studentname}{placementnoticeid}{status1}{id}{rollno}")
	public String SaveCrackDetailsintoDb(IgnoreMerge merge,StudentCrackModel crack,HttpServletRequest request,
			@RequestParam String placementCompanyName , @RequestParam String campusSelection,@RequestParam String department ,
			@RequestParam String companyjobdescription,@RequestParam String studentname,@RequestParam int placementnoticeid, 
			@RequestParam String status1,@RequestParam int id,HttpSession session,NotificationModel notificationmodel,
			@RequestParam long rollno)
	{
		
		crack.setCampusSelection(campusSelection);
		crack.setCompanyjobdescription(companyjobdescription);
		crack.setPlacementnoticeid(placementnoticeid);
		crack.setPlacementCompanyName(placementCompanyName);  //STUDENT CRACKED OR NOT CRACKED DETAILS SAVE INTO DB STUDENTCRACKMODEL <PRESENTLIST.JSP>
		crack.setStatus1(status1);
		crack.setStudentName(studentname);
		crack.setRollno(rollno);
		crack.setDepartment(department);
		
		crack=stud.saveDetailsCrackorNot(crack);
		
		if(status1.contains("notcracked"))
		{
			
			
			
			
			merge.setCampusSelection(campusSelection);
			merge.setCompanyjobdescription(companyjobdescription);
			merge.setPlacementCompanyName(placementCompanyName);
			merge.setSerial(placementnoticeid);
			merge.setIgnorereason(null);
			merge.setStatus(status1);
			merge.setStudentName(studentname);
			merge.setRollno(rollno);
			merge.setDepartment(department);
			merge=ignore.saveInformationIgnore(merge);
			
			
			
			
			notificationmodel.setCompanyname(placementCompanyName);
			notificationmodel.setNotificationstatus(0);
			notificationmodel.setStudentRoll(rollno);
			notificationmodel.setPlacementstatus(status1);
			notificationmodel.setIgnoremergeid(merge.getId());
			notificationmodel.setDepartment(department);
			notification.SaveNotificationIntoDatabase(notificationmodel);
			
			
		}
		
		teacher.deleteFromTeacherResponseModel(id);
		String statuss="present";

		List<TeacherResponseModel> alist = teacher.presentCount(statuss);
		if(alist.size()>0)
		{
			System.out.println(alist.size());
			request.setAttribute("infos", alist);
		}
		
		else
		{
			System.out.println("Invalid");
		}
		
		return "presentList";
		
	}
	
	
	
	
	
	
	
	@RequestMapping("/showcrackedstudentlist")
	public String showCrackedList(HttpServletRequest request)
	{
		String crackstat="cracked";
		List<StudentCrackModel> list= stud.crackCount(crackstat);
		
		if(list.size()>0)
		{
			System.out.println(list.size());			//LIST OF STUDENTS WHOW ARE CRACKED <PLACEMENTDETAILS>
			request.setAttribute("infos", list);
		}
		
		else
		{
			System.out.println("Invalid");
		}
		return "showCrackedStudentList";
	}
	
	
	

}
