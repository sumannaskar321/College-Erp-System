package com.gmit.model;

import java.io.Serializable;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class IgnoreMerge implements Serializable {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int serial;
	private String ignorereason ;
	private String campusSelection ;
	private String  placementCompanyName ;
	private String studentName;
	private String companyjobdescription ;
	private String status;
	private String batch;
	private long rollno;
	private String department;
	
	public IgnoreMerge() {}

	
	
	
	public String getDepartment() {
		return department;
	}




	public void setDepartment(String department) {
		this.department = department;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
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
	 * @return the ino
	 */
	

	/**
	 * @return the serial
	 */
	public int getSerial() {
		return serial;
	}

	/**
	 * @return the ignorereason
	 */
	public String getIgnorereason() {
		return ignorereason;
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
	 * @param ino the ino to set
	 */
	

	/**
	 * @param serial the serial to set
	 */
	public void setSerial(int serial) {
		this.serial = serial;
	}

	/**
	 * @param ignorereason the ignorereason to set
	 */
	public void setIgnorereason(String ignorereason) {
		this.ignorereason = ignorereason;
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
