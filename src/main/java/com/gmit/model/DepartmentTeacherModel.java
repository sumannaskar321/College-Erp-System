package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="departmentteacher")
@Entity
public class DepartmentTeacherModel implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String teacherName;
	private String teacherEmailId;
	private String teacherMobileNo;
	private String teacherDepartment;
	private String password;
	
	
	public DepartmentTeacherModel() {
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTeacherName() {
		return teacherName;
	}


	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}


	public String getTeacherEmailId() {
		return teacherEmailId;
	}


	public void setTeacherEmailId(String teacherEmailId) {
		this.teacherEmailId = teacherEmailId;
	}


	public String getTeacherMobileNo() {
		return teacherMobileNo;
	}


	public void setTeacherMobileNo(String teacherMobileNo) {
		this.teacherMobileNo = teacherMobileNo;
	}


	public String getTeacherDepartment() {
		return teacherDepartment;
	}


	public void setTeacherDepartment(String teacherDepartment) {
		this.teacherDepartment = teacherDepartment;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
