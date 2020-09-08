package com.gmit.services;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.DepartmentEventModel;
import com.gmit.repository.DepartmentEventRepository;

@Service
public class DepartmentEventService {

	
	@Autowired
	private DepartmentEventRepository departmenteventrepository;
	
	public void saveEvent(DepartmentEventModel departmentevent)
	{
		departmenteventrepository.save(departmentevent);
	}
	
	
	public ArrayList<DepartmentEventModel> viewEvent()
	{
		ArrayList<DepartmentEventModel> departmentevent= new ArrayList<DepartmentEventModel>();
		departmenteventrepository.findAll().forEach(departmentevent ::add);
		return departmentevent;
	}
	
	public void deteleByIdEvent(int id) {
		
		departmenteventrepository.deleteById(id);
		
	}


	public ArrayList<DepartmentEventModel> getEvents(String department) {
		
		return departmenteventrepository.getEvent(department);
	}
}
