package com.gmit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity

public class Ignore1 {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int ignoreno;
	private int placementnoticeid;
	private String ignorereason ;
	private String campusSelection ;
	private String  placementCompanyName ;
	private String studentName;
	private String batch;
	private long rollno;
	private String department;
	
	
	public Ignore1() {}

	
	
	public String getDepartment() {
		return department;
	}



	public void setDepartment(String department) {
		this.department = department;
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
	 * @return the studentName
	 */
	public String getStudentName() {
		return studentName;
	}



	/**
	 * @param studentName the studentName to set
	 */
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}






	public int getPlacementnoticeid() {
		return placementnoticeid;
	}



	public void setPlacementnoticeid(int placementnoticeid) {
		this.placementnoticeid = placementnoticeid;
	}



	public int getIgnoreno() {
		return ignoreno;
	}

	public String getIgnorereason() {
		return ignorereason;
	}

	public String getCampusSelection() {
		return campusSelection;
	}

	public String getPlacementCompanyName() {
		return placementCompanyName;
	}

	public void setIgnoreno(int ignoreno) {
		this.ignoreno = ignoreno;
	}

	public void setIgnorereason(String ignorereason) {
		this.ignorereason = ignorereason;
	}

	public void setCampusSelection(String campusSelection) {
		this.campusSelection = campusSelection;
	}

	public void setPlacementCompanyName(String placementCompanyName) {
		this.placementCompanyName = placementCompanyName;
	}
	
	

}
