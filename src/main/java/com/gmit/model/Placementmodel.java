package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Placementmodel implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int placementNoticeId;
	private String placementCompanyName;
	private String companyjobdescription;
	private String campusSelection;
	private String visitDate;
	private String startTime;
	private String endTime;
	private String venue;
	private String lastdateofApply;
	
	public Placementmodel() {}

	public int getPlacementNoticeId() {
		return placementNoticeId;
	}

	public void setPlacementNoticeId(int placementNoticeId) {
		this.placementNoticeId = placementNoticeId;
	}

	public String getPlacementCompanyName() {
		return placementCompanyName;
	}

	public void setPlacementCompanyName(String placementCompanyName) {
		this.placementCompanyName = placementCompanyName;
	}

	

	public String getCompanyjobdescription() {
		return companyjobdescription;
	}

	public void setCompanyjobdescription(String companyjobdescription) {
		this.companyjobdescription = companyjobdescription;
	}

	public String getCampusSelection() {
		return campusSelection;
	}

	public void setCampusSelection(String campusSelection) {
		this.campusSelection = campusSelection;
	}

	public String getVisitDate() {
		return visitDate;
	}

	public void setVisitDate(String visitDate) {
		this.visitDate = visitDate;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public String getVenue() {
		return venue;
	}

	public void setVenue(String venue) {
		this.venue = venue;
	}

	public String getLastdateofApply() {
		return lastdateofApply;
	}

	public void setLastdateofApply(String lastdateofApply) {
		this.lastdateofApply = lastdateofApply;
	}
	
	

}
