package com.gmit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.IgnoreMerge;
import com.gmit.model.InternshipDetailsSave;
import com.gmit.model.StudentCrackModel;
import com.gmit.services.IgnoreMergeService;
import com.gmit.services.Internship;
import com.gmit.services.StudentCrackService;


@Controller
public class InternPlacedController {

	@Autowired
	public StudentCrackService stud;

	@Autowired
	private Internship internsave;
	
	@Autowired
	private IgnoreMergeService ims;

	
	
	@RequestMapping(method = RequestMethod.POST, value = "/placed{placementCompanyName}{campusSelection}{department}{companyjobdescription}{studentname}{placementnoticeid}{datePlaced}{batch}{rollno}{crackid}")
	public String PlacedStudentDetailsSave(InternshipDetailsSave ids, @RequestParam String placementCompanyName,
			@RequestParam String campusSelection, @RequestParam String companyjobdescription,
			@RequestParam String department,
			@RequestParam String studentname, @RequestParam String datePlaced, HttpServletRequest request,
			@RequestParam int placementnoticeid,@RequestParam String batch ,@RequestParam long rollno,@RequestParam int id) {
		System.out.println(placementCompanyName);
		System.out.println(campusSelection);
		System.out.println(companyjobdescription);
		System.out.println(studentname);

		String status = "placed";
		ids.setCampusSelection(campusSelection);
		ids.setDepartment(department);
		ids.setJobdescription(companyjobdescription);				//PLACED STUDENT LIST STORE IN DB <SHOWCRACKEDSTUDENTLIST.JSP>
		ids.setJoinDate(datePlaced);								// DB INTERNSHIPDETAILSSAVE
		ids.setPlacementCompanyName(placementCompanyName);
		ids.setPlacementnoticeid(placementnoticeid);
		ids.setStatus(status);
		ids.setStudentName(studentname);
		ids.setBatch(batch);
		ids.setRollno(rollno);

		
		 ids=internsave.SaveInternDetails(ids); 
		  
			 stud.DeleteFromCracklist(id); 
		  
		  String crackstat="cracked"; 
		  List<StudentCrackModel> list= stud.crackCount(crackstat);
		  
		  if(list.size()>0) { System.out.println(list.size());
		  request.setAttribute("infos", list); }
		  
		  else { System.out.println("Invalid"); }
		  return "showCrackedStudentList";

	}
	
	
	

	@RequestMapping(method = RequestMethod.POST, value = "/intern{placementCompanyName}{department}{campusSelection}{companyjobdescription}{studentname}{placementnoticeid}{datePlaced}{batch}{rollno}{id}")
	public String InternStudentDetailsSave(InternshipDetailsSave ids, HttpServletRequest request,
			@RequestParam String placementCompanyName, @RequestParam String campusSelection,
			@RequestParam String companyjobdescription, @RequestParam String studentname,@RequestParam String department,
			@RequestParam String datePlaced, @RequestParam int placementnoticeid,
			@RequestParam String batch, @RequestParam long rollno, @RequestParam int id) {
		System.out.println(placementCompanyName);
		System.out.println(campusSelection);
		System.out.println(companyjobdescription);
		System.out.println(studentname);

		String status = "internship";
		ids.setCampusSelection(campusSelection);
		ids.setJobdescription(companyjobdescription);
		ids.setJoinDate(datePlaced);
		ids.setDepartment(department);
		ids.setPlacementCompanyName(placementCompanyName);
		ids.setPlacementnoticeid(placementnoticeid);					//LIST OF STUDENTS WHOM ARE DOING INTERNSHIP<SHOWCRACKEDSTUDENTLIST.JSP>
		ids.setStatus(status);											//DB INTERNSHIPDETAILSSAVE
		ids.setStudentName(studentname);
		ids.setBatch(batch);
		ids.setRollno(rollno);

		ids = internsave.SaveInternDetails(ids);

		
		 stud.DeleteFromCracklist(id); 
		String crackstat = "cracked";
		List<StudentCrackModel> list = stud.crackCount(crackstat);

		if (list.size() > 0) {
			System.out.println(list.size());
			request.setAttribute("infos", list);
		}

		else {
			System.out.println("Invalid");
		}
		return "showCrackedStudentList";
	}

	
	@RequestMapping("/internship-studentlist") 
	public String internList(HttpServletRequest request)
	{
		String status1="internship";
		List<InternshipDetailsSave> list= internsave.count(status1);
		
		if(list.size()>0)
		{
			System.out.println(list.size());
			request.setAttribute("infos", list);		//STUDENT WHOM ARE DOING INTERN<PLACEMENTDETAILS.JSP>
		}
		else
		{
			System.out.println("Invalid");
		}
		return "internshiplist";
	}
	
	
	@RequestMapping("/placed-studentlist")
	public String placedList(HttpServletRequest request)
	{
		String status1="placed";
		List<InternshipDetailsSave> list= internsave.count(status1);
		
		if(list.size()>0)						//STUDENTWHOM ARE PLACED<PLACEMENTDETAILS.JSP>
		{
			System.out.println(list.size());
			request.setAttribute("infos1", list);
		}
		else
		{
			System.out.println("Invalid");
		}
		return "placelist";
	}
	
