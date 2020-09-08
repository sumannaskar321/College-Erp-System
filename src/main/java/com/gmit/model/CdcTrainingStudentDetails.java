package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="cdctrainingstudentinfo")
@Entity
public class CdcTrainingStudentDetails implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int trainingid;
	private long rollNo;
	private String studentName;
	private double attendance;
	private double grade;
	private String trainingFeedback;


	public CdcTrainingStudentDetails() {
	}
	
	
	
	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public int getTrainingid() {
		return trainingid;
	}
	public void setTrainingid(int trainingid) {
		this.trainingid = trainingid;
	}
	public long getRollNo() {
		return rollNo;
	}
	public void setRollNo(long rollNo) {
		this.rollNo = rollNo;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public double getAttendance() {
		return attendance;
	}
	public void setAttendance(double attendance) {
		this.attendance = attendance;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}


	public String getTrainingFeedback() {
		return trainingFeedback;
	}


	public void setTrainingFeedback(String trainingFeedback) {
		this.trainingFeedback = trainingFeedback;
	}
	
	
	
	
}
