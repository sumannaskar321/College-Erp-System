package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.Placementmodel;
import com.gmit.repository.ServRep;

@Service
public class Placementservice {
	
	@Autowired
	private ServRep servrep;
	
	public Placementmodel saveDet(Placementmodel pm)
	{
		pm=servrep.save(pm);
		return pm;
	}
	
	
	public ArrayList<Placementmodel> getAll()
	{
		ArrayList<Placementmodel> pm = new ArrayList<Placementmodel>();
		servrep.findAll().forEach(pm ::add);
		return pm;
	}

	public Placementmodel findPlacementDetails(int placementNoticeId)
	{
		return  servrep.findById(placementNoticeId).orElse(new Placementmodel());
		 
		 
	}
	
	
	public void deletePlacementList(int placementNoticeId)
	{
		servrep.deleteById(placementNoticeId);
	}
}
