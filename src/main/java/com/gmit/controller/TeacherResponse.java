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
import org.springframework.web.servlet.ModelAndView;

import com.gmit.model.IgnoreMerge;
import com.gmit.model.NotificationModel;
import com.gmit.model.StudentRegmodel;
import com.gmit.model.TeacherResponseModel;
import com.gmit.services.IgnoreMergeService;
import com.gmit.services.NotificationModelService;
import com.gmit.services.Studentserv;
import com.gmit.services.TeacherResponseService;


@Controller
public class TeacherResponse {
	
	@Autowired
	private TeacherResponseService responseobj;
	
	@Autowired
	private Studentserv studentservice;
	
	@Autowired
	private IgnoreMergeService ignore;
	
	@Autowired
	private NotificationModelService notification;
	
	
	@RequestMapping(method=RequestMethod.POST , value="/teacherresponseattendornot{placementCompanyName}{campusSelection}{department}{companyjobdescription}{studentname}{placementnoticeid}{status}{batch}{id}{rollno}")
	public String saveDBdetailsStudentAttendorNot(IgnoreMerge merge,TeacherResponseModel tr,
			@RequestParam String placementCompanyName , @RequestParam String campusSelection,@RequestParam String batch,
			@RequestParam long rollno, @RequestParam String companyjobdescription,@RequestParam String studentname,@RequestParam String department,
			@RequestParam int placementnoticeid,@RequestParam int id ,@RequestParam String status,
			HttpSession session,HttpServletRequest request
			,NotificationModel notificationmodel
			)
	
	
	{	System.out.println(status);
		tr.setCampusSelection(campusSelection);
		tr.setCompanyjobdescription(companyjobdescription);
		tr.setPlacementCompanyName(placementCompanyName);
		tr.setStatus(status);
		tr.setPlacementnoticeid(placementnoticeid);					//TEACHER RESPONSE STUDENT ATTEND OR NOT AND STORE RESULT INTO TEACHERRESPONSEMODEL<TEACHERPOINTOFVIEW.JSP>
		tr.setStudentName(studentname);
		tr.setBatch(batch);
		tr.setRollno(rollno);
		tr.setDepartment(department);
		tr=responseobj.saveDetailsintoDb(tr);
		
		if(status.contains("notPresent"))
		{
			
			
			
			
			
			
			merge.setCampusSelection(campusSelection);
			merge.setCompanyjobdescription(companyjobdescription);
			merge.setIgnorereason(null);
			merge.setPlacementCompanyName(placementCompanyName);
			merge.setSerial(placementnoticeid);
			merge.setDepartment(department);
			merge.setStatus(status);
			merge.setStudentName(studentname);
			merge.setBatch(batch);
			merge.setRollno(rollno);
			merge=ignore.saveInformationIgnore(merge);
			
			
			
			//Notification part
			notificationmodel.setCompanyname(placementCompanyName);
			notificationmodel.setPlacementstatus(status);
			notificationmodel.setNotificationstatus(0);
			notificationmodel.setStudentRoll(rollno);
			notificationmodel.setIgnoremergeid(merge.getId());
			notificationmodel.setDepartment(department);
			notification.SaveNotificationIntoDatabase(notificationmodel);
		}
		
		
		
		
		studentservice.deleteStudentPlacementRegisteredRecordfromDb(id);
		ArrayList<StudentRegmodel> pm = studentservice.getAll();
		request.setAttribute("abc", pm);
		return "teacherpointofview";
	}
	
	

	
	@RequestMapping("/present-studentlist") 				//  MAPPED FROM PLACEMENTDETAILS.JSP>
	public String showPresentStudentList(HttpServletRequest request)
	{
		String statuss="present";
		List<TeacherResponseModel> alist= responseobj.presentCount(statuss);
		
		if(alist.size()>0)
		{
			System.out.println(alist.size());   			 //SEARCH PRESENT VALUE FROM DATABASE<TEACHERRESPONSEMODEL> AND SHOW PRESENT LIST ON PRESENTLIST.JSP
			request.setAttribute("infos", alist);
		}
		
		else
		{
			System.out.println("Invalid");
		}
		return "presentList";
		
	}

}
