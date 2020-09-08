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

import com.gmit.model.StudentDetails;
import com.gmit.services.GmitBatchesService;
import com.gmit.services.StudentProfileService;
import com.gmit.services.StudentRegisterService;

@Controller
public class UpdateAttendanceController {
	
	@Autowired
	private GmitBatchesService gmitbatcheservice;
	
	@Autowired
	private StudentProfileService studentservice;
	
	@RequestMapping("/update-attendance-page")
	public String updateAttendance(HttpServletRequest request)
	{
//		List<String> batches = gmitbatcheservice.getTop4Batches();
//		request.setAttribute("batches", batches);
		request.setAttribute("batchyear","allow");
		return "updateStudentAttendance";
	}
	
	@RequestMapping("/update-attendance-bach-latest{batch}{department}")
	public String latestBatch(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> student = studentservice.showAllStudentDetails(batch, department);
		System.out.println(student.size());
		request.setAttribute("studentdetail", student);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "updateStudentAttendance";
	}
	
	@RequestMapping("/update-attendance-bach-2ndlatest{batch}{department}")
	public String latest2ndBatch(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> student = studentservice.showAllStudentDetails(batch, department);
		System.out.println(student.size());
		request.setAttribute("studentdetail", student);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "updateStudentAttendance";
	}
	
	@RequestMapping("/update-attendance-bach-3rdlatest{batch}{department}")
	public String latest3rdBatch(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> student = studentservice.showAllStudentDetails(batch, department);
		System.out.println(student.size());
		request.setAttribute("studentdetail", student);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "updateStudentAttendance";
	}
	
	@RequestMapping("/update-attendance-bach-4thlatest{batch}{department}")
	public String latest4thBatch(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> student = studentservice.showAllStudentDetails(batch, department);
		System.out.println(student.size());
		request.setAttribute("studentdetail", student);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "updateStudentAttendance";
	}
	
	
	@RequestMapping("/update-student-attendance{rollNo}")
	public String updateAttendance(@RequestParam long rollNo,HttpServletRequest request)
	{
		System.out.println(rollNo);
		StudentDetails student = studentservice.findByRollNo(rollNo);
		request.setAttribute("studentdetail", student);
		return "SaveUpdatedAttendance";
	}
	
	@RequestMapping(value="/save-updated-attendance{rollNo}{department}",method = RequestMethod.POST)
	public String saveUpdatedAttendance(@RequestParam long rollNo,@RequestParam String department,@ModelAttribute StudentDetails student,HttpServletRequest request)
	{
		StudentDetails student1 = studentservice.findByRollNo(rollNo);
		student1.setOriginalAttendance(student.getOriginalAttendance());
		student1.setFakeAttendance(student.getFakeAttendance());
		studentservice.updateProfile(student1);
		String batch=student1.getBatch();
		System.out.println(batch);
		ArrayList<StudentDetails> student3 = studentservice.showAllStudentDetails(batch, department);
		request.setAttribute("studentdetail", student3);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "updateStudentAttendance";
	}

}
