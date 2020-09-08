package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Table(name="departmentevent")
@Entity
public class DepartmentEventModel implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int eventId;
	private String eventName;
	private String department;
	private String eventDescription;
	private String eventPlace;
	private String organizeBy;
	private String eventDate;
	private String eventStartTime;
	private String eventEndTime;
	
	
	public DepartmentEventModel() {
	}


	public int getEventId() {
		return eventId;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}


	public void setEventId(int eventId) {
		this.eventId = eventId;
	}


	public String getEventName() {
		return eventName;
	}


	public void setEventName(String eventName) {
		this.eventName = eventName;
	}


	public String getEventDescription() {
		return eventDescription;
	}


	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}


	public String getEventPlace() {
		return eventPlace;
	}


	public void setEventPlace(String eventPlace) {
		this.eventPlace = eventPlace;
	}


	public String getOrganizeBy() {
		return organizeBy;
	}


	public void setOrganizeBy(String organizeBy) {
		this.organizeBy = organizeBy;
	}


	public String getEventDate() {
		return eventDate;
	}


	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}


	public String getEventStartTime() {
		return eventStartTime;
	}


	public void setEventStartTime(String eventStartTime) {
		this.eventStartTime = eventStartTime;
	}


	public String getEventEndTime() {
		return eventEndTime;
	}


	public void setEventEndTime(String eventEndTime) {
		this.eventEndTime = eventEndTime;
	}
	
	
	
	
}
