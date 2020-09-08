package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class SearchModel implements Serializable {
	
	@Id
	private int id;
	private String filteroption;
	private String textbox;
	private String mode;
	private long numericvalue;
	private String dynamicselect;
	private String datevalue;
	
	public SearchModel() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFilteroption() {
		return filteroption;
	}

	public void setFilteroption(String filteroption) {
		this.filteroption = filteroption;
	}

	public String getTextbox() {
		return textbox;
	}

	public void setTextbox(String textbox) {
		this.textbox = textbox;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

	public long getNumericvalue() {
		return numericvalue;
	}

	public void setNumericvalue(long numericvalue) {
		this.numericvalue = numericvalue;
	}

	public String getDynamicselect() {
		return dynamicselect;
	}

	public void setDynamicselect(String dynamicselect) {
		this.dynamicselect = dynamicselect;
	}

	public String getDatevalue() {
		return datevalue;
	}

	public void setDatevalue(String datevalue) {
		this.datevalue = datevalue;
	}

	
	
	

}
