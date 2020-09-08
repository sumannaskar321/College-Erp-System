package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.CdcTrainingStudentDetails;
import com.gmit.repository.StudentTrainingDetailRepository;

@Service
public class StudentTrainingDetailService {

	
	@Autowired
	StudentTrainingDetailRepository studenttrainingdetailsrepo;
	
	
	public void saveStudentTrainingDeatils(CdcTrainingStudentDetails cdctrainingstudent)
	{
		studenttrainingdetailsrepo.save(cdctrainingstudent);
	}
	
	public CdcTrainingStudentDetails getStudent(long rollNo, int trainingId)
	{
		return studenttrainingdetailsrepo.findByrollNoAndTrainingid(rollNo,trainingId);
	}
	
	public ArrayList<CdcTrainingStudentDetails> getAllStudent(int trainingid)
	{
		ArrayList<CdcTrainingStudentDetails> student = studenttrainingdetailsrepo.getAllStudent(trainingid);
		return student;
	}
}