	@RequestMapping("update-intern{descr}{campus}{sname}{status}{join}{placementnoticeid}{department}{name}{normalid}{batch}{rollno}")
	public String updateIntern(HttpServletRequest request,@RequestParam String name, @RequestParam String descr , 
			@RequestParam String campus , 
			@RequestParam String sname , @RequestParam int placementnoticeid,
			@RequestParam String status, @RequestParam String join,
			@RequestParam String department,
			@RequestParam String batch, @RequestParam long rollno , @RequestParam int normalid)
	{
		request.setAttribute("department", department);
		request.setAttribute("description", descr);
		request.setAttribute("campus", campus);
		request.setAttribute("sname", sname);
		request.setAttribute("status", status);				// DB DETAILS SHOW IN JSP TO UPDATE
		request.setAttribute("date", join);
		request.setAttribute("placementnoticeid", placementnoticeid);
		request.setAttribute("name", name);
		request.setAttribute("batch", batch);
		request.setAttribute("rollno", rollno);
		request.setAttribute("internid", normalid);
		
		return "updateintern";
		
	}
	
	
	@RequestMapping(method=RequestMethod.POST, value="/update-placedornot")
	public String updateDetails(HttpServletRequest request,InternshipDetailsSave as,@RequestParam String job,
			@RequestParam String campus,
			@RequestParam String department,
			@RequestParam int placementnoticeid,@RequestParam String studentame,@RequestParam String status,
		@RequestParam String placementCompanyName, IgnoreMerge cm,
			@RequestParam String batch, @RequestParam long rollno,@RequestParam String joindate,@RequestParam int internshipid)
	{
		System.out.println("--------");
		System.out.println(status);
		System.out.println(joindate);
		
		if(joindate!="")							//<UPDATEINTERN.JSP>
		{
			as.setBatch(batch);
			as.setCampusSelection(campus);
			as.setJobdescription(job);
			as.setJoinDate(joindate);
			as.setDepartment(department);
			as.setPlacementCompanyName(placementCompanyName);
			as.setRollno(rollno);
			as.setStatus(status);
			as.setStudentName(studentame);
			internsave.SaveInternDetails(as);
			
			
			
			
			
			String status1="internship";
			List<InternshipDetailsSave> list= internsave.count(status1);
			
			if(list.size()>0)
			{
				System.out.println(list.size());
				request.setAttribute("infos", list);		//STUDENT WHOM ARE DOING INTERN<PLACEMENTDETAILS.JSP>
			}
			else
			{
				System.out.println("Invalid");
			}
			return "internshiplist";
		}
			
		
		
		
		else 
		{
			System.out.println("Else Part");
		
			cm.setBatch(batch);
			cm.setCampusSelection(campus);
			cm.setCompanyjobdescription(job);
			cm.setIgnorereason(null);
			cm.setDepartment(department);
			cm.setPlacementCompanyName(placementCompanyName);
			cm.setRollno(rollno);
			cm.setSerial(placementnoticeid);
			cm.setStatus(status);
			cm.setStudentName(studentame);
			ims.saveInformationIgnore(cm);

			 												//OTHERWISE MODIFYMERGEMODEL
			
			String status1="internship";
			List<InternshipDetailsSave> list= internsave.count(status1);
			
			if(list.size()>0)
			{
				System.out.println(list.size());
				request.setAttribute("infos", list);		//STUDENT WHOM ARE DOING INTERN<PLACEMENTDETAILS.JSP>
			}
			else
			{
				System.out.println("Invalid");
			}
			return "internshiplist";
		}
		
	}
	
	
}
