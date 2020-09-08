package com.gmit.model;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class NotificationModel implements Serializable{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private long studentRoll;
	private int notificationstatus;
	
	
	/* dm */
	private String messagebyTeacher;
	private String teacherName;
	private LocalDate date;
	private String department;

	
	
	private String companyname;
	private String placementstatus;
	private int ignoremergeid;
	
	
	public NotificationModel() {}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public long getStudentRoll() {
		return studentRoll;
	}


	public void setStudentRoll(long studentRoll) {
		this.studentRoll = studentRoll;
	}


	public int getNotificationstatus() {
		return notificationstatus;
	}


	public void setNotificationstatus(int notificationstatus) {
		this.notificationstatus = notificationstatus;
	}


	public String getMessagebyTeacher() {
		return messagebyTeacher;
	}


	public void setMessagebyTeacher(String messagebyTeacher) {
		this.messagebyTeacher = messagebyTeacher;
	}


	


	public String getTeacherName() {
		return teacherName;
	}


	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}


	public LocalDate getDate() {
		return date;
	}


	public void setDate(LocalDate date) {
		this.date = date;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public String getCompanyname() {
		return companyname;
	}


	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}


	public String getPlacementstatus() {
		return placementstatus;
	}


	public void setPlacementstatus(String placementstatus) {
		this.placementstatus = placementstatus;
	}


	public int getIgnoremergeid() {
		return ignoremergeid;
	}


	public void setIgnoremergeid(int ignoremergeid) {
		this.ignoremergeid = ignoremergeid;
	}


	
}
