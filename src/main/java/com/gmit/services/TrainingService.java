package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.TrainingModel;
import com.gmit.repository.TrainingRepository;

@Service
public class TrainingService {

	
	@Autowired
	private TrainingRepository trainingrepository;
	
	
	public TrainingModel saveTrainingDetails(TrainingModel trainingmodel)
	{
		return trainingrepository.save(trainingmodel);
	}
	
	public ArrayList<TrainingModel> getAllTrainingDetails()
	{
		ArrayList<TrainingModel> cm = new ArrayList<TrainingModel>();
		trainingrepository.findAll().forEach(cm :: add);
		return cm;
	}
	
	public ArrayList<TrainingModel> TrainingDetailsforDept(String dept,String batch)
	{
		
		ArrayList<TrainingModel> cm = new ArrayList<TrainingModel>();
		
		trainingrepository.getTrainingDetailsByDept(dept,batch).forEach(cm :: add);
		
		return cm;
	}
	
	public TrainingModel findById(int trainingid)
	{
		TrainingModel training = trainingrepository.findById(trainingid).orElse(new TrainingModel());
		return training;
		 
		

	}
}
