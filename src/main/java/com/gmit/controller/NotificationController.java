package com.gmit.controller;

import java.time.LocalDate;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.IgnoreMerge;
import com.gmit.model.NotificationModel;
import com.gmit.services.IgnoreMergeService;
import com.gmit.services.NotificationModelService;

@Controller
public class NotificationController {

	@Autowired
	private NotificationModelService notificationservice;
	
	@Autowired
	private IgnoreMergeService ignore;
	

	
	
	@RequestMapping("/showNotification{rollNo}")
	public String showNotification(@RequestParam long rollNo,HttpSession session,NotificationModel nm)
	{
		
		
		ArrayList<NotificationModel> notification = notificationservice.getNotification(rollNo);
		
		System.out.println(notification.size());
		
		if(notification.size() > 0)
		{
		session.setAttribute("notification", notification);
		}
		notificationservice.markSeennotification(rollNo);
		//op
		session.setAttribute("notifications", 0);
		return "notificationPanel";
	}
	
	
	@RequestMapping(method=RequestMethod.POST,value="/notpresent-reason{ignoreid}{notPresentReason}")
	public String saveNotPresentIntoDatabase(@RequestParam String notPresentReason , @RequestParam int ignoreid ,NotificationModel notification,IgnoreMerge merge)
	{
		
		IgnoreMerge ignoreReason = ignore.searchById(ignoreid);
		
		ignoreReason.setIgnorereason(notPresentReason);
		ignore.saveInformationIgnore(ignoreReason);
		
		return"notificationPanel";
		
		
	}
	
	
	
	@RequestMapping(method=RequestMethod.POST,value="/notcrack-reason{ignoreid}{notCrackReason}")
	public String saveCrackIntoDatabase(@RequestParam String notCrackReason , @RequestParam int ignoreid ,NotificationModel notification,IgnoreMerge merge)
	{
		IgnoreMerge ignoreReason = ignore.searchById(ignoreid);
		
		ignoreReason.setIgnorereason(notCrackReason);
		ignore.saveInformationIgnore(ignoreReason);

		
		return"notificationPanel";
		
		
	}
	
	
	//directmessage.jsp
	
	
	  @RequestMapping(method=RequestMethod.POST,value="/direct-message-notification{rollno}{teachername}{department}")
	  public String saveDirectCse(@RequestParam long rollno,@RequestParam String teachername,@RequestParam String message,NotificationModel dm,@RequestParam String department) 
	  
	  {
		  LocalDate sysDate = java.time.LocalDate.now();
			
		  dm.setDepartment(department);
		  dm.setMessagebyTeacher(message);
		  dm.setStudentRoll(rollno);
		  dm.setTeacherName(teachername);
		  dm.setDate(sysDate);
		  dm.setNotificationstatus(0);
		  notificationservice.SaveNotificationIntoDatabase(dm);
		  
		  
		  return "directmessage";
	  
	  }
	  
	  
	 
	  
	  
		/*
		 * @RequestMapping(method=RequestMethod.POST,value=
		 * "mech-notification{rollno}{teachername}{department}") public String
		 * saveDirectMechaical(@RequestParam long rollno,@RequestParam String
		 * teachername,@RequestParam String meMessage, NotificationModel
		 * dm,@RequestParam String department)
		 * 
		 * { LocalDate sysDate = java.time.LocalDate.now();
		 * 
		 * 
		 * dm.setDepartment(department); dm.setMessagebyTeacher(meMessage);
		 * dm.setStudentRoll(rollno); dm.setNotificationstatus(0);
		 * dm.setTeacherName(teachername); dm.setDate(sysDate);
		 * notificationservice.SaveNotificationIntoDatabase(dm);
		 * 
		 * 
		 * return "directmessage";
		 * 
		 * }
		 * 
		 * @RequestMapping(method=RequestMethod.POST,value=
		 * "civil-notification{rollno}{teachername}{department}") public String
		 * saveDirectCivil(@RequestParam long rollno,@RequestParam String
		 * teachername,@RequestParam String civilmessage, NotificationModel
		 * dm,@RequestParam String department)
		 * 
		 * { LocalDate sysDate = java.time.LocalDate.now();
		 * 
		 * 
		 * dm.setDepartment(department); dm.setMessagebyTeacher(civilmessage);
		 * dm.setStudentRoll(rollno); dm.setNotificationstatus(0);
		 * dm.setTeacherName(teachername); dm.setDate(sysDate);
		 * notificationservice.SaveNotificationIntoDatabase(dm); return "directmessage";
		 * 
		 * }
		 * 
		 * @RequestMapping(method=RequestMethod.POST,value=
		 * "ee-notification{rollno}{teachername}{department}") public String
		 * saveDirectElectrical(@RequestParam long rollno,@RequestParam String
		 * teachername,@RequestParam String eemessage, NotificationModel
		 * dm,@RequestParam String department)
		 * 
		 * { LocalDate sysDate = java.time.LocalDate.now();
		 * 
		 * dm.setDepartment(department); dm.setMessagebyTeacher(eemessage);
		 * dm.setStudentRoll(rollno); dm.setNotificationstatus(0);
		 * dm.setTeacherName(teachername); dm.setDate(sysDate);
		 * notificationservice.SaveNotificationIntoDatabase(dm); return "directmessage";
		 * 
		 * }
		 * 
		 * 
		 * @RequestMapping(method=RequestMethod.POST,value=
		 * "ece-notification{rollno}{teachername}{department}") public String
		 * saveDirectElectricalElectronics(@RequestParam long rollno,@RequestParam
		 * String teachername,@RequestParam String ecemessage, NotificationModel
		 * dm,@RequestParam String department)
		 * 
		 * { LocalDate sysDate = java.time.LocalDate.now();
		 * 
		 * 
		 * dm.setDepartment(department); dm.setMessagebyTeacher(ecemessage);
		 * dm.setStudentRoll(rollno); dm.setNotificationstatus(0);
		 * dm.setTeacherName(teachername); dm.setDate(sysDate);
		 * notificationservice.SaveNotificationIntoDatabase(dm);
		 * 
		 * return "directmessage";
		 * 
		 * }
		 * 
		 * 
		 */
	

	
	
}
