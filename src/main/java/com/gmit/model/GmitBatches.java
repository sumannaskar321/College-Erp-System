package com.gmit.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Table(name="gmitbatches")
@Entity
public class GmitBatches implements Serializable{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String batches;
	
	
	public GmitBatches() {
		
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getBatches() {
		return batches;
	}


	public void setBatches(String batches) {
		this.batches = batches;
	}
	
	
	
	
}
