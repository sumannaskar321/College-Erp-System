package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ReminderPageModel implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String companyname;
	private String reminderdate;
	private String remindertime;
	public ReminderPageModel() {}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getReminderdate() {
		return reminderdate;
	}
	public void setReminderdate(String reminderdate) {
		this.reminderdate = reminderdate;
	}
	public String getRemindertime() {
		return remindertime;
	}
	public void setRemindertime(String remindertime) {
		this.remindertime = remindertime;
	}
	

}
