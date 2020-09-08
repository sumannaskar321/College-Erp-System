package com.gmit.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gmit.model.CdcTrainingStudentDetails;
import com.gmit.model.CdcUser;
import com.gmit.model.StudentDetails;
import com.gmit.model.TrainingModel;
import com.gmit.services.GmitBatchesService;
import com.gmit.services.StudentProfileService;
import com.gmit.services.StudentTrainingDetailService;
import com.gmit.services.TrainingService;

@Controller
public class TrainingController {

	@Autowired 
	private TrainingService trainingservice;
	
	@Autowired
	private StudentProfileService studentprofileservice;
	
	@Autowired
	private StudentTrainingDetailService studenttrainingservice;
	
	@Autowired
	private GmitBatchesService gmitbatchservice;
	
	//FOR SAVE A TRAINING INTO REPO CONTROLE COMES FROM setTrainingDetails.jsp PAGE ON SUBMIT AS -> TrainingModel Object
	@RequestMapping(value="/save-trainin-details",method = RequestMethod.POST)
	public String saveTrainingDetails(TrainingModel trainingmodel,HttpServletRequest request)
	{
		trainingservice.saveTrainingDetails(trainingmodel); 	//SAVE TO REPO
		List<TrainingModel> cdctraining = trainingservice.getAllTrainingDetails(); 	//FETCH ALL DATA FROM REPO/DB
		request.setAttribute("cdctraining", cdctraining);
		return "showAllOngoingTraining"; 	//OUTPUT ON THIS showAllOngoingTraining.JSP PAGE
	}
	
//	@RequestMapping(value="/save-studet-details{CdcUser}{fullname}")
//	public String saveStudentDetails(@RequestParam(value = "CdcUser") String cdcstuddetail,@RequestParam(value = "fullname") String ml)
//	{
//		System.out.println(cdcstuddetail+""+ml);
//		return "cdctraining";
//	}
	
	@RequestMapping("/join-training{trainingid}{id}")
	public String joinTraining(@RequestParam(value = "trainingid") int trainingid,@RequestParam(value = "id") int id,HttpServletRequest request)
	{
		System.out.println(trainingid+""+id);
		
		StudentDetails studentdetail = studentprofileservice.getStudentDetail(id);
		CdcTrainingStudentDetails student = studenttrainingservice.getStudent(studentdetail.getRollNo(), trainingid);
		if(student == null) {
		CdcTrainingStudentDetails studenttrainingdetail = new CdcTrainingStudentDetails();
		studenttrainingdetail.setRollNo(studentdetail.getRollNo());
		studenttrainingdetail.setStudentName(studentdetail.getStudentName());
		studenttrainingdetail.setTrainingid(trainingid);
		studenttrainingservice.saveStudentTrainingDeatils(studenttrainingdetail);
		List<TrainingModel> training = trainingservice.getAllTrainingDetails();
		request.setAttribute("training", training);
		return "StudentHomepage";
		}
		else {
			List<TrainingModel> training = trainingservice.getAllTrainingDetails();
			request.setAttribute("training", training);
			request.setAttribute("alertmsg", "you are already enrolled for this program");
			return "StudentHomepage";
		}
	}
	
	//FOR OPEN setTrainingDetails.JSP PAGE WITH TOP 5 BATCHES 
	@RequestMapping("/post-training")
	public String postTraining(HttpServletRequest request)
	{
		List<String> batches = gmitbatchservice.getTop5Batches();
		request.setAttribute("batch", batches);
		return "setTrainingDetails"; 	//OUTPUT ON THIS showAllOngoingTraining.JSP PAGE
	}
	
	//FOR SHOW ALL TRAINING DATA FROM REPO/DB
	@RequestMapping("/show-ongoing-Training")
	public String showOngoingTraining(HttpServletRequest request)
	{
		List<TrainingModel> training = trainingservice.getAllTrainingDetails();
		request.setAttribute("cdctraining", training);
		return "showAllOngoingTraining"; 	//OUTPUT ON THIS showAllOngoingTraining.JSP PAGE
	}
	
	@RequestMapping("/view-training-detail{trainingid}")
	public String viewTriningDetail(@RequestParam int trainingid,HttpServletRequest request)
	{
		TrainingModel training = trainingservice.findById(trainingid);
		List<CdcTrainingStudentDetails> students = studenttrainingservice.getAllStudent(trainingid);
		request.setAttribute("cdctraining", training);
		request.setAttribute("studentDetail", students);
		return "cdcTrainingStudentDetail";
	}
}
