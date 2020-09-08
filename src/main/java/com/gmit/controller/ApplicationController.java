package com.gmit.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.CdcUser;
import com.gmit.model.ReminderPageModel;
import com.gmit.model.StudentDetails;
import com.gmit.services.CdcUserService;
import com.gmit.services.GmitBatchesService;
import com.gmit.services.ReminderServicePage;



@Controller
public class ApplicationController {
	
	@Autowired
	private CdcUserService cdcUserService;
	@Autowired
	private ReminderServicePage reminderServicePage;
	
	@Autowired
	private GmitBatchesService gmitbatchservice;
	
	@RequestMapping("/")
	public String welcome(HttpServletRequest request)
	{
		return "Index";
	}
	
	@RequestMapping("/student-teacher-login")
	public String studentTeacherLogin()
	{
		return "studentTeacherLogin";
	}
	
	@RequestMapping("/cdclogin")
	public String cdcLogin(HttpServletRequest request)
	{
		HttpSession session = request.getSession(false);
		if (session.getAttribute("cdcuser")!=null)
		{
			request.setAttribute("batchyear", "allow");
			request.setAttribute("modedept", "a");
			return "homepage";
		}
		else
		{
			return "login";
		}
	}
	
	@RequestMapping("/cdcregister")
	public String cdcregister(HttpServletRequest request)
	{
		return "register";
	}
	@RequestMapping(value="/save-cdc-user", method=RequestMethod.POST)
	public String cdcuserregister(CdcUser cdcUser, HttpServletRequest request)
	{
		//cdcUserService.saveMyUser(cdcUser);
		
		cdcUser = cdcUserService.saveMyUser(cdcUser);
		ArrayList<CdcUser> cdcmember = cdcUserService.getAllCdcMember();
		request.setAttribute("cdcmember", cdcmember);
		return "cdcMemberAdmin";
	}
	
	@RequestMapping(value="/delete-cdc-member{id}", method=RequestMethod.GET)
	public String cdcuserdelete(@RequestParam int id,HttpServletRequest request)
	{
		System.out.println(id);
		cdcUserService.deleteMyUser(id);
		ArrayList<CdcUser> cdcmember = cdcUserService.getAllCdcMember();
		request.setAttribute("cdcmember", cdcmember);
		return "cdcMemberAdmin";
	}
	
	
	@RequestMapping("/login-cdc-user")
	public String cdclogin(@ModelAttribute CdcUser cdcUser, HttpServletRequest request) {
		 CdcUser cdcuser = cdcUserService.findByUsernameAndPassword(cdcUser.getUsername(), cdcUser.getPassword());
		 HttpSession session = request.getSession(false);
		// LocalDate sysDate = java.time.LocalDate.now();
		 
		ReminderPageModel reminderpagemodel = reminderServicePage.findByReminderDate(java.time.LocalDate.now().toString());
		System.out.println("hello");
		
		
		
		if (session.getAttribute("cdcuser")!=null)
		{
			request.setAttribute("batchyear", "allow");
			request.setAttribute("modedept", "a");
			return "homepage";
		}	
		else if(cdcuser != null)
		{
			List<String> batches = gmitbatchservice.getTop5Batches();
			request.setAttribute("reminder", reminderpagemodel);
			 session = request.getSession();
			session.setAttribute("cdcuser", cdcuser);
			request.setAttribute("batchyear", "allow");
			request.setAttribute("modedept", "a");
			HttpSession session2 = request.getSession();
			session2.setAttribute("batches", batches);
	//		session2.setAttribute("mode1", "mechanical");
	//		session2.setAttribute("mode2", "computer_science");
	//		session2.setAttribute("mode5", "elecrical");
			return "homepage";
		}
		else
		{
			request.setAttribute("errormsg", "INVALID USERNAME OR PASSWORD");
			return "login";
		}
		
	}
	
	@RequestMapping("/cdcuser-logout")
	public String cdclogout(HttpServletRequest request) {
		
		HttpSession session = request.getSession(false);
		System.out.println(session);
		session.invalidate();
		
		return "Index";
		
	}
	
