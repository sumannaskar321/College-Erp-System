package com.gmit.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class StudentApplyModel {

	private int noticeid;
	@Id
	private long university_roll;
	private String student_name;
	private String student_department;
	private String student_experience;
	private String current_year;
	
	public StudentApplyModel() {}


	public int getNoticeid() {
		return noticeid;
	}

	public void setNoticeid(int noticeid) {
		this.noticeid = noticeid;
	}

	public long getUniversity_roll() {
		return university_roll;
	}

	public void setUniversity_roll(long university_roll) {
		this.university_roll = university_roll;
	}

	public String getStudent_name() {
		return student_name;
	}

	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}

	public String getStudent_department() {
		return student_department;
	}

	public void setStudent_department(String student_department) {
		this.student_department = student_department;
	}

	public String getStudent_experience() {
		return student_experience;
	}

	public void setStudent_experience(String student_experience) {
		this.student_experience = student_experience;
	}

	public String getCurrent_year() {
		return current_year;
	}

	public void setCurrent_year(String current_year) {
		this.current_year = current_year;
	}
	
	
}
