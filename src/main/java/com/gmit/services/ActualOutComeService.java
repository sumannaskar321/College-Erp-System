package com.gmit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gmit.model.ActualOutComeModel;
import com.gmit.repository.ActualOutComeRepository;



@Service
public class ActualOutComeService {
	@Autowired
	private ActualOutComeRepository outcomerepository;
	public ActualOutComeModel addActualOutComeDetails (ActualOutComeModel obj)
	{
		System.out.println("i am in addActualOutcomeDetails in service class");
		obj=outcomerepository.save(obj);
		return obj;
	}

}
