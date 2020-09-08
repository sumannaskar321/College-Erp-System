package com.gmit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.CdcTrainingStudentDetails;
import com.gmit.model.CdcUser;
import com.gmit.model.DepartmentEventModel;
import com.gmit.model.DepartmentTeacherModel;
import com.gmit.model.IndustryMeetingDetailModel;
import com.gmit.model.Placementmodel;
import com.gmit.model.StudentDetails;
import com.gmit.model.TrainingModel;
import com.gmit.services.CdcUserService;
import com.gmit.services.DepartmentEventService;
import com.gmit.services.DepartmentStudentDetailsService;
import com.gmit.services.DepartmentTeacherService;
import com.gmit.services.GmitBatchesService;
import com.gmit.services.IndustryMeetingDetailService;
import com.gmit.services.Placementservice;
import com.gmit.services.StudentTrainingDetailService;
import com.gmit.services.TrainingService;

@Controller
public class AdminPanelController{

	@Autowired
	private DepartmentTeacherService departmentteacherservice;
	
	@Autowired
	private IndustryMeetingDetailService p1service;
	
	@Autowired
	private DepartmentStudentDetailsService departmentstudentdetails;
	
	@Autowired
	private GmitBatchesService gmitbatches;
	
	@Autowired
	private CdcUserService cdcuserservice;
	
	@Autowired
	private Placementservice placementservice;
	
	
	@Autowired
	private TrainingService trainingservice;
	
	@Autowired
	private StudentTrainingDetailService studenttrainingservice;
	
	@Autowired
	private DepartmentEventService departmenteventservice;
	
	@RequestMapping("/department-section")
	public String gotoDepartment()
	{
		return "admindept";
	}
	
	public String gotoCDC()
	{
		return "";
	}
	
	@RequestMapping("/department-student-page{department}")
	public String departmentStudent(@RequestParam String department,HttpServletRequest request,HttpSession session)
	{
		ArrayList<String> batches = gmitbatches.getTop4Batches();
		request.setAttribute("batches", batches);
		session.setAttribute("teacherarea",0);
		request.setAttribute("batchyear2", "allow");
		request.setAttribute("department", department);
		
		return  "viewStudentDetailsDepartment";
	}
	
	@RequestMapping("/student-bach-latest{batch}{department}")
	public String studentbatchlatest(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		ArrayList<String> batches = gmitbatches.getTop4Batches();
		request.setAttribute("batches", batches);
		request.setAttribute("batchyear2", "allow");
		request.setAttribute("department", department);
		request.setAttribute("selectedbatch", batch);
		ArrayList<StudentDetails> students = departmentstudentdetails.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		request.setAttribute("mode", department);
		return  "viewStudentDetailsDepartment";
	}
	
	@RequestMapping("/student-bach-2ndlatest{batch}{department}")
	public String studentbatch2ndlatest(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		ArrayList<String> batches = gmitbatches.getTop4Batches();
		request.setAttribute("batches", batches);
		request.setAttribute("batchyear2", "allow");
		request.setAttribute("department", department);
		request.setAttribute("selectedbatch", batch);
		ArrayList<StudentDetails> students = departmentstudentdetails.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		request.setAttribute("mode", department);
		return  "viewStudentDetailsDepartment";
	}
	
	@RequestMapping("/student-bach-3rdlatest{batch}{department}")
	public String studentbatch3rdlatest(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		ArrayList<String> batches = gmitbatches.getTop4Batches();
		request.setAttribute("batches", batches);
		request.setAttribute("batchyear2", "allow");
		request.setAttribute("department", department);
		request.setAttribute("selectedbatch", batch);
		ArrayList<StudentDetails> students = departmentstudentdetails.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		request.setAttribute("mode", department);
		return  "viewStudentDetailsDepartment";
	}
	
	@RequestMapping("/student-bach-4thlatest{batch}{department}")
	public String studentbatch4thlatest(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		ArrayList<String> batches = gmitbatches.getTop4Batches();
		request.setAttribute("batches", batches);
		request.setAttribute("batchyear2", "allow");
		request.setAttribute("department", department);
		request.setAttribute("selectedbatch", batch);
		ArrayList<StudentDetails> students = departmentstudentdetails.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		request.setAttribute("mode", department);
		return  "viewStudentDetailsDepartment";
	}
	
	
	
	
	@RequestMapping("/department-faculty{department}")
	public String departmentFaculty(@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(department);
		ArrayList<DepartmentTeacherModel> teachers = departmentteacherservice.getTeacherDetails(department);
		System.out.println("hi");
		System.out.println(teachers);
		request.setAttribute("department", department);
		if (teachers.size()>0)
		{
		request.setAttribute("teachers", teachers);
		}
		return "facultyadmin";
	}
	
	@RequestMapping("/department-activity{department}")
	public String departmentActivity(@RequestParam String department,HttpServletRequest request,HttpSession session)
	{
		System.out.println(department);
		session.setAttribute("department", department);
		ArrayList<DepartmentEventModel> events = departmenteventservice.getEvents(department);
		System.out.println(events.size());
		request.setAttribute("events", events);
		return "activity";
	}
	
	@RequestMapping("/delete-event-admin{eventid}")
	public String deleteEvent(@RequestParam int eventid,HttpServletRequest request,HttpSession session)
	{
		departmenteventservice.deteleByIdEvent(eventid);
		ArrayList<DepartmentEventModel> events = departmenteventservice.getEvents((String)session.getAttribute("department"));
		System.out.println(events);
		request.setAttribute("event", events);
		return "activity";
	}
	
	
	@RequestMapping("/cdc-page")
	public String cdcPage()
	{
		return "cdcadmin";
	}
	
	@RequestMapping("/cdc-members")
	public String cdcMember(HttpServletRequest request)
	{
		ArrayList<CdcUser> cdcmember = cdcuserservice.getAllCdcMember();
		request.setAttribute("cdcmember", cdcmember);
		return "cdcMemberAdmin";
	}
	
	@RequestMapping("/cdc-activity")
	public String cdcActivvityPage(HttpServletRequest request)
	{
		ArrayList<Placementmodel> placementnotice = placementservice.getAll();
		ArrayList<TrainingModel> trainings = trainingservice.getAllTrainingDetails();
		ArrayList<IndustryMeetingDetailModel> details= p1service.getAllDetails();
		request.setAttribute("details", details);
		request.setAttribute("trainings", trainings);
		request.setAttribute("placementnotice", placementnotice);
		return "cdcactivity";
	}
	
	@RequestMapping("/view-training-details{trainingid}")
	public String viewTriningDetail(@RequestParam int trainingid,HttpServletRequest request)
	{
		TrainingModel training = trainingservice.findById(trainingid);
		List<CdcTrainingStudentDetails> students = studenttrainingservice.getAllStudent(trainingid);
		request.setAttribute("cdctraining", training);
		request.setAttribute("studentDetail", students);
		return "cdcTrainingStudentDetail";
	}
	
	
}
