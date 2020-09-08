package com.gmit.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.StudentDetails;
import com.gmit.services.DepartmentStudentDetailsService;

@Controller
public class DepartmentStudentDetailsController {
	
	@Autowired
	private DepartmentStudentDetailsService departmentstudentdetailsservice;
	
	
	@RequestMapping("/student-details{department}")
	public String studentDetails(@RequestParam String department, HttpServletRequest request,HttpSession session)
	{
		request.setAttribute("department",department);
		int a=1;
		session.setAttribute("teacherarea", a);
		request.setAttribute("batchyear2","allow");
		return "viewStudentDetailsDepartment";
	}
	
	
	
	//////////////////////
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/view-student-bach-latest{batch}{depatment}")
	public String latestBatch(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> students = departmentstudentdetailsservice.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		System.out.println(students);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "viewStudentDetailsDepartment";
	}
	
	@RequestMapping("/view-student-bach-2ndlatest{batch}{depatment}")
	public String latest2ndBatch(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> students = departmentstudentdetailsservice.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		System.out.println(students);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "viewStudentDetailsDepartment";
	}
	
	@RequestMapping("/view-student-bach-3rdlatest{batch}{depatment}")
	public String latest3rdBatch(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> students = departmentstudentdetailsservice.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		System.out.println(students);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "viewStudentDetailsDepartment";
	}
	
	@RequestMapping("/view-student-bach-4thlatest{batch}{depatment}")
	public String latest4thBatch(@RequestParam String batch,@RequestParam String department,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> students = departmentstudentdetailsservice.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		System.out.println(students);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		return "viewStudentDetailsDepartment";
	}

}
