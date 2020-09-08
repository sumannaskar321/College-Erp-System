package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ActualOutComeModel implements Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String cpersonname;
	private String  companyname;
	private double phno;
	private String email;
	
public ActualOutComeModel() {}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getCpersonname() {
	return cpersonname;
}

public void setCpersonname(String cpersonname) {
	this.cpersonname = cpersonname;
}

public String getCompanyname() {
	return companyname;
}

public void setCompanyname(String companyname) {
	this.companyname = companyname;
}

public double getPhno() {
	return phno;
}

public void setPhno(double phno) {
	this.phno = phno;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

}
