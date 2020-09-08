package com.gmit.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.Ignore1;
import com.gmit.model.IgnoreMerge;
import com.gmit.model.Placementmodel;
import com.gmit.services.IgnoreMergeService;
import com.gmit.services.IgnoreService;
import com.gmit.services.Placementservice;


@Controller
public class Ignore {
	
	@Autowired
	private IgnoreService is;
	
	@Autowired
	private Placementservice placementserviceobject;
	
	@Autowired
	private IgnoreMergeService ignore;
	
	@RequestMapping(method=RequestMethod.POST, value="/placementignorebystudent{placementCompanyName}{campusSelection}{companyjobdescription}{department}{student}{batch}{rollno}")
	public String ignoreSave(IgnoreMerge merge,Ignore1 im,@RequestParam String placementCompanyName , 
			@RequestParam String campusSelection, @RequestParam String companyjobdescription, @RequestParam String ignorereason,
			@RequestParam int noticeid ,@RequestParam String student,@RequestParam String batch,@RequestParam long rollno,
			@RequestParam String department,HttpSession session,HttpServletRequest request)
	{	
		
		System.out.println("hi");
		System.out.println(ignorereason);
		System.out.println(placementCompanyName);
		System.out.println(campusSelection);
		System.out.println(noticeid);
		
		
		
		String status="Student Rejected Himself";
		
		im.setStudentName(student);						//PLACEMENT IGNORE BY STUDENT SAVE INTO DB <SHOWPOSTEDPLACEMENTDETAILS.JSP>
		im.setPlacementnoticeid(noticeid);
		im.setCampusSelection(campusSelection);
		im.setDepartment(department);
		im.setIgnorereason(ignorereason);
		im.setPlacementCompanyName(placementCompanyName);
		im.setBatch(batch);
		im.setRollno(rollno);
		im=is.saveIgnore(im);
		
		
		//IgnoreMergeTable		
		merge.setCampusSelection(campusSelection);
		merge.setCompanyjobdescription(companyjobdescription);
		merge.setIgnorereason(ignorereason);
		merge.setPlacementCompanyName(placementCompanyName);
		merge.setSerial(noticeid);
		merge.setStatus(status);
		merge.setDepartment(department);
		merge.setStudentName(student);
		merge.setBatch(batch);
		merge.setRollno(rollno);
		merge=ignore.saveInformationIgnore(merge);
		
		ArrayList<Placementmodel> pm = placementserviceobject.getAll();
		request.setAttribute("abc", pm);
		return "showpostedplacementdetails";
		
	}
	
	
	@RequestMapping("/total-ignore-studentList")
	public String showAllIgnore(HttpSession session)
	{
		ArrayList<IgnoreMerge> merge = ignore.getAllInfos();
		session.setAttribute("ignore", merge);
		
		return "finalIgnoreList";
		
	}
	
	
	
	
}
