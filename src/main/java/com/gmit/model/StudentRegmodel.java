package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StudentRegmodel implements Serializable {
	
	@Id 
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int placementnoticeid;
	private String companyjobdescription;
	private String campusSelection;
	private String placementCompanyName;
	private String studentName;
	private String batch;
	private long rollno;
	private String department;
	
	public StudentRegmodel() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPlacementnoticeid() {
		return placementnoticeid;
	}

	public void setPlacementnoticeid(int placementnoticeid) {
		this.placementnoticeid = placementnoticeid;
	}

	public String getCompanyjobdescription() {
		return companyjobdescription;
	}

	public void setCompanyjobdescription(String companyjobdescription) {
		this.companyjobdescription = companyjobdescription;
	}

	public String getCampusSelection() {
		return campusSelection;
	}

	public void setCampusSelection(String campusSelection) {
		this.campusSelection = campusSelection;
	}

	public String getPlacementCompanyName() {
		return placementCompanyName;
	}

	public void setPlacementCompanyName(String placementCompanyName) {
		this.placementCompanyName = placementCompanyName;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getBatch() {
		return batch;
	}

	public void setBatch(String batch) {
		this.batch = batch;
	}

	public long getRollno() {
		return rollno;
	}

	public void setRollno(long rollno) {
		this.rollno = rollno;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	
	
	


	
	
	

}
