package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TeacherResponseModel implements Serializable {
	
	@Id
	 @GeneratedValue(strategy=GenerationType.IDENTITY)
	private int sno;
	private int placementnoticeid;
	private String placementCompanyName ;
	private String campusSelection ;
	private String companyjobdescription ;
	private String status;
	private String studentName;
	private String batch;
	private long rollno;
	private String department;
	
	public TeacherResponseModel() {}
	
	
	
	public String getDepartment() {
		return department;
	}



	public void setDepartment(String department) {
		this.department = department;
	}



	/**
	 * @return the studentName
	 */
	public String getStudentName() {
		return studentName;
	}










	public int getPlacementnoticeid() {
		return placementnoticeid;
	}










	public void setPlacementnoticeid(int placementnoticeid) {
		this.placementnoticeid = placementnoticeid;
	}










	/**
	 * @param studentName the studentName to set
	 */
	public void setStudentName(String studentName) {
		this.studentName = studentName;
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
	 * @return the sno
	 */
	public int getSno() {
		return sno;
	}





	/**
	 * @param sno the sno to set
	 */
	public void setSno(int sno) {
		this.sno = sno;
	}





	/**
	 * @return the placementCompanyName
	 */
	public String getPlacementCompanyName() {
		return placementCompanyName;
	}


	/**
	 * @return the campusSelection
	 */
	public String getCampusSelection() {
		return campusSelection;
	}


	/**
	 * @return the companyjobdescription
	 */
	public String getCompanyjobdescription() {
		return companyjobdescription;
	}


	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}


	

	/**
	 * @param placementCompanyName the placementCompanyName to set
	 */
	public void setPlacementCompanyName(String placementCompanyName) {
		this.placementCompanyName = placementCompanyName;
	}


	/**
	 * @param campusSelection the campusSelection to set
	 */
	public void setCampusSelection(String campusSelection) {
		this.campusSelection = campusSelection;
	}


	/**
	 * @param companyjobdescription the companyjobdescription to set
	 */
	public void setCompanyjobdescription(String companyjobdescription) {
		this.companyjobdescription = companyjobdescription;
	}


	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	

}
