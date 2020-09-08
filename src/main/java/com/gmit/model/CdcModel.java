package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

// DATABASE FOR HANDLING CDC NOTICE FUNCTIONS FROM -> CDCNOTICECONTROLLER

@Entity
public class CdcModel implements Serializable{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int notice_id;
	private String eventName;
	private String eventDescription;
	private String eventPlace;
	private String organizeBy;
	private String eventDate;
	private String eventStartTime;
	private String eventEndTime;
	
/*	private String company_name;
	private String job_desc;
	private String campus_selection;
	private String date;
	private String start_time;
	private String end_time;
	private String venue; 
*/
	
	public CdcModel() {}

	public int getNotice_id() {
		return notice_id;
	}

	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}


	/**
	 * @return the eventName
	 */
	public String getEventName() {
		return eventName;
	}


	/**
	 * @param eventName the eventName to set
	 */
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}


	/**
	 * @return the eventDescription
	 */
	public String getEventDescription() {
		return eventDescription;
	}


	/**
	 * @param eventDescription the eventDescription to set
	 */
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}


	/**
	 * @return the eventPlace
	 */
	public String getEventPlace() {
		return eventPlace;
	}


	/**
	 * @param eventPlace the eventPlace to set
	 */
	public void setEventPlace(String eventPlace) {
		this.eventPlace = eventPlace;
	}


	/**
	 * @return the organizeBy
	 */
	public String getOrganizeBy() {
		return organizeBy;
	}


	/**
	 * @param organizeBy the organizeBy to set
	 */
	public void setOrganizeBy(String organizeBy) {
		this.organizeBy = organizeBy;
	}


	/**
	 * @return the eventDate
	 */
	public String getEventDate() {
		return eventDate;
	}


	/**
	 * @param eventDate the eventDate to set
	 */
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}


	/**
	 * @return the eventStartTime
	 */
	public String getEventStartTime() {
		return eventStartTime;
	}


	/**
	 * @param eventStartTime the eventStartTime to set
	 */
	public void setEventStartTime(String eventStartTime) {
		this.eventStartTime = eventStartTime;
	}


	/**
	 * @return the eventEndTime
	 */
	public String getEventEndTime() {
		return eventEndTime;
	}


	/**
	 * @param eventEndTime the eventEndTime to set
	 */
	public void setEventEndTime(String eventEndTime) {
		this.eventEndTime = eventEndTime;
	}
	
/*
	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getJob_desc() {
		return job_desc;
	}

	public void setJob_desc(String job_desc) {
		this.job_desc = job_desc;
	}

	public String getCampus_selection() {
		return campus_selection;
	}

	public void setCampus_selection(String campus_selection) {
		this.campus_selection = campus_selection;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStart_time() {
		return start_time;
	}

	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}

	public String getEnd_time() {
		return end_time;
	}

	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
		
	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}
*/
	
	
	
}
