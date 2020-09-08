package com.gmit.repository;

import org.springframework.data.repository.CrudRepository;

import com.gmit.model.Placementmodel;

public interface ServRep extends CrudRepository<Placementmodel, Integer> {
	
	public Placementmodel findByPlacementNoticeId(String placementNoticeId); 
	
	
	
}
