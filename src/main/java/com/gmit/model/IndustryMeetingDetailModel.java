package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class IndustryMeetingDetailModel implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String teachername;
	private String eventname;
	private String eventtype;
	private String expectedoutcome;
	private String actualoutcome;
	public IndustryMeetingDetailModel() {}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTeachername() {
		return teachername;
	}
	public void setTeachername(String teachername) {
		this.teachername = teachername;
	}
	public String getEventname() {
		return eventname;
	}
	public void setEventname(String eventname) {
		this.eventname = eventname;
	}
	public String getEventtype() {
		return eventtype;
	}
	public void setEventtype(String eventtype) {
		this.eventtype = eventtype;
	}
	public String getExpectedoutcome() {
		return expectedoutcome;
	}
	public void setExpectedoutcome(String expectedoutcome) {
		this.expectedoutcome = expectedoutcome;
	}
	public String getActualoutcome() {
		return actualoutcome;
	}
	public void setActualoutcome(String actualoutcome) {
		this.actualoutcome = actualoutcome;
	}
	


}