	//INFORMATION OF ALL BATCH BY THEIR BATCH YEAR
	
	
	//INFORMATION OF BATCH - 2016-20 ALL DEPT
	@RequestMapping("/info-bach-latest{batch}")
	public String info_2016_2020(@RequestParam String batch, HttpServletRequest request)
	{
		ArrayList<StudentDetails> student = cdcUserService.showStudentDetails(batch);
		//System.out.println(student.get(0).getEmailAddress());
		request.setAttribute("modedept", batch);
		request.setAttribute("dept", batch);
		request.setAttribute("student", student);
		request.setAttribute("batchyear", "allow");
		request.setAttribute("currentbatch", batch);
		return "homepage";
		
	}
	
	
/*	
	//INFORMATION OF BATCH - 2016-20 MECHANICAL 
	@RequestMapping("info-bach-2016-2020-me")
	public String info_2016_2020_me(HttpServletRequest request)
	{
		
		request.setAttribute("mode", "info_2016_2020_me");
		request.setAttribute("batchyear", "allow");
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2016-20 CIVIL
	@RequestMapping("info-bach-2016-2020-ce")
	public String info_2016_2020_ce(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2016_2020_ce");
		request.setAttribute("batchyear", "allow");
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2016-20 CSE
	@RequestMapping("info-bach-2016-2020-cse")
	public String info_2016_2020_cse(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2016_2020_cse");
		request.setAttribute("batchyear", "allow");
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2016-20 ECE
	@RequestMapping("info-bach-2016-2020-ece")
	public String info_2016_2020_ece(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2016_2020_ece");
		request.setAttribute("batchyear", "allow");
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2016-20 ELECTRICAL
	@RequestMapping("info-bach-2016-2020-ee")
	public String info_2016_2020_ee(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2016_2020_ee");
		request.setAttribute("batchyear", "allow");
		return "homepage";
		
	} //END OF BATCH 2016-20
	*/
	
	
	//INFORMATION OF BATCH - 2017-2021 ALL DEPT
	@RequestMapping(value="/info-bach-2ndlatest{batch}")
	public String info_2017_2021(@RequestParam String batch, HttpServletRequest request)
	{
		ArrayList<StudentDetails> student = cdcUserService.showStudentDetails(batch);
		//System.out.println(student.get(0).getEmailAddress());
		request.setAttribute("modedept", batch);
		request.setAttribute("student", student);
		request.setAttribute("batchyear", "allow");
		request.setAttribute("dept", batch);
		request.setAttribute("currentbatch", batch);
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2017-2021 MECHANICAL 
	@SuppressWarnings("finally")
	@RequestMapping("/info-bach-me{batch}")    
	public String info_2017_2021_me(@RequestParam String batch, HttpServletRequest request)
	{
		try
		{
		final String department = "Mechanical Engineering";
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> studentdetail = cdcUserService.showAllStudentDetails(batch,department);
		System.out.println(studentdetail);
		System.out.println(studentdetail.get(0).getDiplomaMarks());
		request.setAttribute("mode", "mechanical");
		request.setAttribute("studentdetail", studentdetail);
		//request.setAttribute("currentbatch", batch);
		//ModelAndView mv = new ModelAndView();
		request.setAttribute("batchyear", "allow");
		request.setAttribute("modedept", batch);
		request.setAttribute("dept", batch);
		}
		catch(IndexOutOfBoundsException indexoutofbound)
		{
			request.setAttribute("mode", "mechanical");
			//request.setAttribute("studentdetail", studentdetail);
			//request.setAttribute("currentbatch", batch);
			//ModelAndView mv = new ModelAndView();
			request.setAttribute("batchyear", "allow");
			request.setAttribute("modedept", batch);
			request.setAttribute("dept", batch);
			System.out.println(indexoutofbound);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		finally
		{
			
		return "homepage";
		}
		
		
	}
	
	//INFORMATION OF BATCH - 2017-2021 CIVIL
	@SuppressWarnings("finally")
	@RequestMapping("info-bach-ce{batch}")
	public String info_2017_2021_ce(@RequestParam String batch, HttpServletRequest request)
	{
		try
		{
		final String department = "Civil Engineering";
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> studentdetail = cdcUserService.showAllStudentDetails(batch,department);
		System.out.println(studentdetail);
		request.setAttribute("studentdetail", studentdetail);
		request.setAttribute("mode", "civil");
		request.setAttribute("batchyear", "allow");
		//request.setAttribute("currentbatch", batch);
		request.setAttribute("modedept", batch);
		request.setAttribute("dept", batch);
		}
		catch(IndexOutOfBoundsException indexoutofbound)
		{
			request.setAttribute("mode", "mechanical");
			//request.setAttribute("studentdetail", studentdetail);
			//request.setAttribute("currentbatch", batch);
			//ModelAndView mv = new ModelAndView();
			request.setAttribute("batchyear", "allow");
			request.setAttribute("modedept", batch);
			request.setAttribute("dept", batch);
			System.out.println(indexoutofbound);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		finally
		{
			
		return "homepage";
		}
		
	}
	
	//INFORMATION OF BATCH - 2017-21 CSE
	@RequestMapping("info-bach-cse{batch}")
	public String info_2017_2021_cse(@RequestParam String batch, HttpServletRequest request)
	{
		final String department = "ComputerScienceAndEngineering";
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> studentdetail = cdcUserService.showAllStudentDetails(batch,department);
		System.out.println(studentdetail);
		request.setAttribute("studentdetail", studentdetail);
		
		request.setAttribute("batchyear", "allow");
		//request.setAttribute("currentbatch", batch);
		request.setAttribute("modedept", batch);
		request.setAttribute("dept", batch);
		request.setAttribute("mode", "computer_science");
//		request.setAttribute("modedept", batch);
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2017-2021 ECE
	@RequestMapping("info-bach-ece{batch}")
	public String info_2017_2021_ece(@RequestParam String batch, HttpServletRequest request)
	{
		final String department = "ElectricalAndelectronics";
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> studentdetail = cdcUserService.showAllStudentDetails(batch,department);
		System.out.println(studentdetail);
		request.setAttribute("studentdetail", studentdetail);
		request.setAttribute("mode", "electronics");
		request.setAttribute("batchyear", "allow");
		//request.setAttribute("currentbatch", batch);
		request.setAttribute("modedept", batch);
		request.setAttribute("dept", batch);
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2017-2021 ELECTRICAL
	@RequestMapping("info-bach-ee{batch}")
	public String info_2017_2021_ee(@RequestParam String batch, HttpServletRequest request)
	{
		final String department = "ElectricalEngineering";
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> studentdetail = cdcUserService.showAllStudentDetails(batch,department);
		System.out.println(studentdetail);
		request.setAttribute("studentdetail", studentdetail);
		request.setAttribute("mode", "electrical");
		request.setAttribute("batchyear", "allow");
		//request.setAttribute("currentbatch", batch);
		request.setAttribute("modedept", batch);
		request.setAttribute("dept", batch);
		
		return "homepage";
		
	} //END OF BATCH 2017-2021

	
	
	
	
	//INFORMATION OF BATCH - 2018-2022 ALL DEPT
	@RequestMapping("/info-bach-3rdlatest{batch}")
	public String info_2018_2022(@RequestParam String batch, HttpServletRequest request)
	{
		ArrayList<StudentDetails> student = cdcUserService.showStudentDetails(batch);
		//System.out.println(student.get(0).getEmailAddress());
		request.setAttribute("modedept", batch);
		request.setAttribute("student", student);
		request.setAttribute("batchyear", "allow");
		request.setAttribute("currentbatch", batch);
		request.setAttribute("dept", batch);
		return "homepage";
		
	}
	/*
	//INFORMATION OF BATCH - 2018-2022 MECHANICAL 
	@RequestMapping("info-bach-2018-2022-me")
	public String info_2018_2022_me(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2018_2022_me");
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2018-2022 CIVIL
	@RequestMapping("info-bach-2018-2022-ce")
	public String info_2018_2022_ce(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2018_2022_ce");
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2018-2022 CSE
	@RequestMapping("info-bach-2018-2022-cse")
	public String info_2018_2022_cse(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2018_2022_cse");
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2018-2022 ECE
	@RequestMapping("info-bach-2018-2022-ece")
	public String info_2018_2022_ece(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2018_2022_ece");
		return "homepage";
		
	}
	
	//INFORMATION OF BATCH - 2018-2022 ELECTRICAL
	@RequestMapping("info-bach-2018-2022-ee")
	public String info_2018_2022_ee(HttpServletRequest request)
	{
		request.setAttribute("mode", "info_2018_2022_ee");
		return "homepage";
		
	} //END OF BATCH 2018-2022

*/
	
	@RequestMapping("/info-bach-4thlatest{batch}")
	public String info_2019_2023(@RequestParam String batch, HttpServletRequest request)
	{
		ArrayList<StudentDetails> student = cdcUserService.showStudentDetails(batch);
		//System.out.println(student.get(0).getEmailAddress());
		request.setAttribute("modedept", batch);
		request.setAttribute("student", student);
		request.setAttribute("batchyear", "allow");
		request.setAttribute("dept", batch);
		request.setAttribute("currentbatch", batch);
		return "homepage";
		
	}
	
	@RequestMapping("/info-bach-5thlatest{batch}")
	public String info_2020_2024(@RequestParam String batch, HttpServletRequest request)
	{
		ArrayList<StudentDetails> student = cdcUserService.showStudentDetails(batch);
		//System.out.println(student.get(0).getEmailAddress());
		request.setAttribute("modedept", batch);
		request.setAttribute("student", student);
		request.setAttribute("batchyear", "allow");
		request.setAttribute("dept", batch);
		request.setAttribute("currentbatch", batch);
		return "homepage";
		
	}

	

	
	
	
	

}
