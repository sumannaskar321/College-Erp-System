package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class InternshipDetailsSave implements Serializable {
	
	private String placementCompanyName;
	private String jobdescription;
	private String campusSelection;
	private String studentName;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int internshipid;
	private String status;
	private String joinDate;
	private long rollno;
	private String batch;
	private String department;
	private int placementnoticeid;
	
	
	
	public InternshipDetailsSave() {}



	public String getDepartment() {
		return department;
	}



	public void setDepartment(String department) {
		this.department = department;
	}



	/**
	 * @return the rollno
	 */
	public long getRollno() {
		return rollno;
	}



	public int getInternshipid() {
		return internshipid;
	}



	public void setInternshipid(int internshipid) {
		this.internshipid = internshipid;
	}



	


	public int getPlacementnoticeid() {
		return placementnoticeid;
	}



	public void setPlacementnoticeid(int placementnoticeid) {
		this.placementnoticeid = placementnoticeid;
	}



	/**
	 * @return the batch
	 */
	public String getBatch() {
		return batch;
	}



	/**
	 * @param rollno the rollno to set
	 */
	public void setRollno(long rollno) {
		this.rollno = rollno;
	}



	/**
	 * @param batch the batch to set
	 */
	public void setBatch(String batch) {
		this.batch = batch;
	}



	/**
	 * @return the placementCompanyName
	 */
	public String getPlacementCompanyName() {
		return placementCompanyName;
	}



	/**
	 * @return the jobdescription
	 */
	public String getJobdescription() {
		return jobdescription;
	}



	/**
	 * @return the campusSelection
	 */
	public String getCampusSelection() {
		return campusSelection;
	}



	/**
	 * @return the studentName
	 */
	public String getStudentName() {
		return studentName;
	}



	


	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}



	/**
	 * @return the joinDate
	 */
	public String getJoinDate() {
		return joinDate;
	}



	/**
	 * @param placementCompanyName the placementCompanyName to set
	 */
	public void setPlacementCompanyName(String placementCompanyName) {
		this.placementCompanyName = placementCompanyName;
	}



	/**
	 * @param jobdescription the jobdescription to set
	 */
	public void setJobdescription(String jobdescription) {
		this.jobdescription = jobdescription;
	}



	/**
	 * @param campusSelection the campusSelection to set
	 */
	public void setCampusSelection(String campusSelection) {
		this.campusSelection = campusSelection;
	}



	/**
	 * @param studentName the studentName to set
	 */
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}



	



	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}



	/**
	 * @param joinDate the joinDate to set
	 */
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}


	

}
