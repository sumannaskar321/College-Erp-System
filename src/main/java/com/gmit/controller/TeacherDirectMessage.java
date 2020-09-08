package com.gmit.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.StudentDetails;
import com.gmit.services.DepartmentStudentDetailsService;

@Controller
public class TeacherDirectMessage {
	
	@Autowired
	private DepartmentStudentDetailsService departmentstudentdetailsservice;

	
	
	@RequestMapping("/message-details")
	public String messgeDetails(HttpServletRequest request)
	{
		request.setAttribute("batchyear", "allow");
		return "directmessage";

	}

	
	@RequestMapping("/send-message-student-bach-latest{batch}{depatment}{tname}")
	public String latestBatch(@RequestParam String batch,@RequestParam String department,@RequestParam String tname,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> students = departmentstudentdetailsservice.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		System.out.println(students);
		request.setAttribute("batch",batch);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		request.setAttribute("teachername", tname);
		return "directmessage";
	}
	
	@RequestMapping("/send-message-student-bach-2ndlatest{batch}{depatment}{tname}")
	public String latest2ndBatch(@RequestParam String batch,@RequestParam String department,@RequestParam String tname,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> students = departmentstudentdetailsservice.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		System.out.println(students);
		request.setAttribute("batch",batch);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		request.setAttribute("teachername", tname);

		return "directmessage";
	}
	
	@RequestMapping("/send-message-student-bach-3rdlatest{batch}{depatment}{tname}")
	public String latest3rdBatch(@RequestParam String batch,@RequestParam String department,@RequestParam String tname,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> students = departmentstudentdetailsservice.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		System.out.println(students);
		request.setAttribute("batch",batch);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		request.setAttribute("teachername", tname);

		return "directmessage";
	}
	
	@RequestMapping("/send-message-student-bach-4thlatest{batch}{depatment}{tname}")
	public String latest4thBatch(@RequestParam String batch,@RequestParam String department,@RequestParam String tname,HttpServletRequest request)
	{
		System.out.println(batch+""+department);
		ArrayList<StudentDetails> students = departmentstudentdetailsservice.getStudentDetails(batch, department);
		request.setAttribute("studentdetail", students);
		System.out.println(students);
		request.setAttribute("batch",batch);
		request.setAttribute("batchyear","allow");
		request.setAttribute("mode", department);
		request.setAttribute("teachername", tname);

		return "directmessage";
	}

}

