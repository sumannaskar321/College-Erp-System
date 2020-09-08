package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;



@Table(name="training")
@Entity
public class TrainingModel implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int trainingid;
	private String trainingType;
	private String trainingName;
	private String companyName;
	private String department;
	private String trainerName;
	private String trainerContact;
	private String batch;
	private double budget;
	private String vendorName;
	private String outcome;
	
	
	
	public TrainingModel() {
	}


	public int getTrainingid() {
		return trainingid;
	}


	public void setTrainingid(int trainingid) {
		this.trainingid = trainingid;
	}


	public String getTrainingType() {
		return trainingType;
	}


	public void setTrainingType(String trainingType) {
		this.trainingType = trainingType;
	}


	public String getTrainingName() {
		return trainingName;
	}


	public void setTrainingName(String trainingName) {
		this.trainingName = trainingName;
	}


	


	public String getCompanyName() {
		return companyName;
	}


	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}




	public double getBudget() {
		return budget;
	}


	public void setBudget(double budget) {
		this.budget = budget;
	}


	


	public String getVendorName() {
		return vendorName;
	}


	public void setVendorName(String vendorName) {
		this.vendorName = vendorName;
	}


	public String getOutcome() {
		return outcome;
	}


	public void setOutcome(String outcome) {
		this.outcome = outcome;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getBatch() {
		return batch;
	}


	public void setBatch(String batch) {
		this.batch = batch;
	}


	public String getTrainerName() {
		return trainerName;
	}


	public void setTrainerName(String trainerName) {
		this.trainerName = trainerName;
	}


	public String getTrainerContact() {
		return trainerContact;
	}


	public void setTrainerContact(String trainerContact) {
		this.trainerContact = trainerContact;
	}


	
	
	
	
}
