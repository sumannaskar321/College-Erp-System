package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StudentCrackModel implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int crackid;
	private int placementnoticeid;
	private String companyjobdescription ;
	private String campusSelection ;
	private String placementCompanyName;
	private String studentName;
	private String status1;
	private String batch;
	private long rollno;
	private String department;
	
	
	public StudentCrackModel() {}

	
	
	
	
	public String getDepartment() {
		return department;
	}





	public void setDepartment(String department) {
		this.department = department;
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
	 * @param batch the batch to set
	 */
	public void setBatch(String batch) {
		this.batch = batch;
	}





	




	/**
	 * @return the rollno
	 */
	public long getRollno() {
		return rollno;
	}





	/**
	 * @param rollno the rollno to set
	 */
	public void setRollno(long rollno) {
		this.rollno = rollno;
	}





	/**
	 * @return the crackid
	 */
	public int getCrackid() {
		return crackid;
	}

	/**
	 * @return the companyjobdescription
	 */
	public String getCompanyjobdescription() {
		return companyjobdescription;
	}

	/**
	 * @return the campusSelection
	 */
	public String getCampusSelection() {
		return campusSelection;
	}

	/**
	 * @return the placementCompanyName
	 */
	public String getPlacementCompanyName() {
		return placementCompanyName;
	}

	/**
	 * @return the studentName
	 */
	public String getStudentName() {
		return studentName;
	}

	/**
	 * @return the status1
	 */
	public String getStatus1() {
		return status1;
	}

	/**
	 * @param crackid the crackid to set
	 */
	public void setCrackid(int crackid) {
		this.crackid = crackid;
	}

	/**
	 * @param companyjobdescription the companyjobdescription to set
	 */
	public void setCompanyjobdescription(String companyjobdescription) {
		this.companyjobdescription = companyjobdescription;
	}

	/**
	 * @param campusSelection the campusSelection to set
	 */
	public void setCampusSelection(String campusSelection) {
		this.campusSelection = campusSelection;
	}

	/**
	 * @param placementCompanyName the placementCompanyName to set
	 */
	public void setPlacementCompanyName(String placementCompanyName) {
		this.placementCompanyName = placementCompanyName;
	}

	/**
	 * @param studentName the studentName to set
	 */
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	/**
	 * @param status1 the status1 to set
	 */
	public void setStatus1(String status1) {
		this.status1 = status1;
	}
	
	

}
